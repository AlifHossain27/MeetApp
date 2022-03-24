import 'package:flutter/material.dart';
import 'package:meet/resources/auth_methods.dart';
import 'package:meet/utils/colors.dart';
import 'package:meet/widgets/meeting_btn.dart';
import 'package:meet/screens/meeting.dart';
import 'package:meet/screens/meeting_history.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _page = 0;
  onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    Meeting(),
    const MeetingHistory(),
    const Text('Contacts'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation:0,
        title: const Text('MeetApp'),
        centerTitle: true,
      ),

      body: pages[_page],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
              ),
              label: 'Meet',
              ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
              ),
              label: 'Meetings',
              ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              ),
              label: 'Contacts',
              ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              ),
              label: 'Settings',
              ),
        ],
      ),
    );
  }
}