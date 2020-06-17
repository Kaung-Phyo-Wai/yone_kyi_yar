import 'package:flutter/material.dart';
import 'package:sagain_region/components/constants.dart';
import 'package:sagain_region/components/componentsForPages.dart';
import 'package:sagain_region/pages/law.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/SagaingMap.jpg"),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Image.asset(
              'images/logo.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left:35, right:35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      
                      children: <Widget>[
                        ButtonForHome(
                          onPressed: (){

                          },
                          lable: 'လက်ဆွဲစာအုပ်',
                          fillcolor: Color(0xFF328CBB),
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height:15,
                        ),
                        ButtonForHome(
                          onPressed:(){
                            Navigator.push(context,
                             MaterialPageRoute(builder: (BuildContext context)=> LawPage() ));
                          },
                          lable:'ဥပဒေ',
                          fillcolor: Colors.white,
                          textColor: Color(0xFF328CBB),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'ဆက်သွယ်ရန်',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'စစ်ကိုင်းတိုင်း‌ဒေသကြီးစည်ပင်သာယာရေးကော်မတီ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}

