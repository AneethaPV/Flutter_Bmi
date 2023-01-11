import 'package:flutter/material.dart';

void main() {
  runApp(bmi());
}

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double result = 0;

  void bmii() {
    double h = double.parse(height.text) / 100;
    double w = double.parse(weight.text);
    double ans = w/(h*h);
    result = ans;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(400, 0, 400, 0),
                child: TextField(
                  controller: height,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Height',
                      hintText: 'Enter Weight'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(400, 10, 400, 0),
                child: TextField(
                  controller: weight,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Weight',
                      hintText: 'Enter Weight'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    bmii();
                  },
                  child: Text(
                    "SUBMIT",
                  )),
              SizedBox(height: 10),
              Text(
                "Result=${result.toStringAsFixed(2)}",
                // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          )),
        ),
      ),
    );
  }
}
