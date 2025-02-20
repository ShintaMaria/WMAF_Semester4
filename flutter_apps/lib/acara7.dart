void main() {
  // Contoh Looping While-loop 1: Looping Angka 1-9 Sederhana
  var flag = 1;
  while (flag < 10) {
    print("Iterasi ke-" + flag.toString());
    flag++; // Mengubah nilai flag dengan menambahkan 1
  }

  // Contoh Looping While-loop 2: Looping Mengembalikan Angka Total
  var deret = 5;
  var jumlah = 0;
  while (deret > 0) {
    jumlah += deret; // Menambahkan nilai variable jumlah dengan angka deret
    deret--; // Mengubah nilai deret dengan mengurangi 1
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print('Jumlah terakhir: ' + jumlah.toString());

  // Contoh Looping For-loop 1: Looping Angka 1-9 Sederhana
  for (var angka = 1; angka < 10; angka++) {
    print('Iterasi ke-' + angka.toString());
  }

  // Contoh Looping For-loop 2: Looping Mengembalikan Angka Total
  jumlah = 0;
  for (var deret = 5; deret > 0; deret--) {
    jumlah += deret;
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print('Jumlah terakhir: ' + jumlah.toString());

  // Contoh Looping For-loop 3: Looping Dengan Increment dan Decrement Lebih dari 1
  for (var deret = 0; deret < 10; deret += 2) {
    print('Iterasi dengan Increment counter 2: ' + deret.toString());
  }
  print('-------------------------------');
  for (var deret = 15; deret > 0; deret -= 3) {
    print('Iterasi dengan Decrement counter 3: ' + deret.toString());
  }
}