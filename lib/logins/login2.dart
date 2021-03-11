import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/logins/login1.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Theme(
      data: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      child: Stack(
        children: [
         Image.asset('assets/images/gym.jpg' , fit: BoxFit.cover,height: screenHeight * .6,width: screenWidth,),
          CustomPaint(
            painter: Background(),
            child: Container(),
          ),
          CustomPaint(
            painter: Background2(),
            child: Container(),
          ),
          Positioned(
            top: screenHeight * .6,
            bottom: 0,
            left: 0,
            right: 0,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login to start!' , style: TextStyle(fontSize: 26 , color: Colors.white),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:  EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Your email',
                                    hintText: 'email@example.com',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    labelStyle: TextStyle(
                                        fontSize: 16 ,
                                        color: Colors.white
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.grey) ,

                                ),
                                SizedBox(height: 8,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      hintText: '* * * * * * * * *',
                                      hintStyle: TextStyle(color: Colors.grey),
                                      labelStyle: TextStyle(
                                          fontSize: 16 ,
                                          color: Colors.white
                                      )
                                  ),
                                  style: TextStyle(color: Colors.grey) ,

                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login1()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.all(35),
                            child: Text('GO' , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.bold),) ,
                            decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.amber),
                          ),
                        ),

                      ],
                    ),
                    Align(alignment: Alignment.center,child: Text('Don\'t have an account ? Create One ' ,style: TextStyle(decoration: TextDecoration.underline , color: Colors.white , fontSize: 16),))

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * .8);
    Gradient gradient = LinearGradient(
        colors: [
          Color(0xffff3181),
          Color(0xfffa7537),

        ] ,
        stops: [
          0.1,
          0.9
        ]
    );
    Paint paint = Paint();
    Path path = Path();

    paint.color = Color(0xffff3181).withOpacity(.36);
    path.lineTo(0, size.height * .32);
    path.lineTo(size.width * .69, size.height * .59);
    path.lineTo(size.width, size.height *.38);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * .35);
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
    Gradient gradient = LinearGradient(
        colors: [
          Color(0xffff3181),
          Color(0xfffa7537),

        ] ,
        stops: [
          0.2,
          0.7
        ]
    );
    Paint paint = Paint();
    Path path = Path();

    paint.shader = gradient.createShader(rect);
    path.lineTo(0, size.height * .40);
    path.lineTo(size.width * .69, size.height * .60);
    path.lineTo(size.width, size.height *.45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * .40);
    path.close();
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}