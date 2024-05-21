import 'package:flutter/material.dart';

import '../../utils/styles/text_styles.dart';

class TrendingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Trending', style: kScreenTitles),
      ),
    );
  }
}
