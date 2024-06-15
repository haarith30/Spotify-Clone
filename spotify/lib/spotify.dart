// ignore_for_file: unused_import, unused_element, depend_on_referenced_packages, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '3x2.dart';
import 'albums.dart';
import 'bottomicon.dart';
import 'player.dart';

class SpotifyApp extends StatefulWidget {
  const SpotifyApp({super.key});

  @override
  State<SpotifyApp> createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  String _getGreeting() {
    final hour = TimeOfDay.now().hour;

    if (hour >= 0 && hour < 12) {
      return "Good morning";
    } else if (hour >= 12 && hour < 17) {
      return "Good afternoon";
    } else {
      return "Good evening";
    }
  }

  int _selectedBottomIndex = 0;

  void _selectBottomIcon(int index) {
    setState(() {
      _selectedBottomIndex = index;
    });
  }

  bool _isPlaying = false;
  bool _isLiked = false;

  void _onPlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _onLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getGreeting(),
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                SizedBox(width: 50),
                Icon(OctIcons.bell_24),
                SizedBox(width: 20),
                Icon(OctIcons.clock_24),
                SizedBox(width: 20),
                Icon(OctIcons.gear_24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: 70,
                  height: 30,
                  child: Center(
                    child: Text(
                      'Music',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: 150,
                  height: 30,
                  child: Center(
                    child: Text(
                      'Podcast & Shows',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                shrinkWrap: true,
                children: [
                  CustomWidgets.buildRowWithContainers(
                    [Colors.grey[900], Colors.grey[900]],
                    ['Liked Songs', 'This is Anirudh Ravichander'],
                    ['assets/3.png', 'assets/2.png'],
                  ),
                  SizedBox(height: 10),
                  CustomWidgets.buildRowWithContainers(
                    [Colors.grey[900], Colors.grey[900]],
                    ['This is The Weeknd', 'Top 50 India'],
                    ['assets/1.png', 'assets/4.png'],
                  ),
                  SizedBox(height: 10),
                  CustomWidgets.buildRowWithContainers(
                    [Colors.grey[900], Colors.grey[900]],
                    ['My Playlist', 'This is A.R. Rahman'],
                    ['assets/5.png', 'assets/6.png'],
                  ),
                  Expanded(
                    // Wrap the Albums widget with Expanded
                    child: Albums(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            height: 60,
            child: Player(
              songImage: 'assets/kk.png',
              songName: 'Kannaane Kanne',
              artistName: 'Anirudh Ravichander, Sean Roldan',
              isPlaying: _isPlaying,
              isLiked: _isLiked,
              onPlayPause: _onPlayPause,
              onLike: _onLike,
            ),
          ),
          Container(
            height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomIcons(
                    selectedIconIndex: _selectedBottomIndex,
                    onIconTap: _selectBottomIcon),
              ],
            ),
          )
        ],
      ),
    );
  }
}
