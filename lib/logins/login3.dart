import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Color(0xff142b52),
        ),
        CustomPaint(
          painter: Background2(),
          child: Container(),
        ),
        CustomPaint(
          painter: Background(),
          child: Container(),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                top: screenHeight * .42,
                left: 0,
                right: 0,
                child: Align(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg4.jpg'),fit: BoxFit.cover
                      ),
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2)),
                  ),
                ),
              ),
              Positioned(
                  top: screenHeight * .20,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        'Welcome back to',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BooStock',
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ],
                  )),
              Positioned(
                  top: screenHeight * .60,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        'Please login to continue',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 2 , top: 30),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        width: screenWidth * .8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'email@example.com',
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.email,
                                color: Colors.grey[700],
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 12),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        width: screenWidth * .8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: '* * * * * * * ',
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.vpn_key,
                                color: Colors.grey[700],
                              )),
                        ),
                      ),
                      SizedBox(
                          width: screenWidth * .8,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text('SIGN IN'),
                            padding: EdgeInsets.symmetric(vertical: 14),
                            color: Color(0xffe66320).withOpacity(.95),
                          )),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20) , child: Text('Don\'t have an account ? Create one' , style: TextStyle(color: Colors.white),),)
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * .8);
    Gradient gradient = LinearGradient(colors: [
      Color(0xffff3181),
      Color(0xfffa7537),
    ], stops: [
      0.1,
      0.9
    ]);
    Paint paint = Paint();
    Path path = Path();

    paint.color = Color(0xffe66320).withOpacity(.7);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * .15);
    path.quadraticBezierTo(
        size.width * .5, size.height * .85, 0, size.height * .15);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class Background2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * .8);
    Gradient gradient = LinearGradient(colors: [
      Color(0xffff3181),
      Color(0xfffa7537),
    ], stops: [
      0.1,
      0.9
    ]);
    Paint paint = Paint();
    Path path = Path();
    paint.color = Color(0xffe5450d);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * .40);
    path.quadraticBezierTo(
        size.width * .5, size.height * .60, 0, size.height * .40);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
