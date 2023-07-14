import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahil/config.dart';

class shayari extends StatefulWidget {
  const shayari({Key? key}) : super(key: key);

  @override
  State<shayari> createState() => _shayariState();
}

class _shayariState extends State<shayari> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(title: Text("Love Shayari"), backgroundColor: Colors.green, actions: [Icon(Icons.share,), Icon(Icons.more_vert)],),
          body: Container(color: Colors.white,
            margin: EdgeInsets.all(10),
            child: ListView.separated(
                itemBuilder: (context, index) {

                  return ListTile(
                    leading: Image.asset("image/${arrey.a[index]}"),
                    title: Text("${arrey.b[index]}"),
                    // trailing: Icon(CupertinoIcons.right_chevron),
                  );
                }, separatorBuilder: (context, index) {
              return Divider(thickness: 5,height: 10,color: Colors.grey.shade200,);
            }, itemCount:arrey.a.length ),
          ),
        ),
      );
  }
}
