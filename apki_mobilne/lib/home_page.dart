import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/neon_car.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 200,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: const Center(
                child: Text(
                  'DISCOVER OUR WORLD.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: const Center(
                child: Text(
                  'Share your moments, meet inspiring creators and share your passion.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/einstein.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 200,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: const Center(
                child: Text(
                  "FIND YOUR PLACE IN THE WORLD OF PHOTOGRAPHY.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: const Center(
                child: Text(
                  'Our app will allow you to share your story, find inspiring content and connect with other photography enthusiasts.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/boat.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 200,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: const Center(
                child: Text(
                  "CREATE YOUR VIRTUAL GALLERY FULL OF UNFORGETABLE MOMENTS.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: const Center(
                child: Text(
                  'With our application, you will discover unique content, communicate with artists and inspire others with your passions.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/warrior.jpg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 200,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: const Center(
                child: Text(
                  "IMMERSE YOURSELF INTO AMAZING WORLD OF VISUAL STORY TELLING.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: const Center(
                child: Text(
                  'Our application will allow you to explore beautiful photos, find inspiration and share your own creations with others..',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/plane.webp',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
