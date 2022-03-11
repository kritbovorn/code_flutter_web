import 'package:beginner/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedHeading extends StatelessWidget {
const FeaturedHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 34),
      child: Column(
        children: [
          Row(  
            children: [
              const Expanded(child: SizedBox()),

              Expanded(
                flex: 10,  
                child: Row(  
                  children: [

                    Text(
                      'Featured',
                      style: GoogleFonts.roboto(fontSize: 36, fontWeight: FontWeight.bold, color: textColor),
                    ),
                    
                    const Expanded(child: SizedBox()),
                    
                    Text(  
                      'Clue of the wooden cottage',
                      style: GoogleFonts.roboto(color: textColor),
                    )
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              
            ],
          )
        ],
      ),
    );
  }
}