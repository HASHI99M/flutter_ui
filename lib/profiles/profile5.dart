import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui/profiles/data.dart';

class Profile5 extends StatefulWidget {
  @override
  _Profile5State createState() => _Profile5State();
}

class _Profile5State extends State<Profile5> {
  Profile _profile = ProviderData.getProfile;
   int active = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _detailProfile(),
          Container(
            margin: EdgeInsets.only(top: 16 , bottom: 4),
            height: 1,
            color: Colors.grey[200],
          ),
          _listCategory(),
          _bodyProfile()
        ],
      ),
    );
  }
  Widget _detailProfile(){
    return Column(
      children: [
        Align(
          child: CircleAvatar(
            backgroundImage: AssetImage(_profile.user.photo),
            radius: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            _profile.user.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black.withOpacity(.65)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            _profile.user.address,
            style:
            TextStyle(fontSize: 16, color: Colors.black.withOpacity(.4)),
          ),
        ),
        RaisedButton(
          color: Colors.deepOrange[800].withOpacity(.75),
          onPressed: () {},
          child: Text(
            'FOLLOW',
            style: TextStyle(color: Colors.white),
          ),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        ),
      ],
    );
  }
  Widget _listCategory(){
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              FlatButton(onPressed: (){
                setState(() {
                  active = 0;
                });
              }, child: Text('PHOTO' , style: TextStyle(color:active == 0 ? Colors.grey: Colors.black.withOpacity(.6)),) , ),
              active == 0 ? Container(
                height: 2,
                width: 30,
                color: Colors.grey[600],
              ) : Text('')
            ],
          ),
          Column(
            children: [
              FlatButton(onPressed: (){
                setState(() {
                  active = 1;
                });
              }, child: Text('VIDEOS' , style: TextStyle(color:active == 1 ? Colors.grey: Colors.black.withOpacity(.6)),) , ),
              active == 1 ? Container(
                height: 2,
                width: 30,
                color: Colors.grey[600],
              ) : Text('')
            ],
          ),
          Column(
            children: [
              FlatButton(onPressed: (){
                setState(() {
                  active = 2;
                });
              }, child: Text('POSTS' , style: TextStyle(color:active == 2 ? Colors.grey: Colors.black.withOpacity(.6)),) , ),
              active == 2 ? Container(
                height: 2,
                width: 30,
                color: Colors.grey[600],
              ) : Text('')
            ],
          ),
          Column(
            children: [
              FlatButton(onPressed: (){
                setState(() {
                  active = 3;
                });
              }, child: Text('FRIENDS' , style: TextStyle(color:active == 3 ? Colors.grey: Colors.black.withOpacity(.6)),) , ),
              active == 3 ? Container(
                height: 2,
                width: 30,
                color: Colors.grey[600],
              ) : Text('')
            ],
          ),
        ],
      ),
    );
  }
  Widget _bodyProfile(){
    return Expanded(child: Container(

      child: GridView.builder( gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: .92),itemCount: _profile.bg.length,itemBuilder: (context , index)=>Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(_profile.bg[index]),
            fit: BoxFit.cover
          )
        ),
      )),
    ));
  }
}

