import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Classic Cars"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white60,
              Color.fromARGB(255, 104, 101, 101),
              Colors.black12
            ])),
            child: Column(
              children: [ Container(
                  child: Text(
                    "Special Classic",
                    style: TextStyle(fontSize: 50,height: 2),
                  ),
                ),

                SizedBox(height:30,),
                Container(
                    child: Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.ZrmcwvOoQndJoSKrr8ZiXQHaEK?pid=ImgDet&rs=1"),
                )),

                 



                SizedBox(
                  height: 70,
                ),

                // fished heder image------------------
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image(
                                width: 300,
                                height: 200,
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/R.c8cabf67023fb0808314af084d43d056?rik=B7Pu2VPPCKHcmg&pid=ImgRaw&r=0")),

                            // bottun1row------------

                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () => print("sold"),
                                    child: Text("Buy")),
                                Text("   "),
                                ElevatedButton(
                                    onPressed: () => print("give me 10,000JD"),
                                    child: Text("for sell"))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(
                                alignment: Alignment.bottomCenter,
                                width: 300,
                                height: 200,
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/R.2ea2248ea0e4bd0162f513cc4325ad34?rik=XPoo3BX9PO4U8g&pid=ImgRaw&r=0")),

                            // bottun2row------------

                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () => print("sold"),
                                    child: Text("Buy")),
                                Text("   "),
                                ElevatedButton(
                                    onPressed: () => print("give me 10,000JD"),
                                    child: Text("for sell"))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
