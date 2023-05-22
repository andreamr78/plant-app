import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

import '../../details/details_screens.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [ 
            RecommendPlantCard(
            image: 'assets/images/image_1.png', 
            country: 'Russia', 
            pressedBtn: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            }, 
            price: 440, 
            title: 'Samantha',
          ),
           RecommendPlantCard(
            image: 'assets/images/image_2.png', 
            country: 'Russia', 
            pressedBtn: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => DetailsScreen())
              );
            }, 
            price: 440, 
            title: 'Angelica',
          ),
           RecommendPlantCard(
            image: 'assets/images/image_3.png', 
            country: 'Russia', 
            pressedBtn: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => DetailsScreen())
              );
            }, 
            price: 440, 
            title: 'Samantha',
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price; 
  final Function pressedBtn;

  const RecommendPlantCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.country, 
    required this.price, 
    required this.pressedBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.38,
      margin: EdgeInsets.only(
        left: kDefaultPadding, 
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
        ),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap:() => pressedBtn(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                  TextSpan(
                    text: country.toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                      )
                    ),
                  ]
                )),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}