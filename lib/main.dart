import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Color> colors = [Color(0xFFFB9245),Color(0xFFF54E6B)];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        top: false,
        bottom: false,
        left: false,
        right: false,

        child: 
        Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)),

          child: Center(
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                
                Image.asset('img/icon.png',width: 220,),

                Tabs(context),

                AnimatedCrossFade(

                  duration: Duration(milliseconds: 150),
                  firstChild: Login(context),
                  secondChild: SignUp(context),
                  crossFadeState: _index == 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                )

              ],),
            ),
          ),
        ),
      )
    );
  }

  
  Widget Login(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30.0,left: 15,right: 15),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomCenter,
            children:<Widget>[
               Container(
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,left: 15,right: 15,bottom: 20),
                child: Column(children: <Widget>[

                  TextField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.grey,),
                    labelText: "Enter Your Email",
                    labelStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))

                  ),),

                  Divider(color: Colors.grey,height: 8),

                  TextField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))

                  ),),

                  Divider(color: Colors.transparent,height: 20,)
                ],),
              ),
            ),
            
            Positioned(
              top: 140,
              child: Center(
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: colors,),
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:12.0),
                      child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                    ),
                  ),
                ),
              ),
            ),
            
            ]
          ),
        
        Padding(
          padding: const EdgeInsets.only(top:45.0),
          child: GestureDetector(
            child: Center(child: Text("Forget Password?",style: TextStyle(color: Colors.white,fontSize: 16),)),

            onTap: (){},
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

            Container(width: 55,height: 1,color: Colors.white,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: Text("Or",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ),

            Container(width: 55,height: 1,color: Colors.white,),
            
          ],),
        ),
        

        Padding(
          padding: const EdgeInsets.only(top:25.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                shape: BoxShape.circle),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('img/google.png'),
                ),
              ),

              onTap: (){},
            ),

            Container(width: 55,),

            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                shape: BoxShape.circle),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('img/fb.png'),
                ),
              ),

              onTap: (){},
            ),
          ],),
        ),
        ],
      ),
    );
  }


  Widget SignUp(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30.0,left: 15,right: 15),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomCenter,
            children:<Widget>[
               Container(
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:10.0,left: 15,right: 15,bottom: 20),
                child: Column(children: <Widget>[

                  TextField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.grey,),
                    labelText: "Enter Your Email",
                    labelStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))

                  ),),

                  Divider(color: Colors.grey,height: 8),

                  TextField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))

                  ),),

                  Divider(color: Colors.grey,height: 8),

                  TextField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    labelText: "Re - Enter",
                    labelStyle: TextStyle(color: Colors.black87),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent))

                  ),),

                  Divider(color: Colors.transparent,height: 20,)
                ],),
              ),
            ),
            
            Positioned(
              top: 210,
              child: Center(
                child: GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(gradient: LinearGradient(colors: colors,),
                    borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:12.0),
                      child: Center(child: Text("SIGNUP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                    ),
                  ),
                ),
              ),
            ),
            
            ]
          ),
        

        Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

            Container(width: 55,height: 1,color: Colors.white,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: Text("Or",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
            ),

            Container(width: 55,height: 1,color: Colors.white,),
            
          ],),
        ),
        

        Padding(
          padding: const EdgeInsets.only(top:25.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                shape: BoxShape.circle),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('img/google.png'),
                ),
              ),

              onTap: (){},
            ),

            Container(width: 55,),

            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                shape: BoxShape.circle),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('img/fb.png'),
                ),
              ),

              onTap: (){},
            ),
          ],),
        ),
        ],
      ),
    );
  }

  Widget Tabs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:30.0,left: 15,right: 15),
      child: Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.12),
        borderRadius: BorderRadius.circular(25),
        ),
        child:
        Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[

          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: _index == 0 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Existing",style: TextStyle(color: _index == 0 ? Colors.black : Colors.white,fontSize: 18,fontWeight: _index == 0 ? FontWeight.bold : FontWeight.normal),),
                ))
                ),
                onTap: (){

                  setState(() {
                    _index = 0;
                  });
                },
            ),
          ),

          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: _index == 1 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("New",style: TextStyle(color: _index == 1 ? Colors.black : Colors.white,fontSize: 18,fontWeight:  _index == 1 ? FontWeight.bold : FontWeight.normal),),
                ))),
                
                onTap: (){

                  setState(() {
                    _index = 1;
                  });
                },
            ),
          )
        ],)
      ),
    );
  }
}