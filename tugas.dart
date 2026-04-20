import 'dart:io';
// Didik Weka Pratama 2311102285
// Fungsi FPB (algoritma Euclidean)
int fpb(int a, int b) {
  while (b != 0) {
    int sisa = a % b;
    a = b;
    b = sisa;
  }
  return a;
}

void main() {
  // Array 2 dimensi
  List<List<int>> list2D = [];

  // Baris 1: 4 bilangan kelipatan 6 mulai dari 6
  List<int> baris1 = [];
  int nilai = 6;
  for (int i = 0; i < 4; i++) {
    baris1.add(nilai);
    nilai += 6;
  }
  list2D.add(baris1);

  // Baris 2: 5 bilangan ganjil mulai dari 3
  List<int> baris2 = [];
  nilai = 3;
  for (int i = 0; i < 5; i++) {
    baris2.add(nilai);
    nilai += 2;
  }
  list2D.add(baris2);

  // Baris 3: 6 bilangan pangkat tiga mulai dari bilangan asli 4
  List<int> baris3 = [];
  nilai = 4;
  for (int i = 0; i < 6; i++) {
    baris3.add(nilai * nilai * nilai);
    nilai += 1;
  }
  list2D.add(baris3);

  // Baris 4: 7 bilangan asli beda 7 mulai dari 3
  List<int> baris4 = [];
  nilai = 3;
  for (int i = 0; i < 7; i++) {
    baris4.add(nilai);
    nilai += 7;
  }
  list2D.add(baris4);

  // Output
  print("Isi List:");
  for (var baris in list2D) {
    for (var angka in baris) {
      stdout.write("$angka ");
    }
    print("");
  }

  // Bagian FPB
  int a = 12;
  int b = 8;

  print("\nBilangan 1: $a");
  print("Bilangan 2: $b");
  print("FPB $a dan $b = ${fpb(a, b)}");
}