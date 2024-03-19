import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
     return Column(

     );
  }
}

//Scaffold(
//   appBar: AppBar(title: Text("Your pdf")),
//   body: PdfPreview(
//     build: (format) => _generatePdf(PdfPageFormat.a4, "Your PDF"),
//   ),
// );
// Future<Uint8List> _generatePdf(PdfPageFormat format, String title) async {
//   final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: false);
//   final font = await PdfGoogleFonts.nunitoExtraLight();
//
//   pdf.addPage(
//     pw.Page(
//       pageFormat: format,
//       build: (context) {
//         return pw.Column(
//           children: [
//             pw.SizedBox(
//               width: double.infinity,
//               child: pw.FittedBox(
//                 child: pw.Text(title, style: pw.TextStyle(font: font)),
//               ),
//             ),
//             pw.SizedBox(height: 20),
//             pw.Flexible(child: pw.FlutterLogo())
//           ],
//         );
//       },
//     ),
//   );
//
//   return pdf.save();
// }
