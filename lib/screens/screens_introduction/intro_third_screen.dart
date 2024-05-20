import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intro_third_screen extends StatelessWidget {
  const intro_third_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset("assets/entrance/third.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "SEÇKİN ÖĞRETMENLER", style: GoogleFonts.robotoCondensed(
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
              "Hemen bir ders seç ve öğren,", style: GoogleFonts.robotoCondensed(
              textStyle:  Theme.of(context).textTheme.bodySmall,
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            ),
            Text(
              "Dil desen var, matematik desen var. Harika!", style: GoogleFonts.robotoCondensed(
              textStyle:  Theme.of(context).textTheme.bodySmall,
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Unutma en iyi yatırım kendine yaptığındır.", style: GoogleFonts.robotoCondensed(
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