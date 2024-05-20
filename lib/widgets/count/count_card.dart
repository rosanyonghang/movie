import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/count_provider.dart';

class CountCard extends StatelessWidget {
  const CountCard({super.key});

  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CountProvider>(context).count;

    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              // accessing functions, make sure you set the listen parameter to false
              // for accessing methods
              Provider.of<CountProvider>(context, listen: false).decCount();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            child: Text('decrease count'),
          ),
          Text(count.toString(), style: TextStyle(fontSize: 36),),
        ],
      ),
    );
  }
}
