import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './donatello.dart' as firstpage;
import './michelangelo.dart' as secondpage;
import './raphael.dart' as thirdpage;
import './leonardo.dart' as fourthpage;

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF8fd129),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFed1c24),
          elevation: 0.0,
          title: Text(
            'NINJA TURTLE ID',
            style: TextStyle(
                fontFamily: 'Turtles', letterSpacing: 4.0, fontSize: 26.0),
          ),
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(
                child: Text('D',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('M',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('R',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('L',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new firstpage.Donatello(),
            new secondpage.Michelangelo(),
            new thirdpage.Raphael(),
            new fourthpage.Leonardo()
          ],
        ));
  }
}

/*
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF8fd129),
        appBar: AppBar(
          title: Text(
            'NINJA TURTLE ID',
            style: TextStyle(
                fontFamily: 'Turtles', letterSpacing: 4.0, fontSize: 26.0),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('D',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('M',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('R',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
              Tab(
                child: Text('L',
                    style: TextStyle(
                      fontFamily: 'chlorina',
                      fontSize: 32,
                    )),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFed1c24),
          elevation: 0.0,
        ),
        body: 
      ),
    );
  }
}
 */
