// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          RowOfContainers(
            title: 'Popular Albums',
            albums: [
              AlbumInfo(
                imageAsset: 'assets/image1.png',
                albumName: 'Heat Waves',
                artistName: 'Single • Glass Animals',
              ),
              AlbumInfo(
                imageAsset: 'assets/image2.png',
                albumName: 'Naa Ready',
                artistName: 'Single • Vijay, Anirudh R...',
              ),
              AlbumInfo(
                imageAsset: 'assets/image3.png',
                albumName: 'Starboy',
                artistName: 'Album • The Weeknd',
              ),
              AlbumInfo(
                imageAsset: 'assets/image4.png',
                albumName: 'Naanum Rowdy Than',
                artistName: 'Album • Anirudh Ravich..',
              ),
              AlbumInfo(
                imageAsset: 'assets/image5.png',
                albumName: 'Kabir Singh',
                artistName: 'Album • Various Artists',
              ),
            ],
          ),
          RowOfContainers(
            title: 'Your top mixes',
            albums: [
              AlbumInfo(
                imageAsset: 'assets/mix1.png',
                albumName: 'Daily Mix 1',
                artistName: 'Anirudh & more',
              ),
              AlbumInfo(
                imageAsset: 'assets/mix2.png',
                albumName: 'Daily Mix 2',
                artistName: 'Arijith Singh, Pritam..',
              ),
              AlbumInfo(
                imageAsset: 'assets/mix3.png',
                albumName: 'Daily Mix 3',
                artistName: 'A.R Rahman & more',
              ),
              AlbumInfo(
                imageAsset: 'assets/mix4.png',
                albumName: 'Daily Mix 4',
                artistName: 'The Weeknd & more',
              ),
              AlbumInfo(
                imageAsset: 'assets/mix5.png',
                albumName: 'Daily Mix 3',
                artistName: 'Nick Jonas, Harry Styl..',
              ),
            ],
          ),
          RowOfContainers(
            title: 'Spotify original & exclusive podcasts',
            albums: [
              AlbumInfo(
                imageAsset: 'assets/pc1.png',
                albumName: 'Naallanna muruku',
                artistName: 'Spotify Studios',
              ),
              AlbumInfo(
                imageAsset: 'assets/pc2.png',
                albumName: 'Gopi Sudhakar En..',
                artistName: 'Spotify Studios',
              ),
              AlbumInfo(
                imageAsset: 'assets/pc3.png',
                albumName: 'Cinema with Bar..',
                artistName: 'Spotify Studios',
              ),
              AlbumInfo(
                imageAsset: 'assets/pc4.png',
                albumName: 'Death, Lies & Cya..',
                artistName: 'Spotify Studios',
              ),
              AlbumInfo(
                imageAsset: 'assets/pc5.png',
                albumName: 'Mission Isro with..',
                artistName: 'Spotify Studios',
              ),
            ],
          ),
          RowOfContainers(
            title: 'Recently played',
            albums: [
              AlbumInfo(
                imageAsset: 'assets/nira.png',
                albumName: 'Nira (From "Takka..)',
                artistName: 'Sid Sriram, Gautham Va..',
              ),
              AlbumInfo(
                imageAsset: 'assets/image6.png',
                albumName: 'Spider-Man:Across..',
                artistName: 'Metro Boomin',
              ),
              AlbumInfo(
                imageAsset: 'assets/3.png',
                albumName: 'Liked Songs',
                artistName: '205 Songs',
              ),
              AlbumInfo(
                imageAsset: 'assets/vk.png',
                albumName: 'Rasathi Unnai',
                artistName: 'P. Jayachandran',
              ),
              AlbumInfo(
                imageAsset: 'assets/2.png',
                albumName: 'This is Anirudh Ravi..',
                artistName: 'The Essential tracks of..',
              ),
            ],
          ),
          RowOfContainers(
            title: 'Charts',
            albums: [
              AlbumInfo(
                imageAsset: 'assets/c1.png',
                albumName: 'Top 50 India',
                artistName: '',
              ),
              AlbumInfo(
                imageAsset: 'assets/c2.png',
                albumName: 'Hot Hits India',
                artistName: '',
              ),
              AlbumInfo(
                imageAsset: 'assets/c3.png',
                albumName: 'Hot Hits Tamil',
                artistName: '',
              ),
              AlbumInfo(
                imageAsset: 'assets/c4.png',
                albumName: 'Hot Hits Telugu',
                artistName: '',
              ),
              AlbumInfo(
                imageAsset: 'assets/c5.png',
                albumName: 'Hot Hits Hindi',
                artistName: '',
              ),
            ],
          ),
          // Add more RowOfContainers with different albums
        ],
      ),
    );
  }
}

class RowOfContainers extends StatelessWidget {
  final String title;
  final List<AlbumInfo> albums;

  const RowOfContainers({
    required this.title,
    required this.albums,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < albums.length; i++)
                Row(
                  children: [
                    ContainerWithTextOutside(albumInfo: albums[i]),
                    if (i < albums.length - 1) SizedBox(width: 15),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class AlbumInfo {
  final String imageAsset;
  final String albumName;
  final String artistName;

  AlbumInfo({
    required this.imageAsset,
    required this.albumName,
    required this.artistName,
  });
}

class ContainerWithTextOutside extends StatelessWidget {
  final AlbumInfo albumInfo;

  const ContainerWithTextOutside({required this.albumInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 160,
            child: Image.asset(
              albumInfo.imageAsset,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 13),
          Text(
            albumInfo.albumName,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6),
          Text(
            albumInfo.artistName,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
