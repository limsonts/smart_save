

import 'package:flutter/material.dart';



class SmartSaveButton extends StatelessWidget
{
  final String text;
  final VoidCallback onPressed;
   const SmartSaveButton
   (
    {
      Key? key,
      
     required this.text,
     required this.onPressed

     
   }
   ):super(key: key);

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 20),
     child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
       child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 7, 89, 156),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),  
          
        ),
       onPressed: onPressed, 
       child: Text(text,style: TextStyle(color: Colors.white),)
       ),
     ),
   );
}


// class SmartSaveButton extends StatelessWidget{
//   final String text;
//   final VoidCallbackAction onpressed;
    
 
  
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onpressed, 
//       child: text,
//       );
//   }
  
  




}