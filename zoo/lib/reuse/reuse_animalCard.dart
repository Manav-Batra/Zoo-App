import 'package:flutter/material.dart';
import 'package:zoo/animal_screen.dart';

class ReUseAnimalCard extends StatelessWidget {
  const ReUseAnimalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, AnimalScreen.id);
          Navigator.pushNamed(context, AnimalScreen.id);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 232,
          decoration: BoxDecoration(
              color: Color(0xFFE2FFA5),
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          // padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/tiger-image.jpg'),
                      fit: BoxFit.fitWidth),
                  // border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Text(
                'Bengal White',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Center(
                child: Text(
                  'Tiger',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
