import 'package:flutter/material.dart';

void main() => runApp(const showmodalbuttonsheet());

class showmodalbuttonsheet extends StatelessWidget {
  const showmodalbuttonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recuperar el valor d' 'un camp de text',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar el valor d\'un camp de text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        hoverColor: Colors.pink,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                  decoration: const BoxDecoration(
                    color: Colors.lime,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('ModalBottomSheet Preview'),
                        ElevatedButton(
                          child: const Text('Tancar aquest BottomSheet'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ),
                  ));
            },
          );
        },
        child: const Text('Veure'),
      ),
    );
  }
}
