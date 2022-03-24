import 'dart:math';
import 'package:flutter/material.dart';
import 'package:meet/widgets/meeting_btn.dart';
import 'package:meet/resources/jitsi_meet_methods.dart';

class Meeting extends StatelessWidget {
  Meeting({ Key? key }) : super(key: key);

  final JitsiMeetMethods _jitsi_meet_methods = JitsiMeetMethods();
  createNewMeeting() async{
    var random = Random();
    String roomName = (random.nextInt(100000000) + 10000000).toString();
    _jitsi_meet_methods.createMeeting(roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MeetingButton(
              onPressed: createNewMeeting,
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
    );;
  }
}