import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditNameUI extends StatefulWidget {
  const EditNameUI({super.key});

  @override
  State<EditNameUI> createState() => _EditNameUIState();
}

class _EditNameUIState extends State<EditNameUI> {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text(
          'Edit Name',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: width_screen * 0.2),
            Text(
              'You name/ชื่อ',
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
                  hintText: 'ป้อนชื่อ',
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
