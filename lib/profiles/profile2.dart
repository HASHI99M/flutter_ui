import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/data.dart';
import 'package:flutter_ui/profiles/profile1.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  Profile _profile = ProviderData.getProfile;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double appBarHeight = AppBar().preferredSize.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double cont = screenHeight * .40 - appBarHeight - statusBarHeight;
    return Stack(
      children: [
        Image.asset(
          _profile.bg.first,
          fit: BoxFit.cover,
          height: screenHeight * .40,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile1()));
                }),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * .40 - appBarHeight - statusBarHeight,
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth,
                        height: cont / 2,
                        child: Stack(
                          children: [
                            Align(
                              child: Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.1),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(_profile.user.photo),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        _profile.user.name,
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          _profile.user.address,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[200],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
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
                      _driver(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        child: Text(
                          'about me'.toUpperCase(),
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          _profile.user.description,
                          style: TextStyle(height: 1.3, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 30 , left: 30 , top: 30),
                        child: Text(
                          'friends (${_profile.friend})'.toUpperCase(),
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                      ),
                      Expanded(
                        child: Container(

                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) => Container(
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.withOpacity(.4),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 5),

                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

_driver() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey[200],
  );
}
