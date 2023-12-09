import 'package:flutter/material.dart';
import 'package:russia_icpc/presentation/pages/shop_page/components/shop_container.dart';
import 'package:russia_icpc/presentation/widgets/user_exit_info_widget.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productList = [
      ShopProduct(
        assetImage: 'assets/images/skillbox.png',
        isBought: false,
        name: 'Скидка 45% на курс от Skillbox',
        description: 'Профессия «Специалист по кибер­безопас­нос­ти с нуля». Самая полная программа курса на рынке.',
        price: 1000,
      ),
      ShopProduct(
        assetImage: 'assets/images/netolog.png',
        isBought: false,
        name: 'Курс от Нетологии',
        description: 'Специалист по информационной безопасности: старт карьеры',
        price: 3000,
      ),
      ShopProduct(
        assetImage: 'assets/images/geekbrains.png',
        isBought: false,
        name: 'Скидка 50% на курс GeekBrains',
        description: 'Специалист по информационной безопасности с нуля до Junior.',
        price: 1500,
      ),
      ShopProduct(
        assetImage: 'assets/images/productstar.png',
        isBought: true,
        name: 'Курс от ProductStar',
        description: 'Профессия Инженер по информационной безопасности',
        price: 2000,
      ),
    ];
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 247, 249, 1),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(36),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const UserInfoExitWidget(),
                  const SizedBox(height: 36),
                  ShopContainer(
                    productList: productList,
                  )
                ]))));
  }
}
