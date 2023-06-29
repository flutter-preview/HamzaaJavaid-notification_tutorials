import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/signup.jpg",height: MediaQuery.of(context).size.height/3,),
            SizedBox(),
            Padding(
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 2),
              child: TextField(
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
            ),
            Padding(
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
            ),
            Padding(
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
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 27),
             child: Row(
               children: [
                 Checkbox(value: false, onChanged: (value){}),
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
