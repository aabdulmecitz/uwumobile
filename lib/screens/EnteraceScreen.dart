import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnteraceScreen extends StatefulWidget {
  const EnteraceScreen({super.key});

  @override
  State<EnteraceScreen> createState() => _EnteraceScreenState();
}

class _EnteraceScreenState extends State<EnteraceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            height: 250,
            child: Placeholder(
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Kayıt Ol',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                  onPressed: goToStudentRegisterPage,
                  child: Text('Öğrenci', style: GoogleFonts.robotoCondensed(
                    textStyle:  Theme.of(context).textTheme.displayLarge,
                    fontSize: 17,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: goToTeacherRegisterPage,
                child: Text('Öğretmen', style: GoogleFonts.robotoCondensed(
                  textStyle:  Theme.of(context).textTheme.displayLarge,
                  fontSize: 17,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Hesabınız var mı? Hemen Giriş Yapın',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              goToLoginPage();
            },
            child: Text(
              'Giriş Yapın',
              style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  void goToStudentRegisterPage() {

  }

  void goToTeacherRegisterPage() {

  }

  void goToLoginPage() {

  }
}
