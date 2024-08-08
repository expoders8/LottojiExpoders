import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PdfPreviewScreen extends StatelessWidget {
  final String path;

  Future<void> _downloadPdf(String filePath) async {
    try {
      final directory = await getExternalStorageDirectory();
      final downloadFolder = '${directory?.path}/MyCustomDownloads';
      final downloadDir = Directory(downloadFolder);
      if (!await downloadDir.exists()) {
        await downloadDir.create(recursive: true);
      }
      final newPath = '$downloadFolder/downloaded_pdf.pdf';
      final file = File(filePath);
      await file.copy(newPath);
    } catch (e) {
      print('Error downloading PDF: $e');
    }
  }

  const PdfPreviewScreen({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottoji lottery PDF'),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () => _downloadPdf(path),
            tooltip: 'Download PDF',
          ),
        ],
      ),
      body: PDFView(
        filePath: path,
      ),
    );
  }
}
