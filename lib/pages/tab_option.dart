import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';







class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(

      imagePath: 'lib/images/mhWeb.png',
    );
  }
}

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  NftCard(


      imagePath: 'lib/images/portd.png',








    );

  }
}


class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const NftCard(

      imagePath: 'lib/images/music.png',
      
    );

  }
}

class NftCard extends StatelessWidget {
  final String imagePath;
  const NftCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}