import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytext extends StatefulWidget {
  const Mytext({Key? key}) : super(key: key);
  @override
  State<Mytext> createState() => _MytextState();
}

class _MytextState extends State<Mytext> {
  bool ios = false;
  bool swi = false;
  bool hovers = false;
  bool password = false;
  final formkey = GlobalKey<FormState>();
  final email = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              AnimatedPositioned(
                top: hovers ? -8 : 0,
                right: hovers ? 8 : 0,
                duration: Duration(milliseconds: 500),
                child: Center(
                  child: InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onHover: (value) {
                      setState(() {
                        hovers = value;
                      });
                    },
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: hovers ? Colors.yellow.shade500 : Colors.white,
                      ),
                      height: 400,
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              maxLines: 1,
                              maxLength: 10,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("[0-9]")),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  print("object");
                                  return "Please Enter Number";
                                } else {
                                  if (value.startsWith('0')) {
                                    return "Number not start with '0'";
                                  } else if (value.length != 10) {
                                    return "Please enter valid number";
                                  } else {
                                    return null;
                                  }
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusColor: Colors.deepOrangeAccent,
                                fillColor: Colors.black.withOpacity(0.2),
                                filled: true,
                                hintText: ("Enter Name"),
                                // floatingLabelAlignment: FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.auto,
                                floatingLabelStyle: TextStyle(
                                  color: Colors.deepOrangeAccent.shade200,
                                  inherit: true,
                                  // height: 20,
                                  fontSize: 20,
                                ),
                                counterText: "",
                                // helperText: "ritul",
                                // suffixText: "",
                                // errorText: "",
                                // isCollapsed: false,
                                // label: Text(""),
                                // inherit: true,
                                // enabled: false,
                                // autofocus: false,
                                hoverColor: Colors.redAccent,
                                isDense: true,
                                labelText: "Name",
                                  labelStyle: TextStyle(color: Colors.black38),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(10),
                                //   borderSide: BorderSide(width: 1),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  // gapPadding: 10,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // errorBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     color: Colors. green,
                                //),
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                //   disabledBorder: OutlineInputBorder(
                                //     borderSide: BorderSide(
                                //       color: Colors.amber,
                                //       width: 0.45,
                                //     ),
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              key: email,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter valid Email";
                                } else {
                                  if (value.startsWith('@')) {
                                    return "Email not start with '@'";
                                  }
                                  else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                    return "Please enter a valid email address";
                                  }else {
                                    return null;
                                  }
                                }
                              },
                              decoration: InputDecoration(
                                focusColor: Colors.black,
                                fillColor: Colors.black.withOpacity(0.2),
                                filled: true,
                                hintText: ("Enter Email"),
                                // floatingLabelAlignment: FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.auto,
                                floatingLabelStyle: TextStyle(
                                  color: Colors.deepOrangeAccent.shade200,
                                  inherit: true,
                                  // height: 20,
                                  fontSize: 20,
                                ),

                                // isCollapsed: false,
                                // label: Text(""),
                                // inherit: true,
                                // enabled: false,
                                // autofocus: false,
                                hoverColor: Colors.redAccent,
                                isDense: true,
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black38),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(10),
                                //   borderSide: BorderSide(width: 1),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  // gapPadding: 10,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // errorBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     color: Colors. green,
                                //),
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                //   disabledBorder: OutlineInputBorder(
                                //     borderSide: BorderSide(
                                //       color: Colors.amber,
                                //       width: 0.45,
                                //     ),
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              // key: email,
                              keyboardType: TextInputType.visiblePassword,
                              // validator:  (value) {
                              //   if(value == null || value.isEmpty)
                              //   {
                              //     return "Please Enter valid Email";
                              //   }
                              //   else
                              //   {
                              //     if(value.startsWith('@'))
                              //     {
                              //       return "Email not start with '@'";
                              //     }
                              //     else
                              //     {
                              //       return null;
                              //     }
                              //
                              //   }
                              //
                              // },,
                              obscureText: password,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        password = !password;
                                      });
                                    },
                                    icon: password?Icon(Icons.visibility_off):Icon(Icons.visibility)),
                                focusColor: Colors.deepOrangeAccent,
                                fillColor: Colors.black.withOpacity(0.2),
                                filled: true,
                                hintText: ("Enter Password"),
                                // floatingLabelAlignment: FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.auto,
                                floatingLabelStyle: TextStyle(
                                  color: Colors.deepOrangeAccent.shade200,
                                  inherit: true,
                                  // height: 20,
                                  fontSize: 20,
                                ),

                                // isCollapsed: false,
                                // label: Text(""),
                                // inherit: true,
                                // enabled: false,
                                // autofocus: false,
                                hoverColor: Colors.redAccent,
                                isDense: true,
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black38),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(10),
                                //   borderSide: BorderSide(width: 1),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  // gapPadding: 10,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                // errorBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     color: Colors. green,
                                //),
                                //   borderRadius: BorderRadius.circular(10),
                                // ),
                                //   disabledBorder: OutlineInputBorder(
                                //     borderSide: BorderSide(
                                //       color: Colors.amber,
                                //       width: 0.45,
                                //     ),
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                              ),
                            ),
                          ),
                          CupertinoSwitch(
                            onChanged: (value) {
                              ios = !ios;
                              setState(() {});
                            },
                            value: ios,
                            activeColor: Colors.amber,
                            thumbColor: Colors.white,
                            // trackColor: Colors.white,
                            //   hoverColor: Colors.red,
                            // focusColor: Colors.orangeAccent,
                            //     activeColor: Colors.red,
                            //     autofocus: false,
                            //     activeTrackColor: Colors.amber,
                            //     inactiveTrackColor: Colors.indigoAccent,
                            //     inactiveThumbColor: Colors.amber,
                            // dragStartBehavior: DragStartBehavior.down,
                            // key: GlobalKey(debugLabel: "label"),
                          ),
                          Switch(
                            value: swi,
                            onChanged: (value) {
                              swi = !swi;
                              setState(() {});
                            },
                            activeColor: Colors.yellow.shade900,
                            hoverColor: Colors.red.shade500,
                            inactiveThumbColor: Colors.red.withOpacity(0.4),
                            activeThumbImage: AssetImage("image/Happy.webp"),
                            inactiveThumbImage: AssetImage("image/sad.png"),
                            // materialTapTargetSize: MaterialTapTargetSize.padded,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  print("valid");
                                }
                              },
                              child: Text("Submit")),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
