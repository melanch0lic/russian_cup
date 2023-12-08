import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/login_page/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              borderRadius: (BorderRadius.circular(32)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(child: Text('Регистрация', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))),
                const SizedBox(height: 16),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text('Уже  есть аккаунт?'),
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage())),
                    child: const Text('Войдите',
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
                const Text(
                  'Повторите пароль',
                  style: TextStyle(color: Color.fromRGBO(107, 110, 117, 1), fontSize: 14),
                ),
                const SizedBox(height: 8),
                _PasswordInput(),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    Checkbox(value: false, onChanged: null),
                    SizedBox(width: 10),
                    Flexible(
                        child: Text('Нажимая на “Создать аккаунт”, вы принимаете Пользовательское соглашение',
                            maxLines: 2))
                  ],
                ),
                const SizedBox(height: 36),
                _SignUpButton(),
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

class _SignUpButton extends StatelessWidget {
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
        child:
            Text('Cоздать аккаунт', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
      )),
    );
  }
}
