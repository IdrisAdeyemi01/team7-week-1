import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop7ecx/components/navigation_bar.dart';

class MyHomePage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
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
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/hero.jpg'),
                Text('SHOP-7',
                  style: TextStyle(
                    color: Color(0xFF09048B),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 50,),
                Text('Shop7 is an online pre-order shop, where we showcase new shirts that are just coming out, with a countdown. Anyone can check the items out, and then pre-order at a discount rate.',
                style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 40,
                  width: 150,
                  child: Center(
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/products');
                      },
                      child: Text('explore',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF44B35)
                  )
                )
              ],
            ),
          ),
        );
      }
    }
