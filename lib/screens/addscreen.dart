import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});
  @override
  State<AddScreen> createState() => _AddSreenState();
}

class _AddSreenState extends State<AddScreen> {
  TextEditingController txtController = TextEditingController();
  TextEditingController txtController1 = TextEditingController();
  late dynamic output;

  @override
  void initState() {
    output = 0;
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


  btnStyle(colorVal) => ElevatedButton.styleFrom(
    backgroundColor: colorVal,
    minimumSize: const Size.fromHeight(50)
  );

  calculate(type, val1, val2){
    val1 = int.parse(val1);
    val2 = int.parse(val2);
    
    setState(() {
      if (type == 'add') {
        output = val1 + val2;
      } else if (type == 'substract') {
        output = val1 - val2;
      } else if (type == 'multiply') {
        output = val1 * val2;
      } else if (type == 'divided') {
        output = val1 / val2;
      } else {
        output = 'Invalid Output';
      }
    });
  }

  final txtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Stateful Screen'),
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
                  hintText: 'Enter Value 1',
                  labelText: 'VALUE 1',
                  prefixIcon: Icon(Icons.numbers)
                ),
              ),

              const SizedBox(height: 15,),

              TextField(
                controller: txtController1,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Value 2',
                    labelText: 'VALUE 2',
                    prefixIcon: Icon(Icons.numbers)
                ),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: btnStyle(Colors.pink),
                  onPressed: () {
                    calculate(
                        'add',
                        txtController.text,
                        txtController1.text
                    );
                  },
                child: const Text('ADD'),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: btnStyle(Colors.green),
                onPressed: () {
                  calculate(
                      'substract',
                      txtController.text,
                      txtController1.text
                  );
                },
                child: const Text('SUBTRACT'),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: btnStyle(Colors.blue),
                onPressed: () {
                  calculate(
                      'multiply',
                      txtController.text,
                      txtController1.text
                  );
                },
                child: const Text('MULTIPLY'),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: btnStyle(Colors.yellow),
                onPressed: () {
                  calculate(
                      'divided',
                      txtController.text,
                      txtController1.text
                  );
                },
                child: const Text('DIVIDED'),
              ),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'result:',
                  ),

                  Text(
                    ' $output',
                    style: txtStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
