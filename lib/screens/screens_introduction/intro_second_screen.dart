import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intro_second_screen extends StatelessWidget {
  const intro_second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset("assets/entrance/second.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "YENİ NESİL EĞİTİM", style: GoogleFonts.robotoCondensed(
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
              "Yeni nesil UWU Eğitim Modeli ile", style: GoogleFonts.robotoCondensed(
              textStyle:  Theme.of(context).textTheme.bodySmall,
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            ),
            Text(
              "kişiselleştirilmiş bir eğitim sizleri bekliyor.", style: GoogleFonts.robotoCondensed(
              textStyle:  Theme.of(context).textTheme.bodySmall,
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "İstediğin dersi istediğin öğretmeni seç ve", style: GoogleFonts.robotoCondensed(
              textStyle:  Theme.of(context).textTheme.bodySmall,
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            ),
            ),
            Text(
              "öğrenmeye hemen başla...", style: GoogleFonts.robotoCondensed(
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