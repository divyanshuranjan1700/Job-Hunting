import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key, required this.index, required this.onChangedTab})
      : super(key: key);
  final int index;
  final ValueChanged<int> onChangedTab;
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    final placholder = Opacity(
      opacity: 0,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_drop_down),
      ),
    );
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      // notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            0,
            const Icon(Icons.home),
          ),
          buildTabItem(
            1,
            const Icon(Icons.notifications_paused_outlined),
          ),
          placholder,
          buildTabItem(
            2,
            const Icon(Icons.favorite_outline),
          ),
          buildTabItem(
            3,
            const Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }

  Widget buildTabItem(int index, Icon icon) {
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(color: isSelected ? Colors.indigoAccent[400] : Colors.grey),
      child: IconButton(
        icon: icon,
        iconSize: 28,
        highlightColor: Theme.of(context).primaryColor,
        splashColor: Theme.of(context).colorScheme.secondary,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}