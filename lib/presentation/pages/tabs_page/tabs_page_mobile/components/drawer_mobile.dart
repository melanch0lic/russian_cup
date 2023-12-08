// import 'package:flutter/material.dart';

// import 'drawer_list_tile_mobile.dart';

// class DrawerMobile extends StatelessWidget {
//   const DrawerMobile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         width: 240,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
//         ),
//         child: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
//             child: Column(
//               children: [
//                 const Center(
//                   child: CircleAvatar(
//                     minRadius: 50,
//                     backgroundImage: AssetImage('assets/images/avatar.jpg'),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 const Text('Заур Кудзаев',
//                     style: TextStyle(
//                         color: Color.fromRGBO(26, 29, 31, 1),
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20)),
//                 const Text('Ученик',
//                     style: TextStyle(
//                         color: Color.fromRGBO(107, 78, 255, 1), fontSize: 16)),
//                 const SizedBox(height: 24),
//                 const DrawerListTileMobile(
//                     title: 'Главная', index: 0, icon: Icon(Icons.home)),
//                 const DrawerListTileMobile(
//                     title: 'Мои классы',
//                     index: 1,
//                     icon: Icon(Icons.play_lesson)),
//                 const Spacer(),
//                 SizedBox(
//                   height: 40,
//                   width: 160,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       side: const BorderSide(
//                           width: 2, color: Color.fromRGBO(107, 78, 255, 1)),
//                       backgroundColor: Colors.white,
//                       foregroundColor: const Color.fromRGBO(107, 78, 255, 1),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)),
//                       elevation: 0,
//                     ),
//                     child: Center(
//                         child: Row(
//                       children: [
//                         const Icon(Icons.logout,
//                             color: Color.fromRGBO(107, 78, 255, 1)),
//                         const SizedBox(width: 8),
//                         Text(
//                           'Выйти',
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium!
//                               .copyWith(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: const Color.fromRGBO(107, 78, 255, 1)),
//                         ),
//                       ],
//                     )),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
