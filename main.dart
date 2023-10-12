import 'package:animationcapacity/splashscreen.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, colorScheme:
      ColorScheme.fromSeed(seedColor: Colors.cyan.shade400)
          .copyWith(background: Colors.white),
      ),

      home: splashscreen(),
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
  int Myvalue = 0;
  List<String>listimages=[
    "assets/deal.jpg",
    "assets/deal2.jpg",
    "assets/deal3.jpg",
    "assets/deal4.jpg",
    "assets/deal5.jpg",
    "assets/deal6.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(preferredSize:  Size.square(50), child:Container(
        height: 120,
        width: double.infinity,
        color: Colors.cyanAccent,
        padding: EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(

             color: Colors.cyanAccent),
          margin: EdgeInsets.only(left: 30,top: 25,bottom: 4),
          width: double.infinity,

          child: Container(

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),color: Colors.cyanAccent),
            width: double.infinity,
            child: SearchBar(
              leading: Icon(Icons.search),
              trailing: Iterable.generate(1, (index) {
                return Icon(Icons.qr_code);
              }),
              hintText: "Search Amazon.in",
              shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
              elevation: MaterialStatePropertyAll(1),
            ),
          ),
        ),
      ) ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
          selectedItemColor: Colors.blue,
          iconSize: 29,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          elevation: 100,
          onTap: (value) {
            Myvalue = value;
            setState(() {});
          },
          currentIndex: Myvalue,
          items: const [
            BottomNavigationBarItem(
              icon: (Icon(
                Icons.home_outlined,
              )),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.person_2_outlined)),
              label: "You",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.more_time_outlined)),
              label: "More",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.shopping_cart_outlined)),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: (Icon(Icons.menu)),
              label: "Menu",
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.cyan.shade200,
              height: 10,
              width: double.infinity,
            ),
            Container(
              height: 40,
              color: Colors.cyan.shade200,
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.location_on_outlined),
                Text("  Select a location to see product availability ⌄")
              ]),
            ),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.yellowAccent.shade100,
                Colors.yellowAccent.shade100,
                Colors.yellowAccent.shade700,
                Colors.yellow.shade900
              ])),
              child: Container(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 28),
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(listimages[index])
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                ),
              ),
            ),
            Container(
              height: 270,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 450,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/fest.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/laptop.jpg"),
                              fit: BoxFit.cover)),
                      width: 420,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 170,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [   Colors.yellowAccent.shade100,
                        Colors.yellowAccent.shade200,
                        Colors.yellowAccent.shade400,
                        Colors.yellow.shade600])),
                      width: 150,
                     alignment: Alignment.center,
                     padding: EdgeInsets.only(left:
                     5,right: 5),
                     child: Wrap(
                       crossAxisAlignment: WrapCrossAlignment.center,
                         alignment: WrapAlignment.center,

                         runSpacing: 18
                         ,spacing: 20,
                         children: [
                     Container(
                       child: CircleAvatar(radius: 28,
                       backgroundImage: AssetImage("assets/amazon.png"),backgroundColor: Colors.orangeAccent.shade100),
                       decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.brown.shade200),borderRadius: BorderRadius.circular(100)),
                     ),
                           Container(
                             child: CircleAvatar(radius: 28,
                                 backgroundImage: AssetImage("assets/cash.png")),
                             decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.brown.shade200),borderRadius: BorderRadius.circular(100)),
                           ),
                           Container(
                             child: CircleAvatar(radius: 28,
                                 backgroundImage: AssetImage("assets/tv.png")),
                             decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.brown.shade200),borderRadius: BorderRadius.circular(100)),
                           ),
                           Container(
                             child: CircleAvatar(radius: 28,
                                 backgroundImage: AssetImage("assets/rap.png")),
                             decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.brown.shade200),borderRadius: BorderRadius.circular(100)),
                           ),
                     ])
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal10.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal2.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal3.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal4.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal5.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal6.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration:
                      BoxDecoration(image: DecorationImage(
                          image: AssetImage("assets/deal7.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                     decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal8.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal9.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal11.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal12.jpg"),fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 11,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  Container(
                    height: 170,
                    width: 185,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal.jpg"),fit: BoxFit.fitHeight
                    )),
                  ),
                  Container(
                    height: 170,
                    width: 185,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/sneakers.jpg"),fit: BoxFit.fill)),



                  ),
                  Container(
                    height: 170,
                    width: 185,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal2.jpg"),fit: BoxFit.cover)),

                  ),
                  Container(
                    height: 170,
                    width: 185,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/deal3.jpg"),fit: BoxFit.cover)),

                  )
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
