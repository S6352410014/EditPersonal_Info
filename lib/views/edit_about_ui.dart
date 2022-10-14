import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAboutUI extends StatefulWidget {
  const EditAboutUI({super.key});

  @override
  State<EditAboutUI> createState() => _EditAboutUIState();
}

class _EditAboutUIState extends State<EditAboutUI> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text(
          'Edit About',
          style: GoogleFonts.kanit(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: width_screen * 0.2),
            Text(
              'You About/ ข้อมูลส่วนตัว',
              style: GoogleFonts.kanit(
                fontSize: width_screen * 0.06,
              ),
            ),
            SizedBox(
              height: width_screen * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.1,
                right: width_screen * 0.1,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อน ข้อมูลส่วนตัว',
                ),
              ),
            ),
            SizedBox(
              height: width_screen * 0.05,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'บันทึก',
                style: GoogleFonts.kanit(
                  fontSize: width_screen * 0.05,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(width_screen - (width_screen * 0.1 * 2),
                    width_screen * 0.15),
                backgroundColor: Colors.purple[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
