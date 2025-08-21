import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

   const MyTextfield({
    super.key,
     required this.controller,
     required this.hintText,
     required this.obscureText
});

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 40.0),
       child: TextField(
         controller: controller,
         obscureText: obscureText,
         decoration: InputDecoration(
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(
               color: Colors.grey
             ),
           ),
           focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(
                 color: Colors.green,
             ),
           ),
           hintText: hintText,
           hintStyle: TextStyle(color: Colors.grey),
         ),
       ),
     );
   }
 }
