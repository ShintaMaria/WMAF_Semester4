void main() {
  // Operator ternary
  var isThisShinta = true;
  isThisShinta ? print("Shinta") : print("bukan");

  // Contoh 1: Menjalankan kode jika premis bernilai true
  if (true) {
    print("jalankan code");
  }

  // Contoh 2: Kode tidak dijalankan jika premis bernilai false
  if (false) {
    print("Program tidak jalan code");
  }

  // Contoh 3: Premis dengan perbandingan suatu nilai
  var mood = "happy";
  if (mood == "happy") {
    print("hari ini aku bahagia!");
  }

  // Contoh 4: Branching sederhana
  var minimarketStatus = "open";
  if (minimarketStatus == "open") {
    print("saya akan membeli telur dan buah");
  } else {
    print("minimarketnya tutup");
  }

  // Contoh 5: Branching dengan kondisi
  minimarketStatus = "close";
  var minuteRemainingToOpen = 5;
  if (minimarketStatus == "open") {
    print("saya akan membeli telur dan buah");
  } else if (minuteRemainingToOpen <= 5) {
    print("minimarket buka sebentar lagi, saya tungguin");
  } else {
    print("minimarket tutup, saya pulang lagi");
  }

  // Contoh 6: Kondisional bersarang
  minimarketStatus = "open";
  var telur = "soldout";
  var buah = "soldout";
  if (minimarketStatus == "open") {
    print("saya akan membeli telur dan buah");
    if (telur == "soldout" || buah == "soldout") {
      print("belanjaan saya tidak lengkap");
    } else if (telur == "soldout") {
      print("telur habis");
    } else if (buah == "soldout") {
      print("buah habis");
    }
  } else {
    print("minimarket tutup, saya pulang lagi");
  }

  // Contoh 7: Kondisional dengan switch case
  var buttonPushed = 1;
  switch (buttonPushed) {
    case 1:
      {
        print('matikan TV!');
        break;
      }
    case 2:
      {
        print('turunkan volume TV!');
        break;
      }
    case 3:
      {
        print('tingkatkan volume TV!');
        break;
      }
    case 4:
      {
        print('matikan suara TV!');
        break;
      }
    default:
      {
        print('Tidak terjadi apa-apa');
      }
  }
}