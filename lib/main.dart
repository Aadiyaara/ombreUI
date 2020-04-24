import 'package:flutter/material.dart';
import './interface.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Presentation',
      theme: ThemeData(
        primaryTextTheme: TextTheme(caption: TextStyle(color: Colors.grey)),
        fontFamily: 'Montserrat',
        primaryColor: Color(0xFF0D111A),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSet = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  setSet() {
    setState(() {
      _isSet = !_isSet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxisScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/demoparty.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x00000000),
                          Color(0xFF000000),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                titlePadding: EdgeInsets.all(16),
                centerTitle: false,
                collapseMode: CollapseMode.parallax,
                title: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Pablo Discobar'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      GestureDetector(
                        onTap: setSet,
                        child: Icon(
                          _isSet ? Icons.headset : Icons.headset_off,
                          color: Colors.pinkAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Interface(),
      ),
    );
  }
}
