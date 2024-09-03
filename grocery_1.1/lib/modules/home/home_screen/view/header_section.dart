import 'package:flutter/material.dart';
import 'package:grocery_new/common/text_widget.dart';
import '../../../../utilities/constants/images_constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20.0,
            child: Image.asset(profilePicture),
          ),
          const SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label(label: 'Good morning!'),
              Label(
                label: 'Alamgir Mulla',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}