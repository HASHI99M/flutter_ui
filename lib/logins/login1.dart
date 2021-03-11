import 'package:flutter/material.dart';
import 'package:flutter_ui/logins/login2.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(color: Color(0xff1e272e),),
        Positioned(
          top: screenHeight * .4,
          bottom: 0,
          right: 0,
          left: 0,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Welcome back!' , style: TextStyle(color:Colors.white , fontSize: 28 , fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Sign in to your account!' , style: TextStyle(color:Colors.white.withOpacity(.4) , fontSize: 16 ,),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: screenWidth,
                  height: screenHeight * .30,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 20),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30 ),
                            child: Text('Forget Password?' , style: TextStyle(color: Color(0xffc79625)),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
                            },
                            child: Container(
                              child: Row(children: [Text('LOGIN' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),Icon(Icons.arrow_forward , color: Colors.white,)],) ,
                              padding: EdgeInsets.symmetric(horizontal: 60 , vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xffc79625),
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25) , bottomLeft:Radius.circular(25) , topLeft:Radius.circular(25) ),
                              ),
                            ),
                          )

                        ],
                      ),

                    ],
                  ),
                ),
                Align(alignment: Alignment.center,child: Text('Don\'t have an account ? Create One ' ,style: TextStyle(decoration: TextDecoration.underline , color: Colors.white , fontSize: 16),))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
