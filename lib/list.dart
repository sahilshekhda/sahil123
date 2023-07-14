import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listview2 extends StatelessWidget {
  const listview2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double height = 100;
    double op=0.1;
    return MaterialApp(
      home:Scaffold(
        body: Column(
          children: [
            Text("data"),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: height +index*(height*10/100),
                        color: Colors.red.withOpacity(index*op/5),
                        child: Text("${index+1}    ${height +index*(height*10/100)}"),
                      );
                    },
                    // separatorBuilder: (context, index) {
                    //   return Divider();
                    // },
                    itemCount: 50)
            )
          ],
        ),
      ),
    );
  }
}
