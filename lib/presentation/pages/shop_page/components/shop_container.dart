import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopContainer extends StatelessWidget {
  const ShopContainer({super.key, required this.productList});
  final List<ShopProduct> productList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Магазин',
            style: TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontWeight: FontWeight.w700, fontSize: 32),
          ),
          const SizedBox(height: 24),
          GridView.builder(
            itemCount: productList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              childAspectRatio: 1,
            ),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return _ShopCard(
                product: productList[index],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ShopCard extends StatelessWidget {
  const _ShopCard({super.key, required this.product});
  final ShopProduct product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 24),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(246, 247, 250, 0.5), borderRadius: BorderRadius.all(Radius.circular(24))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              product.assetImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name.toString(),
                  style:
                      const TextStyle(color: Color.fromRGBO(29, 31, 36, 1), fontSize: 20, fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, color: Color.fromRGBO(107, 110, 117, 1)),
                ),
              ],
            ),
            !product.isBought
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: const Color.fromRGBO(55, 114, 255, 1),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Получить за ${product.price.toString()}',
                                  style:
                                      const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                              const SizedBox(width: 4),
                              SvgPicture.asset('assets/svg_icons/white_light.svg', height: 24, width: 24),
                            ],
                          )),
                    ))
                : Container(
                    child: const Center(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Приобретено',
                                style: TextStyle(
                                    color: Color.fromRGBO(55, 114, 255, 1), fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        )),
                  )),
          ],
        ))
      ]),
    );
  }
}

class ShopProduct {
  final String assetImage;
  final String name;
  final String description;
  final bool isBought;
  final int price;

  ShopProduct(
      {required this.assetImage,
      required this.name,
      required this.description,
      required this.isBought,
      required this.price});
}
