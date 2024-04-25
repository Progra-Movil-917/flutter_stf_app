import 'package:flutter/material.dart';

//Estado
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _countLikes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
          '$_countLikes Like${_countLikes < 2 ? '' : 's'}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.favorite), Text('+')]),
            onPressed: () {
              setState(() {
                _countLikes++;
              });
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.favorite), Text('-')]),
            onPressed: () {
              setState(() {
                 if (_countLikes > 0) {
                _countLikes--;
      }
              });
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
