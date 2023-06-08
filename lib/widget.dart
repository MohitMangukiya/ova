import 'package:flutter/material.dart';

class lists {
  Widget song_list({
    required String images,
    required String title1,
    required String title2,
    required VoidCallback ontap,
    required IconData icon,
  }) {
    return Stack(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(images), fit: BoxFit.cover)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 27, bottom: 5),
                  child: Text(title1,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const Icon(Icons.person, size: 20, color: Colors.grey),
                      Text(title2,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 286, top: 60),
          child: InkWell(
            onTap: ontap,
            child: Icon(
              icon,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  Widget music_types({
    required String images,
    required String title1,
    required String title2,
  }) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: Container(
            height: 210,
            width: 160,
            // color: Col ors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                Text(title1,
                    style: const TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600)),
                Text(
                  title2,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: 140,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(images), fit: BoxFit.cover)),
          ),
        )
      ],
    );
  }
}
