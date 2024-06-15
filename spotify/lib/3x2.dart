// ignore_for_file: file_names, depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget buildRowWithContainers(
    List<Color?> colors,
    List<String> texts,
    List<String> images,
  ) {
    assert(colors.length == texts.length);
    assert(colors.length == images.length);

    List<Widget> containers = [];
    for (int i = 0; i < colors.length; i++) {
      containers.add(
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(97, 0, 0, 0),
              borderRadius: BorderRadius.circular(6),
            ),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(6)),
                  child: Image.asset(
                    images[i],
                    width: 55,
                    height: 55,
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    texts[i],
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

      if (i != colors.length - 1) {
        containers.add(SizedBox(width: 10));
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: containers,
    );
  }
}
