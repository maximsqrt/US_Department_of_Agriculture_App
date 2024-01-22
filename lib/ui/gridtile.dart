// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class MyGridviewScreen extends StatelessWidget {
//   const MyGridviewScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: 
    
//     StaggeredGrid.count(
//       crossAxisCount: 5, 
//       mainAxisSpacing: 4,
//       crossAxisSpacing: 4,
//       children: [
//         StaggeredGridTile.count(crossAxisCellCount: 1, 
//         mainAxisCellCount: 3, 
//         child: Container(height: 100,
//         width: 100,
//         color: Colors.red),),
//         StaggeredGridTile.count(crossAxisCellCount: 3, 
//         mainAxisCellCount: 3, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//         StaggeredGridTile.count(crossAxisCellCount: 1, 
//         mainAxisCellCount: 5, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//         StaggeredGridTile.count(crossAxisCellCount: 2, 
//         mainAxisCellCount: 4, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//         ],
//     ),
//     );  
//   }
// }