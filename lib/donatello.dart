import 'package:flutter/material.dart';

class Donatello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/donatello.png'),
                  ),
                ),
              ],
            ),
            Text('NAME',
                style: TextStyle(
                  color: Color(0xFF000000),
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Chlorina',
                  fontSize: 26.0,
                )),
            SizedBox(
              height: 5.0,
            ),
            Text('Donatello',
                style: TextStyle(
                  color: Colors.purple,
                  letterSpacing: 2.0,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bangers',
                )),
            SizedBox(
              height: 30.0,
            ),
            Text('WEAPON',
                style: TextStyle(
                  color: Color(0xFF000000),
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Chlorina',
                  fontSize: 26.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('BÔ',
                style: TextStyle(
                  color: Colors.purple,
                  letterSpacing: 2.0,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bangers',
                )),
            SizedBox(
              height: 30.0,
            ),
            Text('MASTER OF',
                style: TextStyle(
                  color: Color(0xFF000000),
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Chlorina',
                  fontSize: 26.0,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('NINJUTSU, BÔJUTSU, KOBUDÔ AND CHI GONG',
                style: TextStyle(
                  color: Colors.purple,
                  letterSpacing: 2.0,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bangers',
                )),
          ],
        ),
      ),
    );
  }
}
