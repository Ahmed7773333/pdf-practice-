import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfPreviewPage extends StatelessWidget {
  const PdfPreviewPage({Key? key}) : super(key: key);

  Future<Uint8List> makePdf() async {
    final pdf = pw.Document();
    final ByteData bytes = await rootBundle.load('assets/cvPic.jpg');
    final Uint8List byteList = bytes.buffer.asUint8List();
    final ByteData l = await rootBundle.load('assets/l.png');
    final Uint8List loc = l.buffer.asUint8List();
    final ByteData m = await rootBundle.load('assets/m.png');
    final Uint8List mess = m.buffer.asUint8List();
    final ByteData c = await rootBundle.load('assets/c.png');
    final Uint8List call = c.buffer.asUint8List();
    final ByteData li = await rootBundle.load('assets/link.png');
    final Uint8List link = li.buffer.asUint8List();
    final ByteData git = await rootBundle.load('assets/git.png');
    final ByteData leet = await rootBundle.load('assets/leet.png');
    final Uint8List leetcode = leet.buffer.asUint8List();
    final ByteData e = await rootBundle.load('assets/e.png');
    final Uint8List ee = e.buffer.asUint8List();

    final Uint8List github = git.buffer.asUint8List();
    var font = await PdfGoogleFonts.openSansBold();
    var font1 = await PdfGoogleFonts.openSansMedium();
    var iconFont = await PdfGoogleFonts.materialIcons();

    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(0.1),
        pageFormat: PdfPageFormat.a4,
        theme: pw.ThemeData.withFont(
          icons: iconFont, // this line
        ),
        build: (context) {
          var ahmed = MeInfo();
          return pw.Stack(
            children: [
              pw.Positioned(
                left: 0,
                child: pw.Container(
                  width: 192,
                  height: 842,
                  decoration: const pw.BoxDecoration(
                      color: PdfColor.fromInt(0xFF17417F)),
                ),
              ),
              pw.Positioned(
                top: 44.96,
                left: 30,
                child: pw.Container(
                  width: 125,
                  height: 135,
                  decoration: pw.BoxDecoration(
                    image: pw.DecorationImage(
                      image: pw.MemoryImage(byteList),
                      fit: pw.BoxFit.cover,
                    ),
                    shape: pw.BoxShape.circle,
                  ),
                ),
              ),
              pw.Positioned(
                top: 185,
                left: 15.5,
                child: pw.Text(
                  'Ahmed Mohmed',
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 20,
                    color: PdfColor.fromInt(Colors.white.value),
                  ),
                ),
              ),
              pw.Positioned(
                top: 213,
                left: 15.5,
                child: pw.Text(
                  'Flutter Developer',
                  style: pw.TextStyle(
                    font: font1,
                    fontSize: 20,
                    color: PdfColor.fromInt(Colors.white.value),
                  ),
                ),
              ),
              rowItem(243, 16, mess, 'ahmedmohmedyahoo2@gmail.com', font1),
              rowItem(261.5, 16, call, '01019665228', font1),
              rowItem(279, 16, loc, 'ElZaitoon, Cairo', font1),
              pw.Positioned(
                top: 324,
                left: 16,
                child: pw.SizedBox(
                  width: 151.80,
                  height: 146.72,
                  child: pw.Text(
                    ahmed.profile,
                    style: pw.TextStyle(
                      color: PdfColor.fromInt(Colors.white.value),
                      fontSize: 8,
                      font: font1,
                    ),
                  ),
                ),
              ),
              pw.Positioned(
                top: 489,
                left: 16,
                child: pw.Text(
                  'Skills',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xff56CCF2),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 509,
                left: 16,
                child: pw.Text(
                  '''Dart      Kotlin      OOP      GitHub
Animation      Hive      SQLite      Files
Problem Solving   Design Patterns\nAgile Methodology      APIs     Jira\nFirebase       Bloc      Cubit   GetX
Provider      SOLID Principles''',
                  style: pw.TextStyle(
                    color: PdfColor.fromInt(Colors.white.value),
                    fontSize: 10,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 586,
                left: 16,
                child: pw.Text(
                  'Language',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xff56CCF2),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 613,
                left: 16,
                child: pw.Text(
                  'Arabic',
                  style: pw.TextStyle(
                    color: PdfColor.fromInt(Colors.white.value),
                    fontSize: 11,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 613,
                left: 150,
                child: pw.Text(
                  '(Native)',
                  style: pw.TextStyle(
                    color: PdfColor.fromInt(Colors.white.value),
                    fontSize: 10,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 628,
                left: 16,
                child: pw.Text(
                  'English',
                  style: pw.TextStyle(
                    color: PdfColor.fromInt(Colors.white.value),
                    fontSize: 11,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 628,
                left: 150,
                child: pw.Text(
                  '(B2)',
                  style: pw.TextStyle(
                    color: PdfColor.fromInt(Colors.white.value),
                    fontSize: 10,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 679, // 694 - 15
                left: 16,
                child: pw.Text(
                  'Links',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xff56CCF2),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 712, // 727 - 15
                left: 16,
                child: pw.UrlLink(
                  destination:
                      'https://www.linkedin.com/in/ahmed-mohmed-7861661b4/',
                  child: pw.Row(
                    children: [
                      pw.Container(
                        width: 20,
                        height: 20,
                        decoration: pw.BoxDecoration(
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(link),
                            fit: pw.BoxFit.fill,
                          ),
                        ),
                      ),
                      pw.SizedBox(width: 7),
                      pw.Text(
                        'Linkedin',
                        style: pw.TextStyle(
                          color: PdfColor.fromInt(Colors.white.value),
                          fontSize: 13,
                          font: font1,
                          decoration: pw.TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Positioned(
                top: 740, // 755 - 15
                left: 16,
                child: pw.UrlLink(
                    destination: 'https://github.com/Ahmed7773333?tab=overview',
                    child: pw.Row(children: [
                      pw.Container(
                        width: 20,
                        height: 20,
                        decoration: pw.BoxDecoration(
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(github),
                            fit: pw.BoxFit.fill,
                          ),
                        ),
                      ),
                      pw.SizedBox(width: 7),
                      pw.Text(
                        'GitHub',
                        style: pw.TextStyle(
                          color: PdfColor.fromInt(Colors.white.value),
                          fontSize: 13,
                          font: font1,
                          decoration: pw.TextDecoration.underline,
                        ),
                      ),
                    ])),
              ),
              pw.Positioned(
                top: 766, // 781 - 15
                left: 16,
                child: pw.UrlLink(
                    destination: 'https://leetcode.com/ahmed___/',
                    child: pw.Row(children: [
                      pw.Container(
                        width: 20,
                        height: 20,
                        decoration: pw.BoxDecoration(
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(leetcode),
                            fit: pw.BoxFit.fill,
                          ),
                        ),
                      ),
                      pw.SizedBox(width: 7),
                      pw.Text(
                        'LeetCode',
                        style: pw.TextStyle(
                          color: PdfColor.fromInt(Colors.white.value),
                          fontSize: 13,
                          font: font1,
                          decoration: pw.TextDecoration.underline,
                        ),
                      ),
                    ])),
              ),
              pw.Positioned(
                top: 51,
                left: 205,
                child: pw.Text(
                  'Education',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF174180),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 86,
                left: 205,
                child: pw.Image(
                  pw.MemoryImage(ee),
                ),
              ),
              pw.Positioned(
                top: 78.6,
                left: 213,
                child: pw.Text(
                  'Software Engineering',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF4F4F4F),
                    fontSize: 12,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 78.6,
                left: 425,
                child: pw.Text(
                  '2021 - 2025, Cairo',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF828282),
                    fontSize: 12,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 98.6,
                left: 213,
                child: pw.Text(
                  'Sadat Academy for Management Science\nGPA: 3.2\nCurrent Year: 3',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF4F4F4F),
                    fontSize: 12,
                    font: font1,
                  ),
                ),
              ),
              pw.Positioned(
                top: 150,
                left: 205,
                child: pw.Text(
                  'Courses and Certificates',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF174180),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 170,
                left: 205,
                child: pw.Text(
                  '''
  - Full Flutter Course, Route Academy, November 2023
  - Flutter Training, ITI, September 2023
  - Flutter Training, ITSharks, August 2022
  - Flutter-Animations from Zero to Hero, Udemy, November 2023
  - Flutter Payment Integration, Udemy, December 2023
  - Master Prompt Engineering, Udemy, September 2023
  - Hive Offline Database in Flutter, Udemy, July 2023
  - Learn Flutter GetX Course 2023, Udemy, August 2023
''',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF4F4F4F),
                    fontSize: 12,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 350,
                left: 205,
                child: pw.Text(
                  'Projects',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF174180),
                    fontSize: 16,
                    font: font,
                  ),
                ),
              ),
              pw.Positioned(
                top: 370,
                left: 205,
                child: pw.Text(
                  '-Islamy App\nAPIs-Files (From Assets)-Provider\n-ToDo App\nHive-Provider\n-News App\nAPIs-Provider\n-E-Commerce App\nAPIs-Bloc\n-Instagram clone\nJust a UI for practice\n-WhatsApp clone\nJust a UI for practice\n-Food App\nAPIs-Bloc\n-Movies App\nAPIs-Cubit\n-Note App\nHive\n-Task Manager\nJust a UI for practice\n-ChatGPT\nAPIs-Hive\n-Spotify\nAPIs-Bloc\nBook Store\nAPIs-Bloc\n-Weather App\nAPIs',
                  style: pw.TextStyle(
                    color: const PdfColor.fromInt(0xFF4F4F4F),
                    fontSize: 12,
                    font: font,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
    return pdf.save();
  } //#56CCF2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }
}

rowItem(double top, double left, image, txt, font1) {
  return pw.Positioned(
    top: top,
    left: left,
    child: pw.Row(
      children: [
        pw.Image(pw.MemoryImage(image)),
        pw.SizedBox(width: 4),
        pw.Text(
          txt,
          style: pw.TextStyle(
            color: const PdfColor.fromInt(0xff56CCF2),
            fontSize: 9,
            font: font1,
            letterSpacing: 0.20,
          ),
        ),
      ],
    ),
  );
}

rowInfo(title, txt, font, font1) {
  return pw.Row(
    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      pw.Text(
        title,
        style: pw.TextStyle(
          font: font,
          fontSize: 12,
          color: const PdfColor.fromInt(0xff000000),
          letterSpacing: 0.24,
        ),
      ),
      pw.Text(txt,
          style: pw.TextStyle(
            font: font1,
            fontSize: 9,
            color: const PdfColor.fromInt(0xff000000),
          ),
          textAlign: pw.TextAlign.start),
    ],
  );
}

class MeInfo {
  MeInfo(
      {this.profile =
          '''Experienced Flutter developer dedicated to crafting robust and user-centric mobile\napplications. Proficient in designing and implementing visually appealing and intuitive\nuser interfaces that enhance the overall user experience. Adept at translating client\nrequirements into elegant and functional Flutter solutions, ensuring seamless\nperformance on various devices and screen sizes. Passionate about staying updated\nwith the latest industry trends and emerging technologies to deliver cutting-edge,\nmodern applications. Committed to writing clean and maintainable code, with a keen\neye for detail and a focus on creating engaging and responsive user interfaces. Strong\nproblem-solving skills and a collaborative team player, ready to contribute to the\nsuccess of innovative and impactful projects.
''',
      this.project = '',
      this.education = 'Sadat Academy for Management Science',
      this.skills,
      this.languages,
      this.links});

  String? education = 'Sadat Academy for Management Science';
  List<String>? languages = ['English', 'Arabic'];
  List<Links>? links = [
    Links(title: 'LinkedIn', link: ''),
    Links(title: 'GitHub', link: ''),
    Links(title: 'LeetCode', link: '')
  ];

  String profile;
  String? project = '''''';
  List<String>? skills = [
    'Dart',
    'Kotlin',
    'Java',
    'Problem Solving',
    'GitHub',
    'Flutter Animation'
  ];
}

class Links {
  Links({required this.title, required this.link});

  String? link;
  String? title;
}
