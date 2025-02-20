void main() {
  // Contoh Function 1: Function sederhana tanpa return
  tampilkan();

  // Contoh Function 2: Function sederhana dengan return
  print(munculkanangka());

  // Contoh Function 3: Function dengan parameter
  print(kalikanDua(6));

  // Contoh Function 4: Pengiriman parameter lebih dari satu
  print(kalikan(5, 6));

  // Contoh Function 5: Inisialisasi parameter dengan nilai default
  tampilkanangka(5);

  // Anonymous Function sebagai variable
  print(functionPerkalian(5, 6));
}

tampilkan() {
  print("Hello Peserta Bootcamp");
}

munculkanangka() {
  return 2;
}

kalikanDua(angka) {
  return angka * 2;
}

kalikan(x, y) {
  return x * y;
}

tampilkanangka(n1, {s1 = 45}) {
  print(n1); // hasil akan 5 karena initialisasi 5 didalam value tampilkan
  print(s1); // hasil adalah 45 karena dari parameter diisi 45
}

functionPerkalian(angka1, angka2) {
  return angka1 * angka2;
}
