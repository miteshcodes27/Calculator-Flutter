import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int num1=0, num2=0, res=0;
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  sum(){
    setState(() {
      int num1 = int.parse(controller1.text);
      int num2 = int.parse(controller2.text);
      res = num1 + num2;
    });
  }
  sub(){
    setState(() {
      int num1 = int.parse(controller1.text);
      int num2 = int.parse(controller2.text);
      res = num1 - num2;
    });
  }
  mul(){
    setState(() {
      int num1 = int.parse(controller1.text);
      int num2 = int.parse(controller2.text);
      res = num1 * num2;
    });
  }
  div(){
    setState(() {
      int num1 = int.parse(controller1.text);
      int num2 = int.parse(controller2.text);
      res = num1 ~/ num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("PKButtonDemo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Result : $res",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                labelText: "Enter First Number",
                hintText: "Enter fno",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(height: 25,),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                labelText: "Enter Second Number",
                hintText: "Enter Sno",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  sum();
                  controller1.clear();
                  controller2.clear();
                },
                    child: Text("Sum",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),

                ),

                ElevatedButton(onPressed: (){
                  sub();
                  controller1.clear();
                  controller2.clear();
                },
                    child: Text("Sub",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  mul();
                  controller1.clear();
                  controller2.clear();
                },
                    child: Text("Mul",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  div();
                  controller1.clear();
                  controller2.clear();
                },
                    child: Text("Div",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                    ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


