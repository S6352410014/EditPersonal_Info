import 'package:dti_proflie_me_app1/views/edit_about_ui.dart';
import 'package:dti_proflie_me_app1/views/edit_email_ui.dart';
import 'package:dti_proflie_me_app1/views/edit_name_ui.dart';
import 'package:dti_proflie_me_app1/views/edit_phone_ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  String you_name = 'Your Name...........';
  String you_Email = 'Your Email...........';
  String you_Phone = 'Your Phone...........';
  String you_About = 'Your About...........';

  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text(
          'DTI PROFILE ME',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.08,
            fontWeight: FontWeight.bold,
            color: Colors.yellow[300],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              'assets/images/profile.png',
              width: width_screen * 0.4,
              height: width_screen * 0.4,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.07,
                right: width_screen * 0.07,
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditNameUI(),
                    ),
                  );
                },
                leading: Icon(
                  FontAwesomeIcons.person,
                  color: Colors.grey[900],
                ),
                title: Text(
                  'Name',
                  style: GoogleFonts.kanit(),
                ),
                subtitle: Text(
                  you_name,
                  style: GoogleFonts.kanit(
                    color: Colors.yellow[600],
                  ),
                ),
                trailing: Icon(
                  Icons.edit,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.07,
                right: width_screen * 0.07,
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditEmilUI(),
                    ),
                  );
                },
                leading: Icon(
                  Icons.mail,
                  color: Colors.grey[900],
                ),
                title: Text(
                  'Email',
                  style: GoogleFonts.kanit(),
                ),
                subtitle: Text(
                  you_Email,
                  style: GoogleFonts.kanit(
                    color: Colors.yellow[600],
                  ),
                ),
                trailing: Icon(
                  Icons.edit,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.07,
                right: width_screen * 0.07,
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditPhoneUI(),
                    ),
                  );
                },
                leading: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.grey[900],
                ),
                title: Text(
                  'Phone',
                  style: GoogleFonts.kanit(),
                ),
                subtitle: Text(
                  you_Phone,
                  style: GoogleFonts.kanit(
                    color: Colors.yellow[600],
                  ),
                ),
                trailing: Icon(
                  Icons.edit,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width_screen * 0.07,
                right: width_screen * 0.07,
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditAboutUI(),
                    ),
                  );
                },
                leading: Icon(
                  FontAwesomeIcons.personChalkboard,
                  color: Colors.grey[900],
                ),
                title: Text(
                  'About',
                  style: GoogleFonts.kanit(),
                ),
                subtitle: Text(
                  you_About,
                  style: GoogleFonts.kanit(
                    color: Colors.yellow[600],
                  ),
                ),
                trailing: Icon(
                  Icons.edit,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
