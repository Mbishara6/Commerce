import 'package:flutter/material.dart';

import '_delivery.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({super.key});

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body:SafeArea(
         top: true,
           bottom: true,
           child:Padding(
             padding: EdgeInsets.symmetric(vertical: 60),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 25.0, ),
                   child: Row(
                     children: [
                       Text("Congratulations!",
                       style: TextStyle(
                         fontWeight: FontWeight.normal,
                         fontSize: 30,
                       ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.only(left: 25.0),
                   child: Row(
                     children: [
                       Text("Your account has been successfully \ncreated.",
                         style: TextStyle(
                           color: Colors.black54,
                         ),
                       ),
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 60,
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.thumb_up_alt_outlined,
                     size: 50,
                     ),
                   ],
                 ),
                 SizedBox(height: 40,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xFF46A5BA),
                           padding: EdgeInsets.all(20),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.circular(20)),
                       
                           ),
                         ),
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(
                             builder: (context)=> Delivery(),
                           ),
                           );
                         },
                         child:Text("Continue",
                           style: TextStyle(
                             color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
       ),
    );
  }
}