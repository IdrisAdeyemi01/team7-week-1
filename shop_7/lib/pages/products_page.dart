import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop7ecx/components/navigation_bar.dart';

import 'package:shop7ecx/constants.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  int index;
  int _current = 0;
  List imgList = ['images/items.png', 'images/green.png', 'images/blue.png', 'images/red.png', 'images/orange.png'];
  String clothSize = 'M';
  String colorType = 'Green';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: NavigationDrawer(),
      body: Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 2),
                autoPlay: true,
                height: 400,
                initialPage: 0,
                onPageChanged: null,
              ),
              items: imgList.map((img){
                return Builder(builder: (BuildContext context){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Image.asset(img,
                    fit: BoxFit.fill,),
                  );
                });
              }).toList()
            ),
            Row(
              children: [
            Expanded(
              child: Container(
              width: 20,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(imgList[0],
              fit: BoxFit.fill,),
              ),
            ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(imgList[1],
                      fit: BoxFit.fill,),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(imgList[2],
                      fit: BoxFit.fill,),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(imgList[3],
                      fit: BoxFit.fill,),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Image.asset(imgList[4],
                      fit: BoxFit.fill,),
                  ),
                ),
    ],
    ),
            Text('Multi-coloured Short Sleeve Shirt',
              style: kProductHeadingTextStyle,),
            Text('Be the first to review this product'),
            SizedBox(height: 10,),
            Divider(
              thickness: 3,
              color: Colors.brown[900],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Launch: ',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                  ),),
                  Expanded(child: SizedBox()),
                  Text('December 1, 2020',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('\$9.99',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('this product is open for pre-order',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Size',
                  style: TextStyle(fontWeight: FontWeight.bold,),),
                  SizedBox(width: 30,),
                  Text('$clothSize')
                ],
              ),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        clothSize = 'XS';
                      });
                    },
                      child: Text('XS',
                      style: TextStyle(
                        fontSize: 13,
                      ),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          clothSize = 'S';
                        });
                      },
                      child: Text('S')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          clothSize = 'M';
                        });
                      },
                      child: Text('M')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: FlatButton(
                      onPressed: (){
                        setState(() {
                          clothSize = 'L';
                        });
                      },
                      child: Text('L')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 30,
                  width: 50,
                  child: FlatButton(
                      onPressed: (){
                        clothSize = 'XL';
                      },
                      child: Text('XL',
                      style: TextStyle(
                        fontSize: 13
                      ),)),
                ),
              ),
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Color',
                    style: TextStyle(fontWeight: FontWeight.bold,),),
                  SizedBox(width: 40,),
                  Text('$colorType')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(6)  ,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 30,
                      width: 50,
                      child: FlatButton(
                          onPressed: (){
                            setState(() {
                              colorType = 'Green';
                            });
                          },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 30,
                      width: 50,
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            colorType = 'Blue';
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(6)  ,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 30,
                      width: 50,
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            colorType = 'Red';
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(6)  ,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 30,
                      width: 50,
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            colorType = 'Orange';
                          });
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Qty',
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),

                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/products');
                  },
                  child: Text('Pre-Order',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}


