class OgretmenlerRepository{

  List ogretmenler = [
    Ogretmen('Faruk', 'Halil', 35, 'erkek'),
    Ogretmen('Hatice', 'Aslan', 27, 'kadın'),
  ];
}

class Ogretmen{
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogretmen(this.ad, this.soyad, this.yas, this.cinsiyet);


}