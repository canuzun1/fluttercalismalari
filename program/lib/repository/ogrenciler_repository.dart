class OgrencilerRepository{

  List ogrenciler = [
    Ogrenci('Ali', 'Yılmaz', 18, 'erkek'),
    Ogrenci('Ayşe', 'Koç', 18, 'kadın'),
  ];
}

class Ogrenci{
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogrenci(this.ad, this.soyad, this.yas, this.cinsiyet);


}