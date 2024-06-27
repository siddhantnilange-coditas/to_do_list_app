import 'package:flutter/material.dart';

class CustomGridViewDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('GridView Inside AlertDialog'),
      content: Container(
        width: double.maxFinite,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3, 
              margin: EdgeInsets.all(8), 
              child: InkWell(
                onTap: () {
                  print('Tapped on Item $index');
                },
                child: Center(
                  child: Text('Item $index'),
                ),
              ),
            );
          },
        ),
      ),
      // actions: <Widget>[
      //   ElevatedButton(
      //     onPressed: () {
      //       Navigator.of(context).pop(); 
      //     },
      //     child: Text('Close'),
      //   ),
      // ],
    );
  }
}
