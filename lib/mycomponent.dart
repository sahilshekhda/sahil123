import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:io';

import 'Mycustomtaxtform.dart';
import 'mybutton.dart';

class MyComponrt extends StatefulWidget {
  const MyComponrt({Key? key}) : super(key: key);

  @override
  State<MyComponrt> createState() => _MyComponrtState();
}

class _MyComponrtState extends State<MyComponrt> {
  File? file1;
  bool Password = false;
  List<String> list = [];
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController Name = TextEditingController();
    TextEditingController Number = TextEditingController();
    TextEditingController Email = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                top: 30,
                right: 15,
                left: 15,
              ),
              child: Column(
                  children: [

                    MyText(
                      hint: "Name",
                      validator: (Name) {
                        if(Name == null || Name.trim().isEmpty)
                        {
                          return "Pless Enter Name";

                        }
                        else
                        {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      controller: Name,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                        hint: "Number",
                        maxLength: 10,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                            RegExp("[0-9]"
                            ),),
                        ],

                        validator: (phone) {
                          if(phone == null || phone.trim().isEmpty)
                          {
                            return "Pless Enter Number";

                          }
                          else
                          {
                            if(phone.trim().length!=10 )
                            {
                              return "Pless Enter Valid Number";
                            }
                            else if( phone.startsWith("0"))
                            {

                              return "Number Not Startwith '0'" ;
                            }
                            else
                            {
                              return null;
                            }
                          }
                        },

                        keyboardType: TextInputType.number,
                        controller: Email),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                        hint: "Email",

                        validator: (Email) {
                          if(Email == null || Email.trim().isEmpty)
                          {
                            return "Pless Enter Email";
                          }
                          else
                          {
                            Pattern pattern =
                                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
                            RegExp regexp =RegExp(pattern.toString());
                            if(regexp.hasMatch(Email.trim()))
                            {
                              return null;
                            }
                            else
                            {
                              return "Pless Enter Valid Email";
                            }

                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: Number),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                      hint: "Password",
                      obscureText: Password,
                      errorMaxLines: 3,
                      validator: (Password) {
                        if(Password == null || Password.isEmpty)
                        {
                          return "Pless Enter Email";
                        }
                        else
                        {
                          Pattern pattern =
                              r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
                          RegExp regExp = RegExp(pattern.toString());
                          if(regExp.hasMatch(Password))
                          {
                            return null;
                          }
                          else
                          {
                            return '''Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character''';
                          }

                        }
                      },
                      suffixIcon:  IconButton(onPressed: (){
                        Password =!Password;
                        setState(() {});
                      }, icon: Password? Icon(Icons.visibility):Icon(Icons.visibility_off)),

                      keyboardType: TextInputType.visiblePassword,

                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Mybutton(onPressed: (){
                        if(formkey.currentState!.validate())
                        {
                          print("validet");
                          // setState(() {});
                        }
                        // else{
                        //   print('object');
                        // }

                      }, name: "Login"),
                    )

                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
