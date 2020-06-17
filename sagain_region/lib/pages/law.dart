import 'package:flutter/material.dart';
import 'package:sagain_region/components/componentsForPages.dart';

Map<int, String> lawList ={
  1:"hello this is minhan",
  2:"min",
  3:"king"
};

List<String> lawlisting=["hello this is minhan","min","dede"];

class LawPage extends StatefulWidget {
  @override
  _LawPageState createState() => _LawPageState();
}

class _LawPageState extends State<LawPage> {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('ဥပဒေ',
          textAlign: TextAlign.center,
          ),),
          body: Container(
            child:Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child: getTextWidgets(lawlisting)
            )
          ),
        )
      ), 
    );
  }
}

Widget getTextWidgets(List<String> strings)
  {
    List<Widget> list = new List<Widget>();
    for(var i = 0; i < strings.length; i++){
        list.add(new ButtonForHome(
          lable:strings[i],
          onPressed: (){},
          ));
    }
    return new Column(children: list);
  }