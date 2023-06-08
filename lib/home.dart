import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:music/widget.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool _like = false;
  bool _like1 = false;
  bool _like2 = false;
  bool isplaying = false;
  bool isplaying1 = false;
  bool isplaying2 = false;
  bool audioplayed = false;
  bool audioplayed1 = false;
  bool audioplayed2 = false;
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [
                    Color(0xFF352448).withOpacity(0.9),
                    Color(0xFF22223d),
                  ],
                ),
              ), // your body content.
            ),
            const SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    end: Alignment.topRight,
                    colors: [
                      Colors.white38.withOpacity(0.1),
                      Colors.white38.withOpacity(0.1),
                    ],
                  ),
                ),
                child: const Icon(Icons.menu, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 68, top: 10, right: 10),
              child: Container(
                height: 50,
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    end: Alignment.topRight,
                    colors: [
                      Colors.white38.withOpacity(0.1),
                      Colors.white38.withOpacity(0.1),
                    ],
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    prefixIcon: Icon(Icons.search, color: Colors.white24),
                    hintText: "Search",
                    fillColor: Colors.grey,
                    // focusColor:s Colors.green,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 17, top: 75),
              child: Text('Trending right now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 235, right: 15),
              child: ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Row(
                  children: [
                    Container(
                      height: 230,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: LinearGradient(
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF001243).withOpacity(0.4),
                            Color(0xFF001243).withOpacity(0.4),
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 230,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: const DecorationImage(
                                    image: AssetImage('music/image/8.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 210, top: 20),
                            child: Icon(Icons.keyboard_control,
                                size: 35, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 15),
                            child: Container(
                              height: 80,
                              width: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  colors: [
                                    Color(0xff1b3d5f).withOpacity(0.8),
                                    Color(0xff1b3d5f).withOpacity(0.8)
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      const Text(
                                        'Baby ft.Ludacr',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.music_note,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text(
                                              'Badshah',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 40),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      icon: Icon(
                                        isplaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {
                                        String audioasset =
                                            "music/BOLO_HAR_HAR_HAR__Video_Song____SHIVAAY_Title_Song____Ajay_Devgn____Mithoon_Badshah___T-Series(256k).mp3";
                                        ByteData bytes =
                                            await rootBundle.load(audioasset);
                                        Uint8List soundbytes = bytes.buffer
                                            .asUint8List(bytes.offsetInBytes,
                                                bytes.lengthInBytes);
                                        if (!isplaying && !audioplayed) {
                                          int result = await audioPlayer
                                              .playBytes(soundbytes);
                                          if (result == 1) {
                                            setState(() {
                                              isplaying = true;
                                              audioplayed = true;
                                            });
                                          } else {
                                            print("Error while playing audio.");
                                          }
                                        } else if (audioplayed && !isplaying) {
                                          int result =
                                              await audioPlayer.resume();
                                          if (result == 1) {
                                            //resume success
                                            setState(() {
                                              isplaying = true;
                                              audioplayed = true;
                                              Icons.pause;
                                            });
                                          } else {
                                            print("Error on resume audio.");
                                          }
                                        } else {
                                          int result =
                                              await audioPlayer.pause();
                                          if (result == 1) {
                                            setState(() {
                                              isplaying = false;
                                            });
                                          } else {
                                            print("Error on pause audio.");
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 230,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF001243).withOpacity(0.4),
                            Color(0xFF001243).withOpacity(0.4),
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 230,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: const DecorationImage(
                                    image: AssetImage('music/image/3.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 220, top: 20),
                            child: Icon(Icons.keyboard_control,
                                size: 35, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 30),
                            child: Container(
                              height: 80,
                              width: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  colors: [
                                    Colors.purple.withOpacity(0.8),
                                    Colors.purple.withOpacity(0.8)
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      const Text(
                                        'Maiyya Mainu',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.music_note,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text(
                                              'Jersey',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 40),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      icon: Icon(
                                        isplaying1
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {
                                        String audioasset =
                                            "music/Badshah_-_Paani_Paani___Jacqueline_Fernandez___Aastha_Gill___Official_Music_Video(128k).mp3";
                                        ByteData bytes =
                                            await rootBundle.load(audioasset);
                                        Uint8List soundbytes = bytes.buffer
                                            .asUint8List(bytes.offsetInBytes,
                                                bytes.lengthInBytes);
                                        if (!isplaying1 && !audioplayed1) {
                                          int result = await audioPlayer
                                              .playBytes(soundbytes);
                                          if (result == 1) {
                                            //play success
                                            setState(() {
                                              isplaying1 = true;
                                              audioplayed1 = true;
                                            });
                                          } else {
                                            print("Error while playing audio.");
                                          }
                                        } else if (audioplayed1 &&
                                            !isplaying1) {
                                          int result =
                                              await audioPlayer.resume();
                                          if (result == 1) {
                                            //resume success
                                            setState(() {
                                              isplaying1 = true;
                                              audioplayed1 = true;
                                              Icons.pause;
                                            });
                                          } else {
                                            print("Error on resume audio.");
                                          }
                                        } else {
                                          int result =
                                              await audioPlayer.pause();
                                          if (result == 1) {
                                            //pause success
                                            setState(() {
                                              isplaying1 = false;
                                            });
                                          } else {
                                            print("Error on pause audio.");
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 230,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF001243).withOpacity(0.4),
                            Color(0xFF001243).withOpacity(0.4),
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 230,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                image: const DecorationImage(
                                    image: AssetImage('music/image/6.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 220, top: 20),
                            child: Icon(Icons.keyboard_control,
                                size: 35, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 25),
                            child: Container(
                              height: 80,
                              width: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  colors: [
                                    Colors.blue.withOpacity(0.2),
                                    Colors.blue.withOpacity(0.2)
                                  ],
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 29),
                                        child: Text(
                                          'Bom_Diggy',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.music_note,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Bhoot-Part one',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      icon: Icon(
                                        isplaying2
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                      onPressed: () async {
                                        String audioasset =
                                            "music/Bom_Diggy_Vs_Magenta_Mashup_-_Doreko___VJ_Prakhar(128k).mp3";
                                        ByteData bytes = await rootBundle.load(
                                            audioasset); //load sound from assets
                                        Uint8List soundbytes = bytes.buffer
                                            .asUint8List(bytes.offsetInBytes,
                                                bytes.lengthInBytes);
                                        if (!isplaying2 && !audioplayed2) {
                                          int result = await audioPlayer
                                              .playBytes(soundbytes);
                                          if (result == 1) {
                                            //play success
                                            setState(() {
                                              isplaying2 = true;
                                              audioplayed2 = true;
                                            });
                                          } else {
                                            print("Error while playing audio.");
                                          }
                                        } else if (audioplayed2 &&
                                            !isplaying2) {
                                          int result =
                                              await audioPlayer.resume();
                                          if (result == 1) {
                                            //resume success
                                            setState(() {
                                              isplaying2 = true;
                                              audioplayed2 = true;
                                              Icons.pause;
                                            });
                                          } else {
                                            print("Error on resume audio.");
                                          }
                                        } else {
                                          int result =
                                              await audioPlayer.pause();
                                          if (result == 1) {
                                            //pause success
                                            setState(() {
                                              isplaying2 = false;
                                            });
                                          } else {
                                            print("Error on pause audio.");
                                          }
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370, left: 10),
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff1b3d5f),
                            Color(0xff1b3d5f),
                          ],
                        ),
                      ),
                      unselectedLabelStyle:
                          const TextStyle(color: Colors.white),
                      unselectedBackgroundColor: Color(0xFF22223d),
                      labelStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: const [
                        Tab(
                          text: "Trending right now",
                        ),
                        Tab(
                          text: "Rock",
                        ),
                        Tab(
                          text: "Hip Hop",
                        ),
                        Tab(
                          text: "Electro",
                        ),
                        Tab(
                          text: "Classic",
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          SizedBox(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    lists().song_list(
                                      images: 'music/image/3.jpg',
                                      title1: "Maiyya Mainu",
                                      title2: 'Jersey',
                                      ontap: () {
                                        setState(() {
                                          _like = !_like;
                                        });
                                      },
                                      icon: _like
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                    ),
                                    lists().song_list(
                                      images: 'music/image/5.jpg',
                                      title1: "Channa Ve Ooo",
                                      title2: 'Bhoot - Part One',
                                      ontap: () {
                                        setState(() {
                                          _like1 = !_like1;
                                        });
                                      },
                                      icon: _like1
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                    ),
                                    lists().song_list(
                                      images: 'music/image/6.jpg',
                                      title1: "Baby ft. Ludacr",
                                      title2: 'Justin Bieber ',
                                      ontap: () {
                                        setState(() {
                                          _like2 = !_like2;
                                        });
                                      },
                                      icon: _like2
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                    ),
                                    const SizedBox(height: 30)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
