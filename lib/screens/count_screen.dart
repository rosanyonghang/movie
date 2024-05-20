import 'package:flutter/material.dart';
import 'package:movie/providers/count_provider.dart';
import 'package:movie/widgets/count/count_card.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // we always access the variable under widget in contrast to stateful widgets
    // where we declare the variables before widgets
    var count = Provider.of<CountProvider>(context).count;

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter')
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height:300,
              child: Center(
                child: Text(count.toString(), style: TextStyle(fontSize: 36),),
              ),
            ),
            CountCard()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // accessing functions, make sure you set the listen parameter to false
          // for accessing methods
          Provider.of<CountProvider>(context, listen: false).incCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
