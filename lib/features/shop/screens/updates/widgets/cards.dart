import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/custom_card/card.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomCard(
            onTap: () {},
            title: "ash Singh",
            toFollow: () {},
          ),
          CustomCard(
            onTap: () {},
            title: "chandani Bharadwaj",
            toFollow: () {},
          ),
          CustomCard(
            onTap: () {},
            title: "Priya Sharma",
            toFollow: () {},
          ),
          CustomCard(
            onTap: () {},
            title: "Saurav Bhattachargy",
            toFollow: () {},
          ),
          CustomCard(
            onTap: () {},
            title: "rAJ Kumar",
            toFollow: () {},
          ),
          CustomCard(
            onTap: () {},
            title: "Ankit Dev Nath",
            toFollow: () {},
          ),
        ],
      ),
    );
  }
}
