import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/data.dart';
import 'package:flutter_ui/profiles/profile3.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile _profile = ProviderData.getProfile;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Image.asset(
        _profile.bg.first,
        height: screenHeight * .45,
        fit: BoxFit.cover,
      ),
      CustomPaint(
        painter: ProfilePainter(),
        child: Container(),
      ),
      Positioned(
        child: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          radius: 40,
          backgroundImage: AssetImage(_profile.user.photo),
          foregroundColor: Colors.white,
        ),
        top: screenHeight * .33,
        left: screenWidth *.05,
      ),
      Positioned(
          top: screenHeight * .45,
          bottom: 0,
          left: 0,
          right: 0,
          child: Material(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: screenWidth*.05 , left: screenWidth*.05 , bottom: screenWidth*.05 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(_profile.user.name , style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold , color: Colors.black.withOpacity(.65)),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on ,  color: Colors.grey.shade300,),
                          SizedBox(width: 5,),
                          Text(_profile.user.address , style: TextStyle(color: Colors.grey , fontSize: 16),)
                        ],
                      ),
                      SizedBox(height: screenWidth * .08,),
                      Text('ABOUT MY' , style: TextStyle(color: Colors.grey),),
                      SizedBox(height: screenWidth * .05,),
                      Text(_profile.user.description
                      ,textAlign: TextAlign.start,
                        maxLines: 5,
                        style: TextStyle(wordSpacing: 1.5 , fontSize: 16 , height: 1.6),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Follower'.toUpperCase(),
                            style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w500),

                          ),
                          Text(
                            _profile.follower.toString(),
                            style: TextStyle( fontWeight: FontWeight.w500 , fontSize: 22 , letterSpacing: 1.2),

                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Following'.toUpperCase(),
                            style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w500),

                          ),
                          Text(
                            _profile.following.toString(),
                            style: TextStyle( fontWeight: FontWeight.w500 , fontSize: 22 , letterSpacing: 1.2),

                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'friends'.toUpperCase(),
                            style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w500),

                          ),
                          Text(
                            _profile.friend.toString(),
                            style: TextStyle( fontWeight: FontWeight.w500 , fontSize: 22 , letterSpacing: 1.2),

                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('Profile'),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile3()));
          }),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
        ),
        backgroundColor: Colors.transparent,
      ),
    ]);
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = Colors.white;
    path.lineTo(0, size.height * .38);
    path.lineTo(size.width, size.height * .45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * .25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
