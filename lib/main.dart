import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'home.dart';


main(){
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
    home:
    AnimatedSplashScreen(
        splash:Column(children: [
                  Text('Sea Cloud',

                    style: TextStyle(color: Colors.white,
                     fontWeight: FontWeight.bold,
                            fontSize:60),
                  ),
        ]
        ),
        splashTransition: SplashTransition.decoratedBoxTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.deepPurple,
        nextScreen: LoginScreen()),
  ));
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool hide = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child:  Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 450),
              width: double.infinity,
              height:450 ,
              decoration: BoxDecoration(
                  color: Colors.white,
              image: DecorationImage(
                image:NetworkImage("https://media.istockphoto.com/id/1358691778/photo/finance-business-investment-data-analytics-strategy-report-crypto-currency-blockchain-stock.jpg?s=612x612&w=0&k=20&c=IqvJGGj1qu4zARmhaEBvISEtRc57ncuzY4SWNSrAsic="),
                  fit: BoxFit.cover
              ),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(100)

                  ),
              ),
            ),
            Container(

              padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
              margin: EdgeInsets.only(top: 200,left: 50,right: 50),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius:BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.1,
                        blurRadius: 10
                    ),
                  ]
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "  Wallet Name ",
                        prefixIcon: Icon(Icons.wallet_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: " Wallet ID ",
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              hide = !hide;
                            });
                            },
                          icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility),
                        ),
                        prefixIcon: Icon(Icons.lock_open_rounded,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){},child: Text("Forget ?")
                    ),
                  ),
                  ElevatedButton(
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple[500],
                      padding: EdgeInsets.symmetric(horizontal: 100),
                    ),
                    onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TeamFolderPage ()),
                        );
                      },

                      child: Text("Enter",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize:20),
                      ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a Wallet Account "),
                      TextButton(onPressed: (){}, child: Text("Wallet ? "))
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                top: 70,
                left:55,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("Sea  Cloud " ,
                       style: TextStyle(

                           color: Colors.white,

                           fontWeight: FontWeight.bold,

                           fontSize: 50
                       )
                   ),

                    Text("Access to your Account " ,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20
                        )
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}