import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'U&I',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'parisienne',
                    fontSize: 80),
              ),
              Text('우리 처음 만난날',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'sunflower',
                      fontSize: 30)),
              Text('2023. 11. 26',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'sunflower',
                      fontSize: 20)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              Text('D+1',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sunflower',
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
