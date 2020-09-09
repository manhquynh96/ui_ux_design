import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.blue[300],
        child: Column(
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                height: 65,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Text('SIMPLE TEXT', style: TextStyle(color: Colors.white)),
                    IconButton(
                      icon: Icon(Icons.control_point),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/ATG.jpg', fit: BoxFit.cover),
            SizedBox(height: 50),
            _buildTextFormField(text: 'Username'),
            _buildTextFormField(text: 'Password'),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
              ),
              child: GestureDetector(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.library_books),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_buildTextFormField({String text}) {
  return Container(
    width: double.infinity,
    height: 50,
    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.white),
    ),
    child: TextFormField(
      decoration: InputDecoration(
        isDense: false,
        hintText: text,
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 8),
      ),
    ),
  );
}
