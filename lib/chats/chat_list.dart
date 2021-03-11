import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/chats/data.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  List<Conversion> _conversions = ProviderMessage.getMessage();
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily
      ),
      child: Stack(
        children: [
          Container(color: Colors.white,),
          CustomPaint(
            painter: ChartBackground(),
            child: Container(),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('Messages'.toUpperCase() , style: TextStyle(fontWeight: FontWeight.bold),),
              centerTitle: true,
              elevation: 0,
              leading: IconButton(icon: Icon(Icons.arrow_back_ios , color: Colors.white,), onPressed: (){}),
              bottom: TabBar(
                unselectedLabelColor: Color(0xfff76aa4),
                controller: _tabController,
                tabs: [
                  Tab(text: 'Inbox',),
                  Tab(text: 'Groups',),
                  Tab(text: 'Online',),
                  Tab(text: 'History',),

                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                Container(),
                Container(),
                Container(),
                Container(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChartBackground extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
 Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * .8);
 Gradient gradient = LinearGradient(
   colors: [
     Color(0xffef1370),
     Color(0xfff84f70),
     Color(0xfff63d76),
     Color(0xfff84f70),

   ] ,
   stops: [
     0.2,
     0.4,
     0.6,
     0.8
   ]
 );
    Paint paint = Paint();
    Path path = Path();
   // paint.shader = gradient.createShader(rect);
    paint.color = Color(0xfff84f70);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height *.3);
    path.quadraticBezierTo(size.width/2, size.height*.80,0, size.height *.3);
    path.lineTo(0, size.height * .3);
    path.close();
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }



}
