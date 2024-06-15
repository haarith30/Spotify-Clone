// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Player extends StatelessWidget {
  final String songName;
  final String artistName;
  final String songImage;
  final bool isPlaying;
  final bool isLiked;
  final VoidCallback onPlayPause;
  final VoidCallback onLike;

  Player({
    required this.songName,
    required this.artistName,
    required this.songImage,
    required this.isPlaying,
    required this.isLiked,
    required this.onPlayPause,
    required this.onLike,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 53, 50, 58),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    songImage, // Use the song image received from the user
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Text(
                      artistName,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(isLiked ? EvaIcons.heart : EvaIcons.heart_outline),
                  onPressed: onLike,
                  color: const Color.fromARGB(255, 105, 240, 141),
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(isPlaying
                      ? Bootstrap.pause_fill
                      : Icons.play_arrow_rounded),
                  onPressed: onPlayPause,
                  color: const Color.fromARGB(255, 105, 240, 141),
                  iconSize: 35,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
