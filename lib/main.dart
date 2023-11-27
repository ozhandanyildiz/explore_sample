import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                    ],
                  )),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget NearLocations() => Container(
          child: Column(
        children: [
          TitleItem("Near you", "View all"),
        ],
      ));

  Widget TopLocations() => Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleItem("Top Locations", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/images/necatisler.jpg", "Nejat İ."),
                StoryItem("assets/images/fenerbahce.png", "Fenerbahçe"),
                StoryItem("assets/images/comarkarabasogullari.jpg", "Çomar K."),
                StoryItem("assets/images/mcqueen.jpg", "L.Mcqueen"),
                StoryItem("assets/images/necatisler.jpg", "Nejat İ."),
                StoryItem("assets/images/fenerbahce.png", "Fenerbahçe"),
                StoryItem("assets/images/comarkarabasogullari.jpg", "Çomar K."),
                StoryItem("assets/images/mcqueen.jpg", "L.Mcqueen"),
                StoryItem("assets/images/necatisler.jpg", "Nejat İ."),
                StoryItem("assets/images/fenerbahce.png", "Fenerbahçe"),
                StoryItem("assets/images/comarkarabasogullari.jpg", "Çomar K."),
                StoryItem("assets/images/mcqueen.jpg", "L.Mcqueen"),
                StoryItem("assets/images/necatisler.jpg", "Nejat İ."),
                StoryItem("assets/images/fenerbahce.png", "Fenerbahçe"),
                StoryItem("assets/images/comarkarabasogullari.jpg", "Çomar K."),
                StoryItem("assets/images/mcqueen.jpg", "L.Mcqueen"),
              ],
            ),
          ),
        ],
      ));

  Widget SearchBox() => Container();
  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 156, 101),
                Color.fromARGB(255, 233, 92, 70)
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String links) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            links,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome,Ozhan",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Explore Istanbul City",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.sunny,
                        color: Color.fromRGBO(236, 125, 87, 1),
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.notifications,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  Widget BottomMenu() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
          color: const Color.fromARGB(255, 243, 243, 243),
          width: 1,
        )),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighlightedItem("Book", Icons.maps_ugc),
            BottomMenuItem("Chat", Icons.forum, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          ),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          ),
        ],
      ),
    );
  }
}
