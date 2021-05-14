import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {

  //add controller for data of text fields
  //we can use that id password and etc. like t1.text and t2.text
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Example"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                SizedBox(height: 50,),
                TextFormField(
                  //use it as "controller"
                  controller: t1,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                   //use it as "controller"
                  controller: t2,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  onPressed: buttonFunction,
                  child: Text("Login"),
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonFunction() {
    //lets try
    print(t1.text);
    print(t2.text);
  }
}
