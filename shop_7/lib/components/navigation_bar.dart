import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(2.0),
        children: <Widget>[
          Center(
            child: Container(
                height: 25,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/countdown');
            },
            leading: Icon(Icons.hourglass_empty),
            title: Text('Countdown'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/products');
            },
            leading: Icon(Icons.shop_two),
            title: Text('Products'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/products');
            },
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/login');
            },
            leading: Icon(Icons.perm_identity),
            title: Text('Login'),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/registration');
            },
            leading: Icon(Icons.input),
            title: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}