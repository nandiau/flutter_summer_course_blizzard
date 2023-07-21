import 'package:flutter/material.dart';
 class GradientLetter extends StatelessWidget {
   final String letter;

   GradientLetter(this.letter,{super.key});

   @override
   Widget build(BuildContext context) {
     return Container(
     width: 60,
       height:60,
       decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(16),
         color: Color(0xFFFF9002),

       ),


     )

   }
 }