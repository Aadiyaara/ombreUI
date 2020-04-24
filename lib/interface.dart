import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Interface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Techno | English | 5hrs | Age 15+',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    'Sat 22 Nov - Sunday 23 Nov',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF43112C),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: InkWell(
                  onTap: () {
                    print('Pressed Prices Button');
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Pressed Prices Button')));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      'Prices',
                      style: TextStyle(color: Colors.pinkAccent),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Venue',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Prism Club and Kitchen',
                        style:
                            TextStyle(color: Colors.pinkAccent, fontSize: 16),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Pressed Navigation Button');
                          Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Pressed Navigation Button')));
                        },
                        child: Icon(
                          Icons.exit_to_app,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  print('Pressed Maps Button');
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Pressed Maps Button'),
                  ));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Image(image: AssetImage('assets/images/mapsIcon.png')),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          Container(
            child: Center(
              child: Text(
                'Artist(s)',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      DottedBorder(
                        color: Colors.pinkAccent,
                        borderType: BorderType.Circle,
                        child: CircleAvatar(
                          minRadius: 32,
                          backgroundColor: Color(0x00000000),
                          maxRadius: 32,
                          backgroundImage:
                              AssetImage('assets/images/Female1_512.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Marco Parola',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      DottedBorder(
                        color: Colors.pinkAccent,
                        borderType: BorderType.Circle,
                        child: CircleAvatar(
                          minRadius: 32,
                          backgroundColor: Color(0x00000000),
                          maxRadius: 32,
                          backgroundImage:
                              AssetImage('assets/images/Male1_512.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'DJ Chin',
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Text(
            'Gear up as the sunburn launches its 13th season with a banger! Catch up the rap legend - Wiz Khaifa - perform live in Madhapur on 14th Sept and mumbai on 15th Sept 2019',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Text(
            '...Read More',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF56388E), Color(0xFFE20D5D)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        print('Add to Guest List button Pressed');
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Add to Guest List button Pressed')));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text(
                            'Get added to Guest List',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
