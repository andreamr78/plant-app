import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constraints.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';

import 'icon_card.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            country: 'Russia', 
            price: 440, 
            title: 'Angelica',
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20)
                                )
                              )
                            ),
                    backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                    ),
                  onPressed: (){},
                  child: Text('Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){},
                  child: Text("Description"),
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding * 2,)
        ],
      ),
    );
  }
}


