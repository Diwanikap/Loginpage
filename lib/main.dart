import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
      title: 'Flutter Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
    ),

     home: MyHomePage(title:'Flutter Login'),
      );

  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key? key ,required this.title}):super(key: key);
  final String title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  TextStyle style = const TextStyle(fontFamily: 'MochiyPopPOne',fontSize: 20.0);

  @override
  Widget build(BuildContext context){
    final emailfeild = TextField(
      obscureText:false,
      style:style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordfield = TextField(
      obscureText:true,
      style:style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0,15.0),
        onPressed: (){},
        child: Text("Login",
        textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
   return Scaffold(
     body: SingleChildScrollView(
       child:Center(
         child: Container(
           color: Colors.white,
           child: Padding(
             padding: const EdgeInsets.all(36.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children:<Widget>[
                 SizedBox(
                   height: 155.0,
                   child:Image.asset("assets/index.jpg",
                   fit: BoxFit.contain,
                   ),
                 ),
                 SizedBox(
                   height: 45.0),
                 emailfeild,
                 SizedBox(
                     height: 25.0),
                 passwordfield,
                 SizedBox(
                     height: 35.0),
                 loginBtn,
                 SizedBox(
                     height: 15.0),
               ],
             ),
           ),
         ),
       ),
     ),
   );
  }

}

