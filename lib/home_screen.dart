import 'package:flutter/cupertino.dart';
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
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(child: _TopPart()),
              Expanded(
                child: Image.asset('asset/img/middle_image.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'U&I',
          style: TextStyle(
              color: Colors.white, fontFamily: 'parisienne', fontSize: 80),
        ),
        Text('우리 처음 만난날',
            style: TextStyle(
                color: Colors.white, fontFamily: 'sunflower', fontSize: 30)),
        Text('2023. 11. 26',
            style: TextStyle(
                color: Colors.white, fontFamily: 'sunflower', fontSize: 20)),
        IconButton(
            iconSize: 60,
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        height: 300,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime date){
                            print(date);
                          },
                        )
                      ),
                    );
              });
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            )),
        Text('D+1',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sunflower',
              fontSize: 50,
              fontWeight: FontWeight.w700,
            )),
      ],
    );
  }
}
