import 'package:disha/splash/map_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class CallInFlutter extends StatefulWidget {
  const CallInFlutter({super.key});

  @override
  State<CallInFlutter> createState() => _CallInFlutterState();
}

class _CallInFlutterState extends State<CallInFlutter> {
  Uri dialnumber=Uri(scheme: 'tel',path: '1234567890');
  callnumber()async{
    await launchUrl(dialnumber);
  }
  directCall()async{
    await FlutterPhoneDirectCaller.callNumber('1234567890');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:Text('Call in App'), 
      ),
      body: Center(
        child: Column(
        children:[ElevatedButton.icon(
          onPressed: directCall,
          icon: Icon(Icons.call),
          label:Text('Call')
           
           ),
             ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => MapPage(),
            ));
          },child:Text('click here',style:TextStyle(color: Colors.black)),
          )   ],
      
        )
        ),
      );
  }
}