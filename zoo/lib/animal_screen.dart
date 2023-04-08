import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'reuse/reuse_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'reuse/reuse_animalCard.dart';

class AnimalScreen extends StatefulWidget {
  static const String id = 'animal_screen';
  AnimalScreen({Key? key}) : super(key: key);

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2FFA5),
      body: ListView(
        children: [
          Container(
            height: 471,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/tiger-image.jpg',
                    ),
                    fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          SizedBox(
            height: 5,
            // child:
          ),
          Center(
            child: Text(
              'Bengal White Tiger',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'Panthera tigris',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          reusedivider(),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Conservation Status:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          reusedivider(),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Column(
              children: [
                ReUseText(
                  first: 'Kingdom:',
                  second: 'Animalila',
                ),
                ReUseText(first: 'Phylum:', second: 'Chordata'),
                ReUseText(first: 'Class:', second: 'Mammalia'),
                ReUseText(first: 'Order:', second: 'Carnivora'),
                ReUseText(first: 'Suborder:', second: 'Feliformia'),
                ReUseText(first: 'Family:', second: 'Felidae'),
                ReUseText(first: 'Subfamily:', second: 'Pantherinae'),
                ReUseText(first: 'Genus:', second: 'Panthera'),
                ReUseText(first: 'Species:', second: 'P.tigirs'),
              ],
            ),
          ),
          reusedivider(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Number of:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Feed item:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Mix of Beef, Mutton, Pork, Chicken.',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Type of enclosure:',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              'Open/Semi Dry',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          reusedivider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'An apex predator, it primarily preys on ungulates, such as deer and wild boar. It is territorial and generally a solitary but social predator, requiring large contiguous areas of habitat to support its requirements for prey and rearing of its offspring.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child: Container(
            width: 177,
            height: 43,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                'MORE FACTS',
                style: TextStyle(
                  color: Color(0xFFE2FFA5),
                ),
              ),
            ),
          )),
          SizedBox(
            height: 5,
          ),
          reusedivider(),
          Center(
            child: Text(
              'NEIGHBOURS',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [ReUseAnimalCard(), ReUseAnimalCard()],
          )
        ],
      ),
    );
  }
}

class ReUseText extends StatelessWidget {
  final String first, second;
  ReUseText({required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          first,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        InkWell(
          child: Text(
            second,
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontSize: 20),
          ),
          onTap: () {
            print('yes');
          },
        ),
      ],
    );
  }
}
