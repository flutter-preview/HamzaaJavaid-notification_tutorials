import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notification_app/State%20Managment/Account%20Create%20Provider.dart';
import 'package:notification_app/State%20Managment/Login%20Provider.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    final username_provideer = Provider.of<username_provider>(context , listen: false);
    final email_provideer = Provider.of<signup_email_provider>(context , listen: false);
    final password_provideer = Provider.of<signup_password_provider>(context,listen: false);
    final confirmpassword_provideer  = Provider.of<confirmpassword_provider>(context,listen: false);
    final checkboxProvideer = Provider.of<checkboxProvider>(context, listen: false);

    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/signup.jpg",height: MediaQuery.of(context).size.height/3,),
            SizedBox(),
            Consumer<username_provider>(builder: (context , value ,child){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Your Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      )

                  ),

                ),
              );
            }),
            Consumer<signup_email_provider>(builder: (context,value , child){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
                child: TextField(
                  onChanged: (value){

                  },
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      )

                  ),

                ),
              );
            }),
           Consumer<signup_password_provider>(builder: (context,value , child){
             return  Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: TextField(
                 decoration: InputDecoration(
                     labelText: "Password",
                     hintText: "Enter Your Password",
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       borderSide: BorderSide(color: Colors.transparent),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                       borderSide: BorderSide(color: Colors.orangeAccent),
                     )

                 ),

               ),
             );
           },),
          Consumer<confirmpassword_provider>(builder: (context,value , child){
            return   Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confimr password",
                    hintText: "Confirm Your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.orangeAccent),
                    )

                ),

              ),
            );
          }),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 27),
             child: Row(
               children: [
                Consumer<checkboxProvider>(builder: (context, value , child){
                  return  Checkbox(value: false, onChanged: (value){

                  });
                }),
                 Text("Do You agree with Policies , Agrement & Licenses ",style: TextStyle(color: Colors.red),)
               ],
             ),
           ),
          SizedBox(),SizedBox(),SizedBox(),
          Padding(padding: EdgeInsets.symmetric(horizontal: 26),
          child: MaterialButton(
            onPressed: (){},
            color: Colors.greenAccent,
            child: Text('Sign Up',style: TextStyle(
              color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold
            ),),
            shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            minWidth: double.infinity,
            height: MediaQuery.of(context).size.height/14,
          ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(
                  children: [
                    Container(

                      width: MediaQuery.of(context).size.width/10,
                      height: MediaQuery.of(context).size.height/24,
                      child: Center(child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 5,
                              offset: Offset(2,2),
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 14,),
                    Container(

                      width: MediaQuery.of(context).size.width/10,
                      height: MediaQuery.of(context).size.height/24,
                      child: Center(child: FaIcon(FontAwesomeIcons.google , color: Colors.redAccent.withOpacity(0.5),),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 5,
                              offset: Offset(2,2),
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 14,),
                    Container(

                      width: MediaQuery.of(context).size.width/10,
                      height: MediaQuery.of(context).size.height/24,
                      child: Center(child: FaIcon(FontAwesomeIcons.github),),

                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 5,
                              offset: Offset(2,2),
                            )
                          ]
                      ),
                    ),
                  ],
                ),
                SizedBox(),
              ],
            ),
            SizedBox(),SizedBox(),SizedBox(),
            SizedBox(),SizedBox(),SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(
                  children: [
                    Text('Already have Account :'),
                    TextButton(onPressed: (){},
                        child: Text('Log In')

                    ),
                  ],
                ),
                SizedBox(),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
