import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intro_first_screen extends StatelessWidget {
  const intro_first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
              child: Column(
                children: [
                  Spacer(),
                  Image.asset("assets/entrance/first.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "ARAMIZA HOŞ GELDİN", style: GoogleFonts.robotoCondensed(
                    textStyle:  Theme.of(context).textTheme.bodySmall,
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Yeni dünyamıza yelken açmış bulunuyorsun.", style: GoogleFonts.robotoCondensed(
                    textStyle:  Theme.of(context).textTheme.bodySmall,
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                  Text(
                    "Bu dünya klasik eğitim anlayışına karşı bir dünya", style: GoogleFonts.robotoCondensed(
                    textStyle:  Theme.of(context).textTheme.bodySmall,
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Spacer(),

                ],
              ),
          ),
    );
  }
}
