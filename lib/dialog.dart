import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class dialog extends StatefulWidget {
  const dialog({Key? key}) : super(key: key);

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
              child:ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Hello"),
                      content: Text("SAHIL"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("ok")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Cancel")),
                      ],
                    );
                  },);
              }, child: Text("Clik")),
            ), Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
              child:ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Column(
                        children: [
                          Table(
                            children: [

                              TableRow(
                                children: [
                                  Text("No"),
                                  Text("Name"),
                                  Text("Citiy"),
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    );
                  },);
              }, child: Text("Clik")),
            ),
          ],
        ),
      ),
    );
  }
}
