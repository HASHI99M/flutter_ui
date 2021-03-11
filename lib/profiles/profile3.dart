import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/data.dart';
import 'package:flutter_ui/profiles/profile2.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Profile _profile = ProviderData.getProfile;
    return Stack(
      children: [
        Image.asset(
          _profile.bg.first,
          fit: BoxFit.cover,
          height: screenHeight,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile2()));
                  })),
          body: Container(
            height: screenHeight,
            width: screenWidth,
            margin:
                EdgeInsets.only(left: 10, right: 10, top: screenHeight * .08),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            child: Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: -40,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(_profile.user.photo),
                    radius: 40,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: screenHeight * .08),
                    child: ListView(
                      children: [
                        Text(
                          _profile.user.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(.75)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _profile.user.address,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(.6)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            child: RaisedButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
                              color: Colors.red[600].withOpacity(.8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              child: Text(
                                'FOLLOW',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Follower'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    _profile.follower.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                        letterSpacing: 1.2),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Following'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    _profile.following.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                        letterSpacing: 1.2),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'friends'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    _profile.friend.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                        letterSpacing: 1.2),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                              child: Text('PHOTOS (25)' , style: TextStyle(color:Colors.grey.shade400), textAlign: TextAlign.center,)),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          height: screenHeight * .165,
                          child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context , index)=>Container(
                            width: screenHeight * .165,
                            margin: EdgeInsets.only(right: 5 , bottom: 10 ,top: 10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(.8),
                              image: DecorationImage(image: AssetImage( index == 0 ? _profile.bg[0] : index ==2 ? _profile.bg[1] : _profile.bg[2]) , fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('ABOUT ME' , style: TextStyle(color:Colors.grey.shade400),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(_profile.user.description ,  style: TextStyle(height: 1.2),),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
