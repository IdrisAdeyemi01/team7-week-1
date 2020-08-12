import 'package:flutter/material.dart';
import 'package:shop7ecx/components/navigation_bar.dart';


class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

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
            height: 700,
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
                      hintText: 'First Name',
                    ),
                  ),TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF757575),
                      hintText: 'Last Name',
                    ),
                  ),
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
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF757575),
                      hintText: 'Phone Number (optional)',
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
                      Expanded(
                        child: Text('I want to receive shop-7 Newsletters with the best deal and offers',
                          overflow: TextOverflow.clip,
                          style: TextStyle(fontFamily: 'Monterrat'),),
                      ),
                      ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF1B79A1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: FlatButton(child: Text('CREATE ACCOUNT')),),
                  ),
                  Text('Already have an account?'),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text('LOGIN',
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
