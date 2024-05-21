import 'package:flutter/material.dart';
import 'package:movie/providers/count_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CountProvider>(context).count;

    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/custom.png',
            height: 300,
            width: double.infinity,
          ),
          Text(
            'Home',
            style: kScreenTitles,
          ),
          Text(
            count.toString(),
            style: kScreenTitles,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
              onPressed: (){
                Provider.of<CountProvider>(context, listen: false).incCount();
              }, child: Text('Increase count'))
        ],
      ),
    );
  }
}
