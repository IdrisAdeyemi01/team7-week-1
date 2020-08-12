import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_countdown_timer/countdown_timer.dart';
import 'package:shop7ecx/components/navigation_bar.dart';

import 'package:shop7ecx/constants.dart';

class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Container(
          width: 80,
          height: 50,
          child: Image.asset('images/logo.jpg',
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.search,
              color: Colors.black,),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFEDD382),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50),
                child: CountdownTimer(
                  endTime: DateTime(2020,12,1).millisecondsSinceEpoch,
                  defaultDays: "==",
                  defaultHours: "--",
                  defaultMin: "**",
                  defaultSec: "++",
                  daysSymbol: "d ",
                  hoursSymbol: "h ",
                  minSymbol: "m ",
                  secSymbol: "s",
                  daysTextStyle: kCountdownTextStyle,
                  hoursTextStyle: kCountdownTextStyle,
                  minTextStyle: kCountdownTextStyle,
                  secTextStyle: kCountdownTextStyle,
                  daysSymbolTextStyle: kCountdownTextStyle,
                  hoursSymbolTextStyle: kCountdownTextStyle,
                  minSymbolTextStyle: kCountdownTextStyle,
                  secSymbolTextStyle: kCountdownTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text('to Launch',
            style: kToLaunchTextStyle,
            )
          ],
        ),
      ),
    );
  }
}




