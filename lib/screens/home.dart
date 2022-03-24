import 'package:flutter/material.dart';
import 'package:meet/resources/auth_methods.dart';
import 'package:meet/utils/colors.dart';
import 'package:meet/widgets/meeting_btn.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation:0,
        title: const Text('MeetApp'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MeetingButton(
                onPressed: () {},
                text: 'New Meeting',
                icon: Icons.videocam,
                ),

              MeetingButton(
                onPressed: () {},
                text: 'Join Meeting',
                icon: Icons.add_box_rounded,
                ),

              MeetingButton(
                onPressed: () {},
                text: 'Schedule',
                icon: Icons.calendar_today,
                ),

              MeetingButton(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.arrow_upward_rounded,
                ),
            ],
          ),

          const Expanded(
            child: Center(
              child: Text('Create or Join Meeting', 
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,)),
            ),
          ),

        ],
      ),

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
              label: 'Chat',
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