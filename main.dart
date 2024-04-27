//import 'package:disha/avtar.dart';
//import 'package:disha/splash/map_page.dart';
//import 'package:disha/avtar.dart';
//import 'package:disha/call_in.dart';
import 'package:disha/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Merienda",
      elevatedButtonTheme:ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange,),
          foregroundColor: MaterialStateProperty.all<Color>(Color(0xfffffff),),
          ),
        ),
        primarySwatch:Colors.blue,
    ),
        //home:CallInFlutter(),
        //home: Splash(),
        home: const MyHomePage(title:'Welcome'),
      );
      

      
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text('DISHA'),
      ),
      body: Center(
        
        child:Container(
          height:600,
          width:400,
        
       child: Column(
        children:[
          Text('DISHA',style:TextStyle(color:Colors.pinkAccent,fontWeight:FontWeight.bold,fontSize:35,
        shadows:[
          Shadow(
            color:Colors.pinkAccent,blurRadius:3.0
          ),
        ],
         ),
        ),
        Text('Know Safety,No Trouble',style:TextStyle(color: Colors.pinkAccent,fontSize:30,fontStyle:FontStyle.italic)),
         ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Splash(),
            ));
          },child:Text('click here',style:TextStyle(color: Colors.black)),
          )   ],
       
          
          
           ),
           
        ),
        
       ),
      );
  }
}
