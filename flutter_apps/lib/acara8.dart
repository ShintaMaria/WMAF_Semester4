import 'dart:io';

void main() {
  // Ternary Operator
  stdout.write("Mau install aplikasi? (y/t): ");
  String? install = stdin.readLineSync()?.toLowerCase();
  print(install == 'y' ? "Anda akan menginstall aplikasi dart" : "Aborted");

  // If-Else If-Else
  stdout.write("Masukkan nama: ");
  String? nama = stdin.readLineSync();
  stdout.write("Masukkan peran: ");
  String? peran = stdin.readLineSync();
  
  if (nama == null || nama.isEmpty) {
    print("Nama harus diisi!");
  } else if (peran == null || peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    print("Selamat datang di Dunia Werewolf, $nama");
    if (peran.toLowerCase() == "penyihir") {
      print("Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (peran.toLowerCase() == "guard") {
      print("Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else if (peran.toLowerCase() == "werewolf") {
      print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
    } else {
      print("Peran tidak dikenali.");
    }
  }

  // Switch Case - Quotes
  stdout.write("Masukkan hari: ");
  String? hari = stdin.readLineSync()?.toLowerCase();
  switch (hari) {
    case "senin":
      print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
      break;
    case "selasa":
      print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case "rabu":
      print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      break;
    case "kamis":
      print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      break;
    case "jumat":
      print("Hidup tak selamanya tentang pacar.");
      break;
    case "sabtu":
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      break;
    case "minggu":
      print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      break;
    default:
      print("Hari tidak dikenali.");
  }

  // Switch Case - Format Tanggal
  int hariTanggal = 21;
  int bulan = 1;
  int tahun = 1945;
  
  String namaBulan;
  switch (bulan) {
    case 1: namaBulan = "Januari"; break;
    case 2: namaBulan = "Februari"; break;
    case 3: namaBulan = "Maret"; break;
    case 4: namaBulan = "April"; break;
    case 5: namaBulan = "Mei"; break;
    case 6: namaBulan = "Juni"; break;
    case 7: namaBulan = "Juli"; break;
    case 8: namaBulan = "Agustus"; break;
    case 9: namaBulan = "September"; break;
    case 10: namaBulan = "Oktober"; break;
    case 11: namaBulan = "November"; break;
    case 12: namaBulan = "Desember"; break;
    default: namaBulan = "Bulan tidak valid";
  }
  print("$hariTanggal $namaBulan $tahun");

  // Looping While
  print("LOOPING PERTAMA");
  int i = 2;
  while (i <= 20) {
    print("$i - I love coding");
    i += 2;
  }

  print("LOOPING KEDUA");
  i = 20;
  while (i >= 2) {
    print("$i - I will become a mobile developer");
    i -= 2;
  }

  // Looping For
  for (int j = 1; j <= 20; j++) {
    if (j % 3 == 0 && j % 2 != 0) {
      print("$j - I Love Coding");
    } else if (j % 2 == 0) {
      print("$j - Berkualitas");
    } else {
      print("$j - Santai");
    }
  }

  // Persegi Panjang
  for (int r = 0; r < 4; r++) {
    print("#" * 8);
  }

  // Tangga
  for (int k = 1; k <= 7; k++) {
    print("#" * k);
  }
}
