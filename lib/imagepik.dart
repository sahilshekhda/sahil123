import 'dart:io';

import 'package:flutter/material.dart';

import 'class.dart';

class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {  int clik =0;

File? file ;

  bool test =false;
  List<File> list = [];
  List<bool> longpress = [];
  int Counter=0;

  // Image items ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarOpacity: 0.3,
          bottom: TabBar(
              onTap:(index) {},
              indicator: BoxDecoration(
                border: Border.all(width: 2 , color: Colors.pinkAccent),
              ),
              tabs: [
                Icon(Icons.payment),
                Text("Account"),
                Text("Setting"),
              ]
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () async {

                        // if(list.length%2==0)
                        //
                        // {
                        //   file = await photo(imageSource: ImageSource.gallery);
                        //       if(file != null)
                        //         {
                        //           list.add(file!);
                        //         }
                        // }
                        // else
                        //   {
                        //     file = await photo(imageSource: ImageSource.camera);
                        //     if(file != null)
                        //     {
                        //       list.add(file!);
                        //     }
                        setState(() {});
                        print("List $list");
                        if(file!=null)
                        {
                          // list.add(file!);
                          longpress.add(false);
                        }

                      },
                      child: Text("Photo")),
                  // Row(
                  //   children: [
                  //     ElevatedButton(onPressed:  (){
                  //       if(Counter<=list.length-1)
                  //       {
                  //         Counter++;
                  //       }
                  //       setState((){});
                  //     }, child: Text("+")),
                  //     ElevatedButton(onPressed: (){
                  //       list.removeAt(Counter-1);
                  //       setState(() {});
                  //       print(list);
                  //     },child: Text("Delet (${Counter})")),
                  //     ElevatedButton(onPressed:  (){
                  //       if(Counter>0)
                  //       {
                  //         Counter--;
                  //       }
                  //       setState((){});
                  //     }, child: Text("-")),
                  //   ],
                  // ),
                  SizedBox(
                    height: 200,
                    width: 500,
                    child: Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: list.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          if (file != null) {
                            return  InkWell(
                              onLongPress: (){
                                var list = longpress = [true];
                              },

                              child: longpress[index]? Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2)
                                ),
                                child:Image.file(list[index]),
                              ):Container(
                                height: 100,
                                width: 100,
                                child:Image.file(list[index]),
                              ),  );}
                        },),
                    ),
                  ),
                ]
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            file = (await camera()) as File?;
            setState(() {});
          },

          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
