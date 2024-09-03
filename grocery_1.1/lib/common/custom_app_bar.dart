import 'package:flutter/material.dart';
import '../theme/colors_class.dart';
import 'text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppBar appBar;
  String title;
  bool needIcon;

  CustomAppBar({
    required this.appBar,
    required this.title,
    this.needIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 25,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        needIcon == true
            ? IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              )
            : SizedBox.shrink(),
      ],
      centerTitle: true,
      title: Label(
        label: title,
        color: ColorsClass.textColor,
        fontWeight: FontWeight.w900,
        fontSize: 25,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
