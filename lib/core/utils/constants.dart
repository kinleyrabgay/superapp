// ================  Help Section  =================== //

class Item {
  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;

  const Item({
    required this.title,
    this.subtitle,
    required this.assetName,
    required this.isLast,
  });
}

List<Item> items = [
  const Item(
    assetName: 'orders.png',
    title: 'Orders',
    subtitle: 'Track your orders',
    isLast: false,
  ),
  const Item(
    assetName: 'call-center.png',
    title: 'Help Center',
    subtitle: 'Help regarding your recent purchase',
    isLast: false,
  ),
  const Item(
    assetName: 'wishlist.png',
    title: 'WishList',
    subtitle: 'Your wishlist',
    isLast: true,
  ),
];

List<Item> backup = [
  const Item(
    assetName: 'orders.png',
    title: 'Orders',
    isLast: false,
  ),
  const Item(
    assetName: 'wishlist.png',
    title: 'WishList',
    isLast: true,
  ),
];

class FooterItem {
  final String title;
  final String routeName;

  const FooterItem({
    required this.title,
    required this.routeName,
  });
}

List<FooterItem> footerItem = [
  const FooterItem(
    title: 'FAQ',
    routeName: '/faq',
  ),
  const FooterItem(
    title: 'ABOUT OF US',
    routeName: '/about-of-us',
  ),
  const FooterItem(
    title: 'TERM OF USE',
    routeName: '/term-of-use',
  ),
  const FooterItem(
    title: 'PRIVACY POLICY',
    routeName: '/privacy-and-policy',
  ),
];
