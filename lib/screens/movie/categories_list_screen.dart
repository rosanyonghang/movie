import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/count_provider.dart';
import '../../utils/styles/text_styles.dart';

class CategoriesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CountProvider>(context).count;

    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'CategoriesList',
              style: kScreenTitles,
            ),

          ),
          Text(count.toString()),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                Provider.of<CountProvider>(context, listen: false).decCount();
              }, child: Text('Decrease count'))

        ],
      ),
    );
  }
}
