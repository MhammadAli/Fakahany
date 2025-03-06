import '../../../../generated/assets.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage, name;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.name,
  });

  List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
        BottomNavigationBarEntity(
          activeImage: Assets.imagesHomeBold,
          inActiveImage: Assets.imagesHomeOutlined,
          name: 'الرئيسية',
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesProductsBold,
          inActiveImage: Assets.imagesProductsOutlined,
          name: 'المنتجات',
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesShoppingCartBold,
          inActiveImage: Assets.imagesShoppingCartOutlined,
          name: 'سلة التسوق',
        ),
        BottomNavigationBarEntity(
          activeImage: Assets.imagesUserBold,
          inActiveImage: Assets.imagesUserOutlined,
          name: 'سلة حسابي',
        ),
      ];
}
