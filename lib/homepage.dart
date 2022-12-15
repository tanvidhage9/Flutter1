import 'dart:html';
import 'dart:math';

import 'package:application_2/chat.dart';
import 'package:application_2/explore.dart';
import 'package:application_2/home.dart';
import 'package:application_2/main.dart';
import 'package:application_2/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      // child: Column(children: [
      //   Expanded(
      //     child: Image.network(
      //         'https://static.vecteezy.com/system/resources/previews/012/046/701/original/office-workers-
      // teamwork-illustration-png.png'),
      //   ),
      // ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var city_name = [
    //   "Pune",
    //   "Mumbai",
    //   "Hyderabad",
    //   "Bangalore",
    //   "Delhi",
    //   "Indore",
    //   "Chennai",
    //   "Kolkata"
    // ];
    // final _random = new Random();
    // var city = city_name[_random.nextInt(city_name.length)];

    List<String> imagesList = [
      "https://images.unsplash.com/photo-1665686374221-1901faa9f3ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      'https://media.istockphoto.com/id/1334472503/photo/indian-ceo-mentor-leader-talking-to-female-trainee-using-laptop-at-meeting.jpg?b=1&s=170667a&w=0&k=20&c=jQW3bZmjTOMHJUIdtS08GdL7L36YeR5IAT-fTAcls_Y=',
      'https://media.istockphoto.com/id/1369199360/photo/portrait-of-a-handsome-young-businessman-working-in-office.jpg?b=1&s=170667a&w=0&k=20&c=9cS9Dj2jKbJGqfI0X0U-jZNURFc-foLzDm1Ls-Q_fgo=',
      'https://plus.unsplash.com/premium_photo-1661284913865-c015e15afd82?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RhcnQlMjB1cHxlbnwwfHwwfHw%3D&w=1000&q=80',
      'https://media.istockphoto.com/id/1199216653/photo/all-african-casual-business-meeting-candid-real-happy-moment-between-four-work-colleagues.jpg?b=1&s=170667a&w=0&k=20&c=8Q_2T4yj6IrzB5yhbi0cp9hdV3_TeHaX92eahhpw94c='
    ];

    return Scaffold(
      //body: _children[_currentIndex],
      bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          color: Colors.blue,
          activeColor: Colors.blueGrey,
          tabBackgroundColor: Color.fromARGB(255, 12, 13, 15),
          gap: 8,
          //   body: SizedBox.expand(
          //   child: PageView(
          //     controller: _pageController,
          //   ),
          // )
          onTabChange: (index) {
            selectedIndex:
            _currentIndex;
            setState(() {
              _pageController.jumpToPage(index);
            });
            // print(index);
            // currentIndex:
            // _currentIndex;
          },
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.explore,
              text: 'Explore',
            ),
            GButton(
              icon: Icons.chat,
              text: 'Chat',
            ),
          ]),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Simple Home Screen"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              Container(
                //child: Image.asset('assets/images/img2.jpg'),
                child: SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 308),
                        child: Text(
                          'Lorem Ipsum',
                          textDirection: TextDirection.ltr,
                          //textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 0.1),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                                'https://static.vecteezy.com/system/resources/thumbnails/002/911/120/small/many-people-in-the-company-design-illustrations-vector.jpg'),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 350, top: 5),
                        child: Text(
                          'Featured',
                          textDirection: TextDirection.ltr,
                          //textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("Search me");
                              },
                              child: Container(
                                child: Icon(Icons.search),
                                margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                              ),
                            ),
                            //Text("Search"),

                            Expanded(
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search")),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: imagesList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                      image: NetworkImage(imagesList[index]),
                                      fit: BoxFit.cover)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(child: Text('This is Explore Page')),
                //color: Colors.blueGrey,
              ),
              Container(
                child: Center(child: Text('This is Chat Page')),
                //color: Colors.orangeAccent,
              ),
            ],
          ),
        ),
      ),

      drawer: MyDrawer(),
    );
  }
}
