import 'package:disha/avtar.dart';
import 'package:disha/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Gender:'),
      ),
      body:Center(
        
        child:Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
           
                   children:[
              
            
          Container(margin:EdgeInsets.only(bottom:10),
                  height:150,
                  width:150,
          child:CircleAvatar(
          child: Text('Male'),
                backgroundImage: AssetImage('assets/images/avatar1.jpg.jpeg'),
                ),
          ),
          Container(
             margin:EdgeInsets.only(bottom:10),
                  height:150,
                  width:150,
                child: CircleAvatar(
           child: Text('Female'),
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
                 ),
          ),
          Container(margin:EdgeInsets.only(bottom:10),
                  height:150,
                  width:150,
                 child:CircleAvatar(
           child: Text('Transgender'),
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
                 ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Avtar(),
            ));
          },child:Text('click here',style:TextStyle(color: Colors.black)),
          )   ],
                 ),
        ),
      )
      );
    
  }
}