import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:russia_icpc/app_bloc.dart';

class UserInfoExitWidget extends StatelessWidget {
  const UserInfoExitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: IntrinsicHeight(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            SvgPicture.asset('assets/svg_icons/light.svg',
                height: 24, width: 24),
            const SizedBox(width: 8),
            const Text('216',
                style: TextStyle(
                    color: Color.fromRGBO(29, 31, 36, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            const SizedBox(width: 12),
            const VerticalDivider(
              width: 1,
              indent: 1,
              endIndent: 1,
              thickness: 1,
              color: Color.fromRGBO(211, 213, 218, 1),
            ),
            const SizedBox(width: 12),
            const Text('aslanbichilov@mail.ru',
                style: TextStyle(
                    color: Color.fromRGBO(29, 31, 36, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            const SizedBox(width: 12),
            InkWell(
                onTap: () {
                  context.read<AppBloc>().add(const AppLogoutRequested());
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: SvgPicture.asset('assets/svg_icons/exit.svg',
                    height: 24, width: 24))
          ]),
        ),
      ),
    );
  }
}
