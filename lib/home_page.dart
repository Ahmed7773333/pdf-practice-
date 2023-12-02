// import 'package:flutter/material.dart';

// import 'pdf.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//   final String text = "Your text to display below image";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Articles page"),
//       ),
//       body: Column(
//         children: [
//           Image.asset("assets/phone.jfif"),
//           Text(text),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//             return PdfPreviewPage(text);
//           }));
//         },
//         child: const Icon(Icons.picture_as_pdf_sharp),
//       ),
//     );
//   }
// }
