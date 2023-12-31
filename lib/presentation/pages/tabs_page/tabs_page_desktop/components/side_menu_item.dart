import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../cubit/tabs_cubit.dart';

class SideMenuItem extends StatelessWidget {
  final int index;
  final bool isActive;
  final String svgUrl;
  final String title;
  const SideMenuItem(
      {super.key, required this.index, required this.isActive, required this.svgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<TabsCubit>().changeIndex(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
            color: isActive ? const Color.fromRGBO(246, 247, 250, 1) : null, borderRadius: BorderRadius.circular(12)),
        child: Row(children: [
          SvgPicture.asset(
            svgUrl,
            color: isActive ? const Color.fromRGBO(55, 114, 255, 1) : const Color.fromRGBO(58, 61, 68, 1),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF3A3D44),
              fontSize: 16,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          )
        ]),
      ),
    );
  }
}
