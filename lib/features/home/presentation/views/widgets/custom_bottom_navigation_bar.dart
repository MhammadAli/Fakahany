import 'package:fakahany/features/home/presentation/views/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../../../../home/domain/entities/bottom_navigation_bar_entity.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: BottomNavigationBarEntity.bottomNavigationBarItems
              .asMap()
              .entries
              .map((e) {
        final index = e.key;
        final entity = e.value;
        return Expanded(
          flex: selectedIndex == index ? 3 : 2,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: NavigationBarItem(
              isSelected: selectedIndex == index,
              bottomNavigationBarEntity: entity,
            ),
          ),
        );
      }).toList()),
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
