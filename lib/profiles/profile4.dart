import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/data.dart';

class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  Profile _profile = ProviderData.getProfile;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          _profile.bg[3],
          height: screenHeight,
          fit: BoxFit.cover,
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
                  onPressed: () {}),
            ],
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * .40,
              width: screenWidth,
              margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16 ,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric( vertical: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  backgroundImage: AssetImage(_profile.user.photo),
                                  radius: 40,
                                ),
                              Row(
                                children: [
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text('ADD FRIEND', style: TextStyle(color: Colors.grey),),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(color: Colors.grey)),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  ),
                                  SizedBox(width: 8,),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text('FOLLOW' , style: TextStyle(color: Colors.white),),
                                    color: Colors.black.withOpacity(.45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(_profile.user.name , style: TextStyle(fontSize: 26 , color: Colors.black.withOpacity(.69) , fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text(_profile.user.address , style: TextStyle(fontSize: 16 , color: Colors.black.withOpacity(.4) ), ),
                        SizedBox(height: 16,),
                        Text(_profile.user.description.substring(0 ,80) , style: TextStyle(fontSize: 14 , color: Colors.black.withOpacity(.69) , height: 1.4 ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
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
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
