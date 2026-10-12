import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int click = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Counter Screen Application", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color: Colors.pink)),
                content: Text("Contador de clicks con incremento, decremento y reinicio. Además, se muestra el número de clicks realizados. \nDeveloped by ROSTA", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100)),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100, color: Colors.pink)),
                  ),
                ],
              );
            },
          );
        },
            icon: Icon(Icons.info)
        )],),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text("$click",
        style: TextStyle(fontSize: 100, fontWeight: FontWeight.w100)),
        Text("Click${(click == 0 || click == 1) ? "" : "s"}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100))]
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 10),
      AutoButtonClick(
        icon: Icon(Icons.remove, color: Colors.white),
        onPressed: () {
          setState(() {
            if (click <= 0) return;
          click--;
          });
        },
      ),
      SizedBox(width: 10),
      AutoButtonClick(
        icon: Icon(Icons.refresh, color: Colors.white),
        onPressed: () {
          setState(() {
          click = 0;
          });
        },
      ),
      SizedBox(width: 10),
      AutoButtonClick(
        icon: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          setState(() {
          click++;
          });
        },
      )
        ],
      ),
    );
  }
}

class AutoButtonClick extends StatelessWidget {
  final Icon icon;
  final Function onPressed;

  const AutoButtonClick({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pink,
      onPressed: () => onPressed(),
      child: icon,
    );
  }
}
