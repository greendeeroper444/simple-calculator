import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  TextEditingController txtController = TextEditingController();
  TextEditingController txtController1 = TextEditingController();
  late String value;

  @override
  void initState() {
    value = '';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }


  final btnStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st stateful screen'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter username',
                  labelText: 'USERNAME'
                ),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: btnStyle,
                  onPressed: () {
                    setState(() {
                      value =  txtController.text;
                    });
                  },
                  child: const Text('SHOW')
              ),

              const SizedBox(height: 15,),

              Text('Value: $value')
            ],
          ),
        ),
      ),
    );
  }
}
