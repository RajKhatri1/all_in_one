import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.more_vert),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search your Choice",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'food');
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/food.jpeg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("Food",style: TextStyle(fontSize: 20)),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ecom');
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/ecom.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("E-commerce",style: TextStyle(fontSize: 20)),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'ott');
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/ott.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("OTT platform",style: TextStyle(fontSize: 20)),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'edu');
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/edu.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("Education",style: TextStyle(fontSize: 20)),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'music');
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("assets/images/music.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("Music",style: TextStyle(fontSize: 20,letterSpacing: 1)),
                    Expanded(child: SizedBox()),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
