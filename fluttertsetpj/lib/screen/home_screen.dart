import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:Container(
            width: double.infinity,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      if(color == Colors.blue){
                        color = Colors.red;
                      }
                      else{
                        color = Colors.blue;
                      }
                      setState(() {

                      });
                      print("색상변경 $color");
                    },
                    child: Text("색상변경")
                ),
                SizedBox(height: 32,),
                Container(
                    height: 50,
                    width: 50,
                    color: color
                )

              ],
            )
        )
    );
  }
}


class HomeScreen2 extends StatelessWidget{
Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        width: double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  if(color == Colors.blue){
                    color = Colors.red;
                  }
                  else{
                    color = Colors.blue;
                  }
                  print("색상변경 $color");
                },
                child: Text("색상변경")
            ),
            SizedBox(height: 32,),
            Container(
              height: 50,
              width: 50,
              color: color
            )

          ],
        )
      )
    );
  }
}

