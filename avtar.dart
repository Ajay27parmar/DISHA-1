import 'package:disha/call_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Avtar extends StatefulWidget {
  const Avtar({super.key});

  @override
  State<Avtar> createState() => _AvtarState();
}

class _AvtarState extends State<Avtar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Enter your Destination::'),
      ),
      body:Center(
        child:Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
            child:Column(
            children: [
              Container(
                margin:EdgeInsets.only(bottom:10),
                height:150,
                width:150,
                color:Color.fromARGB(255, 242, 124, 73),
               child: Text('Crime Rate',textAlign:TextAlign.center,style:TextStyle(color: Colors.black,fontSize:20, 
               fontWeight:FontWeight.w400)
              ),
              ),
               Container(
                margin:EdgeInsets.only(bottom:10),
                height:150,
                width:150,
                color:Color.fromARGB(255, 242, 124, 73),
               child: Text('Police Station',style:TextStyle(color: Colors.black,fontSize:20, fontWeight:FontWeight.w400)
              ),
              ),
               Container(
                margin:EdgeInsets.only(bottom:10),
                height:150,
                width:150,
                color:Color.fromARGB(255, 242, 124, 73),
               child: Text('Petrol Pump',style:TextStyle(color: Colors.black,fontSize:20, fontWeight:FontWeight.w400)
              ),
              ),
              Container(
                margin:EdgeInsets.only(bottom:10),
                height:150,
                width:150,
                color:Color.fromARGB(255, 242, 124, 73),
               child: Text('Charging Stations',style:TextStyle(color: Colors.black,fontSize:20, fontWeight:FontWeight.w400)
              ),
              ),
              Container(
                margin:EdgeInsets.only(bottom:10),
                height:150,
                width:150,
                color:Color.fromARGB(255, 242, 124, 73),
               child: Text('Automated Teller Machine(ATM)',style:TextStyle(color: Colors.black,fontSize:20, fontWeight:FontWeight.w400)
              ),
              ),
              ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => CallInFlutter(),
            ));
          },child:Text('click here',style:TextStyle(color: Colors.black)),
          )   ],

            ),)
    )
      )
    );
  
  }
}