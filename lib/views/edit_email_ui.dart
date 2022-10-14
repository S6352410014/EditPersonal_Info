import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditEmilUI extends StatefulWidget {
  const EditEmilUI({super.key});

  @override
  State<EditEmilUI> createState() => _EditEmilUIState();
}

class _EditEmilUIState extends State<EditEmilUI> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text(
          'Edit Email',
          style: GoogleFonts.kanit(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: width_screen * 0.2),
            Text(
              'You email/ อีเมล',
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
                  hintText: 'ป้อน email',
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
