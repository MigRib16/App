//   Widget build(BuildContext context) {
//     return initWidget();
//   }
//   Widget initWidget() {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
//                 gradient: LinearGradient(
//                   colors: [(new Color.fromARGB(255, 31, 142, 245)), (new Color.fromARGB(255, 31, 142, 245))],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 )
//               ),
//         child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top:30),
//                 child: Image.asset("images/img.png"),
//                 height: 90,
//                 width: 90,
//               ),
//             ]
//               ),
//         ),
//             ),
//           ]
//         )
//       ),
//     );
//    }
// }