import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'admitted.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Verification!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("We have sent you an Otp no \n number ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:Colors.black,
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin){},
                          onChanged: (pin){
                            if (pin.isNotEmpty){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            hintStyle: TextStyle(color:Colors.black, ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3.0, color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color:Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin){},
                          onChanged: (pin){
                            if (pin.isNotEmpty){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            hintStyle: TextStyle(color:Color(0xFF757575) ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3.0, color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin){},
                          onChanged: (pin){
                            if (pin.isNotEmpty){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            hintStyle: TextStyle(color:Color(0xFF757575) ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3.0, color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          onSaved: (pin){},
                          onChanged: (pin){
                            if (pin.isNotEmpty){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            hintStyle: TextStyle(color:Color(0xFF757575) ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 3.0, color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("Resend Code",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> Congratulation(),
                      ),
                      );
                    },
                    icon: Icon(Icons.arrow_circle_right),
                    iconSize: 60,
                    color: Color(0xFF46A5BA),
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

