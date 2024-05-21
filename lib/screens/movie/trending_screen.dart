import 'package:flutter/material.dart';
import 'package:movie/providers/count_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/styles/text_styles.dart';

class TrendingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CountProvider>(context).count;
    return Container(
      child: Center(
        child: Text('Trending ${count}', style: kScreenTitles),
      ),
    );
  }
}
