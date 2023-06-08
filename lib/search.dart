import 'package:flutter/material.dart';
import 'package:music/widget.dart';

class searchpage extends StatefulWidget {
  @override
  _searchpageState createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF352440),
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17, right: 215),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.chevron_left_outlined,
                              color: Colors.white70, size: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 10),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.favorite_border,
                              color: Colors.white38, size: 25),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 3, top: 25, bottom: 20),
                      child: Text('Recent favourites',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 25))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      lists().music_types(
                        images: 'music/image/4.jpg',
                        title1: 'Bright Hits',
                        title2: '''The most Popular 
        and striking music news''',
                      ),
                      lists().music_types(
                        images: 'music/image/5.jpg',
                        title1: 'Millions',
                        title2: 'Alwayes never',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      lists().music_types(
                        images: 'music/image/1.jpg',
                        title1: 'Millions',
                        title2: 'Alwayes never',
                      ),
                      lists().music_types(
                        images: 'music/image/9.jpg',
                        title1: 'Family Tourism',
                        title2: 'Alwayes never',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      lists().music_types(
                        images: 'music/image/3.jpg',
                        title1: 'Bright Hits',
                        title2: 'The most Popular ',
                      ),
                      lists().music_types(
                        images: 'music/image/7.jpg',
                        title1: 'Millions',
                        title2: 'Alwayes never',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
