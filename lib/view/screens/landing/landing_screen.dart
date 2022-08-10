import 'package:crypo_wallet/view/constants/ui.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../more/more_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  static const String id = 'landing';

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentIndex = 0;

  void show() {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
      ),
      builder: (context) => Wrap(
        children: const [
          MoreScreen(),
        ],
      ),
    );
  }

  final List<Widget> screens = const [
    HomeScreen(),
    Center(
      child: Text(
        'Swap',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    ),
    Center(
      child: Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    ),
    Center(
      child: Text(
        'List',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    ),
    Center(
      child: Text(
        'Settings',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          if (index == 2) {
            FocusManager.instance.primaryFocus?.unfocus();
            return show();
          } else if (index != 2) {
            FocusManager.instance.primaryFocus?.unfocus();
            setState(() => currentIndex = index);
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: ('Wallet'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_rounded),
            label: ('Swap'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: kCustomBlue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Icon(
                Icons.add,
                color: kCustomBlue,
                size: 15.0,
              ),
            ),
            label: ('Add'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: ('List'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('Settings'),
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
