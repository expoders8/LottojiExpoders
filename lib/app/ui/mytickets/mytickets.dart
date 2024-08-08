import 'dart:io';
import 'pdf_view.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import '../widgets/dash_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import '../../../config/constant/font_constant.dart';
import '../../../config/constant/color_constant.dart';
import '../../../config/provider/loader_provider.dart';

class MyTicketPage extends StatefulWidget {
  const MyTicketPage({super.key});

  @override
  State<MyTicketPage> createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  String? pdfPath;
  bool isLoading = false;

  Future<void> _createPdf() async {
    final pdf = pw.Document();

    // Load the image bytes
    final ByteData imageData = await rootBundle.load('assets/icons/Barcod.png');
    final Uint8List imageBytes = imageData.buffer.asUint8List();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Container(
                width: 500,
                decoration: pw.BoxDecoration(
                  color: PdfColors.white,
                  borderRadius: pw.BorderRadius.circular(12),
                  boxShadow: [
                    const pw.BoxShadow(
                      color: PdfColors.black,
                      spreadRadius: 4,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: pw.Column(
                  children: [
                    pw.SizedBox(height: 15),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20.0),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text(
                                "Ticket Number",
                                style: const pw.TextStyle(
                                  fontSize: 30,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                "0539564",
                                style: const pw.TextStyle(
                                  fontSize: 25,
                                  color: PdfColors.grey,
                                ),
                              ),
                            ],
                          ),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.end,
                            children: [
                              pw.Text(
                                "Date",
                                style: const pw.TextStyle(
                                  fontSize: 30,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text(
                                "24 Mar, 2024",
                                style: const pw.TextStyle(
                                  fontSize: 25,
                                  color: PdfColors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 12),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20.0),
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            "Numbers",
                            style: const pw.TextStyle(
                              fontSize: 25,
                              color: PdfColors.black,
                            ),
                          ),
                          pw.Text(
                            "Amount",
                            style: const pw.TextStyle(
                              fontSize: 25,
                              color: PdfColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 15.0),
                      child: pw.Column(
                        children: [
                          pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              _buildResultWidget("1", 0),
                              _buildResultWidget("12", 0),
                              _buildResultWidget("20", 0),
                              _buildResultWidget("40", 0),
                              _buildResultWidget("10", 0),
                              _buildResultWidget("10", 1),
                              _buildResultWidget("10", 1),
                              pw.SizedBox(width: 10),
                              pw.Text(
                                "10",
                                style: const pw.TextStyle(
                                  fontSize: 30,
                                  color: PdfColors.blue,
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(),
                          pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              _buildResultWidget("1", 0),
                              _buildResultWidget("12", 0),
                              _buildResultWidget("20", 0),
                              _buildResultWidget("40", 0),
                              _buildResultWidget("10", 0),
                              _buildResultWidget("10", 1),
                              _buildResultWidget("10", 1),
                              pw.SizedBox(width: 10),
                              pw.Text(
                                "10",
                                style: const pw.TextStyle(
                                  fontSize: 30,
                                  color: PdfColors.blue,
                                ),
                              ),
                            ],
                          ),
                          pw.Divider(),
                          pw.Row(
                            mainAxisAlignment:
                                pw.MainAxisAlignment.spaceBetween,
                            children: [
                              _buildResultWidget("1", 0),
                              _buildResultWidget("12", 0),
                              _buildResultWidget("20", 0),
                              _buildResultWidget("40", 0),
                              _buildResultWidget("10", 0),
                              _buildResultWidget("10", 1),
                              _buildResultWidget("10", 1),
                              pw.SizedBox(width: 10),
                              pw.Text(
                                "10",
                                style: const pw.TextStyle(
                                  fontSize: 30,
                                  color: PdfColors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 15),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Container(
                          height: 50,
                          width: 25,
                          decoration: const pw.BoxDecoration(
                            color: PdfColors.grey300,
                            borderRadius: pw.BorderRadius.only(
                              topRight: pw.Radius.circular(25),
                              bottomRight: pw.Radius.circular(25),
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 300, height: 1, child: pw.Divider()),
                        pw.Container(
                          height: 50,
                          width: 25,
                          decoration: const pw.BoxDecoration(
                            color: PdfColors.grey300,
                            borderRadius: pw.BorderRadius.only(
                              topLeft: pw.Radius.circular(25),
                              bottomLeft: pw.Radius.circular(25),
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15),
                      child: pw.Image(
                        pw.MemoryImage(imageBytes),
                        fit: pw.BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/example.pdf');
    await file.writeAsBytes(await pdf.save());
  }

  Future<void> _createAndPreviewPdf() async {
    setState(() {
      isLoading = true;
    });

    try {
      await _createPdf();
      final output = await getTemporaryDirectory();
      final filePath = '${output.path}/example.pdf';
      setState(() {
        pdfPath = filePath;
      });

      // ignore: use_build_context_synchronously
      if (pdfPath != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PdfPreviewScreen(path: pdfPath!),
          ),
        );
      } else {
        print("PDF path is null");
      }
    } catch (e) {
      // Handle exceptions if necessary
      print("Error creating PDF: $e");
    } finally {
      // Ensure loading indicator is hidden even if an error occurs
      setState(() {
        LoaderX.hide();
        isLoading = false;
      });
    }
  }

  pw.Widget _buildResultWidget(String text, int type) {
    return pw.Text(
      text,
      style: pw.TextStyle(
        fontSize: 25,
        color: type == 0 ? PdfColors.black : PdfColors.red,
      ),
    );
  }

  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<int> _currentIndex =
      ValueNotifier<int>(1); // Initialize with 1

  void _updateIndex(int change) {
    _currentIndex.value = (_currentIndex.value + change)
        .clamp(1, 3); // Ensure index stays within 1 to 10
  }

  void _scrollLeft() {
    final double containerWidth = Get.width - 30;
    _scrollController.animateTo(
      _scrollController.offset - containerWidth,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _updateIndex(-1);
  }

  void _scrollRight() {
    final double containerWidth = Get.width - 30;
    _scrollController.animateTo(
      _scrollController.offset + containerWidth,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _updateIndex(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My tickets",
          style: TextStyle(
              fontFamily: kCircularStdMedium,
              color: kPrimaryColor,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: ksplashBackGroundColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [ksplashBackGroundColor, kBlackColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/icons/money.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Invested ticket balance",
                              style: TextStyle(
                                fontFamily: kCircularStdMedium,
                                fontSize: 12,
                                color: kWhiteColor,
                              ),
                            ),
                            Text(
                              "₹5000",
                              style: TextStyle(
                                fontFamily: kCircularStdMedium,
                                fontSize: 18,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ticketView(),
                  const SizedBox(
                    width: 20,
                  ),
                  ticketView(),
                  const SizedBox(
                    width: 20,
                  ),
                  ticketView(),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              width: 130,
              decoration: BoxDecoration(
                  color: ksplashBackGroundColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _scrollLeft();
                    },
                    icon: const SizedBox(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.chevron_left_outlined,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: _currentIndex,
                    builder: (context, value, child) {
                      return Text(
                        "$value/3",
                        style: const TextStyle(
                          color: kWhiteColor,
                          fontFamily: kCircularStdNormal,
                          fontSize: 15,
                        ),
                      );
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      _scrollRight();
                    },
                    icon: const SizedBox(
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.chevron_right_outlined,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  drowResultsWidget(text, int color) {
    return Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
          color: color == 1 ? const Color(0XFFF9E5A8) : kcontainercolor,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: Padding(
          padding: const EdgeInsets.all(3.0), child: Center(child: Text(text))),
    );
  }

  // _buildResultWidget(text, int color) {
  //   return Container(
  //     height: 28,
  //     width: 28,
  //     decoration: BoxDecoration(
  //         color: color == 1 ? const Color(0XFFF9E5A8) : kcontainercolor,
  //         borderRadius: const BorderRadius.all(Radius.circular(50))),
  //     child: Padding(
  //         padding: const EdgeInsets.all(3.0), child: Center(child: Text(text))),
  //   );
  // }

  ticketView() {
    return Column(
      children: [
        Container(
          width: Get.width - 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ticket Number",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 15,
                            color: kPrimaryColor,
                          ),
                        ),
                        Text(
                          "0539564",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 12,
                            color: kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Date",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 15,
                            color: kPrimaryColor,
                          ),
                        ),
                        Text(
                          "24 Mar, 2024",
                          style: TextStyle(
                            fontFamily: kCircularStdMedium,
                            fontSize: 12,
                            color: kSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Numbers",
                      style: TextStyle(
                        fontFamily: kCircularStdMedium,
                        fontSize: 15,
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "Amount",
                      style: TextStyle(
                        fontFamily: kCircularStdMedium,
                        fontSize: 15,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        drowResultsWidget("1", 0),
                        drowResultsWidget("12", 0),
                        drowResultsWidget("20", 0),
                        drowResultsWidget("40", 0),
                        drowResultsWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 25,
                          child: Icon(Icons.add),
                        ),
                        drowResultsWidget("10", 1),
                        drowResultsWidget("10", 1),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "₹10",
                          style: TextStyle(
                              fontFamily: kCircularStdMedium,
                              fontSize: 15,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        drowResultsWidget("1", 0),
                        drowResultsWidget("12", 0),
                        drowResultsWidget("20", 0),
                        drowResultsWidget("40", 0),
                        drowResultsWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 25,
                          child: Icon(Icons.add),
                        ),
                        drowResultsWidget("10", 1),
                        drowResultsWidget("10", 1),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "₹10",
                          style: TextStyle(
                              fontFamily: kCircularStdMedium,
                              fontSize: 15,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        drowResultsWidget("1", 0),
                        drowResultsWidget("12", 0),
                        drowResultsWidget("20", 0),
                        drowResultsWidget("40", 0),
                        drowResultsWidget("10", 0),
                        const SizedBox(
                          height: 30,
                          width: 25,
                          child: Icon(Icons.add),
                        ),
                        drowResultsWidget("10", 1),
                        drowResultsWidget("10", 1),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "₹10",
                          style: TextStyle(
                              fontFamily: kCircularStdMedium,
                              fontSize: 15,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: kWhiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 18,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 246, 246),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    DashedLineDivider(width: Get.width - 100),
                    const SizedBox(
                      height: 30,
                      width: 18,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 246, 246, 246),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/icons/Barcod.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  LoaderX.show(context, 70.0, 70.0);
                  _createAndPreviewPdf();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kiconBackgroundColor),
                  child: const Icon(
                    Icons.file_download_outlined,
                    color: ksplashBackGroundColor,
                    size: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Download Ticket",
                style: TextStyle(
                  fontFamily: kCircularStdMedium,
                  fontSize: 18,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
