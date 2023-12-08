import 'package:flutter/material.dart';

class EnterClassButton extends StatelessWidget {
  const EnterClassButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                ),
                width: 450,
                height: 330,
                child: Padding(
                  padding: const EdgeInsets.all(64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Вступить в класс",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const TextField(
                        onSubmitted: null,
                        onChanged: null,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                          hintText: 'Код или ссылка-приглашение',
                          prefixIcon: Icon(Icons.key_outlined, color: Color.fromRGBO(158, 165, 173, 1)),
                          hintStyle: TextStyle(fontSize: 16, color: Color.fromRGBO(158, 165, 173, 1)),
                          helperText: '',
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          backgroundColor: const Color.fromRGBO(107, 78, 255, 1),
                        ),
                        onPressed: () {},
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text('Вступить',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
                        )),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 2, color: Color.fromRGBO(107, 78, 255, 1)),
        backgroundColor: const Color.fromRGBO(107, 78, 255, 1),
        foregroundColor: const Color.fromRGBO(107, 78, 255, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 0,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Center(
            child: Text(
          'Вступить в класс',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
        )),
      ),
    );
  }
}
