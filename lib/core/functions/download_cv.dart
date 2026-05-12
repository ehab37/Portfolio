import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> downloadCV(String assetPath) async {
  try {
    if (kIsWeb) {
      // On Web, we can launch the asset path directly.
      // Depending on the server, you might need to prefix with 'assets/'
      // or use a full URL.
      final Uri url = Uri.parse(assetPath);
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        debugPrint('Could not launch $url');
      }
      return;
    }

    // On Mobile/Desktop, we must extract the asset to a file to open it.
    final byteData = await rootBundle.load(assetPath);
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/cv.pdf');

    await file.writeAsBytes(byteData.buffer.asUint8List());

    final Uri url = Uri.file(file.path);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      debugPrint('Could not launch $url');
    }
  } catch (e) {
    debugPrint('Error launching CV: $e');
  }
}
