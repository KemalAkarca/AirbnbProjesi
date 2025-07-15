class WishlistCardModel {
  final String resimYolu; // Kartta gösterilecek resim yolu
  final String detail; // Karttaki açıklama (örneğin 'Tiflis, Gürcistan 2025')
  final int savedNumber; // Saved sayısı (örneğin 2 saved)

  WishlistCardModel({
    required this.resimYolu,
    required this.detail,
    required this.savedNumber,
  });
}
