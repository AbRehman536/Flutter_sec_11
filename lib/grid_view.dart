import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            mainAxisExtent: 50,

          ),
          itemCount: 33,
          itemBuilder: (context, child){
            return Container(
              color: Colors.blue,
              child: Column(children: [
                Icon(Icons.ac_unit,color: Colors.white,),
              ],),
            );
          }),
    );
  }
}
