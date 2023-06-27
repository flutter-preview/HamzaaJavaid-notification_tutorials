import 'package:flutter/material.dart';
import 'package:notification_app/State Managment//Login%20Provider.dart';
import 'package:provider/provider.dart';



class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    print('Build is called');
    final email_provideer = Provider.of<email_provider>(context,listen: false);
    final password_provideer = Provider.of<password_provider>(context , listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/12,),
         Center(
           child: Image.asset(
             "assets/images/auth.jpg",
             height: MediaQuery.of(context).size.height/3,


           ),


         ),
          SizedBox(height: MediaQuery.of(context).size.height/16,),
         Padding(padding: EdgeInsets.symmetric(horizontal: 40,),
           child:Row(children: [
             Text('Email',style: TextStyle(
               fontSize: 23,
               fontWeight: FontWeight.bold,
             ),),
           ],)
           ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child: Consumer<email_provider>(
              builder: (context,value,child){
                return TextField(
                  onChanged: (value){
                    email_provideer.set_email_value(value);
                  },
                  decoration: InputDecoration(
                    hintText: "${email_provideer.get_email_value}",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.pink,width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.orange,width: 1),
                    ),
                  ),

                );
              },
            )
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 40,),
            child:Row(children: [
              Text('Password',style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),),
            ],)
            ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
            child: Consumer<password_provider>(
              builder: (context , value ,  child){
                return TextField(
                  onChanged: (value){
                    password_provideer.set_passsword_value(value);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "${password_provideer.get_password_value}",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.pink,width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.orange,width: 1),
                    ),
                  ),

                );
              },
            )
          ),



        ]
      ),

    )
    ;
  }
}
