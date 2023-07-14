import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class animation extends StatefulWidget {
  const animation({Key? key}) : super(key: key);

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {

  bool c=false;
  int val=0;
  List list=[test1(),test2()];
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double appbar=kToolbarHeight;
    double appstatus=MediaQuery.of(context).padding.top;
    double bottombar=MediaQuery.of(context).padding.bottom;

    double body=height-appstatus-bottombar;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: body,
          width: width,

          child:Column(
            children: [
              Expanded(
                child: PageTransitionSwitcher(
                    duration: Duration(seconds: 1),
                    transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
                      return FadeThroughTransition(
                        animation: primaryAnimation,
                        secondaryAnimation: secondaryAnimation,
                        // transitionType: SharedAxisTransitionType.scaled,
                        child: child,);
                    },
                    child: list[val]
                  // c==false?test2():test1()
                ),),
              // Container(
              //   margin: EdgeInsets.fromLTRB(10,0, 10,0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       TextButton(onPressed: (){
              //         c=false;
              //         setState(() {});
              //       }, child: Text("BACK")),
              //     ElevatedButton(onPressed: (){
              //       c=true;
              //       setState(() {});
              //     }, child: Text("Next") )
              //     ],
              //   ),
              // )
              BottomNavigationBar(
                currentIndex: val,
                onTap: (value) {

                  setState(() {
                    val=value;
                  });
                },
                items: [
                  BottomNavigationBarItem(icon:Icon(Icons.add_a_photo_outlined),label: "camera"),
                  BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
                ],)
            ],
          ),
        ),
      ),
    );
  }
}
class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Container(
     color: Colors.amber,
      height: 200,
      width: 500,
    );
  }
}


//page 2


class test1 extends StatefulWidget {
  const test1({Key? key}) : super(key: key);

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      height: 200,
      width: 500,
    );
  }
}
