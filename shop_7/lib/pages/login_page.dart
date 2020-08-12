import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop7ecx/components/navigation_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool value = false;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFC8C6C6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF757575),
                      hintText: 'E-mail',
                    ),
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF757575),
                      hintText: 'Password',
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: value,
                          onChanged: (val){
                            setState(() {
                              value = val;
                            });
                          }),
                      Text('remember me', style: TextStyle(fontFamily: 'Monterrat'),),
                      SizedBox(width: 50),
                      GestureDetector(
                        child: Text('forgot password',
                        style: TextStyle(color: Color(0xFF4040D4), fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1B79A1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: FlatButton(onPressed: null,
                        child: Center(child: GestureDetector(child: Text('LOGIN')),)),
                  ),
                  Text('Don\'t have an account yet?'),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/registration');
                    },
                    child: Text('CREATE AN ACCOUNT',
                    style: TextStyle(color: Color(0xFF4040D4), fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
