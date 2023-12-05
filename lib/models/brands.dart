class Brand {
  Brand(
      {required this.bgImageUrl,
      required this.imageUrl,
      required this.title,
      required this.id});
  Brand.api({required this.title, required this.id});
  final String id;
  final String title;
  String imageUrl = '';
  String bgImageUrl = '';
}
