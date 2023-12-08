import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/sign_up_page/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/background.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(right: 32, left: 32, top: 32, bottom: 36),
            width: 444,
            decoration: BoxDecoration(
              borderRadius: (BorderRadius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: Text('Вход', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                const SizedBox(height: 16),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Ещё нет аккаунта?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage())),
                    child: const Text('Создайте его',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(55, 114, 255, 1))),
                  )
                ]),
                const SizedBox(height: 36),
                const Text(
                  'Email',
                  style: TextStyle(color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                ),
                const SizedBox(height: 8),
                _EmailInput(),
                const SizedBox(height: 24),
                const Text(
                  'Пароль',
                  style: TextStyle(color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                ),
                const SizedBox(height: 8),
                _PasswordInput(),
                const SizedBox(height: 24),
                Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const Text('Забыли пароль?',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(55, 114, 255, 1)))),
                  ],
                ),
                const SizedBox(height: 36),
                _LoginButton(),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: null,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(55, 114, 255, 1)),
            borderRadius: BorderRadius.circular(8)),
        hintText: 'example@mail.ru',
        hintStyle: const TextStyle(fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: null,
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(211, 213, 218, 1)),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(55, 114, 255, 1)),
            borderRadius: BorderRadius.circular(8)),
        hintText: '········',
        hintStyle: const TextStyle(fontSize: 16, color: Color.fromRGBO(211, 213, 218, 1)),
        suffixIcon: const Icon(Icons.lock_outline),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
      ),
      onPressed: () {},
      child: const Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Text('Войти', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
      )),
    );
  }
}
