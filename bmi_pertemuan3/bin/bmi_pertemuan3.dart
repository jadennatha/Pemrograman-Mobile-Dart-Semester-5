// main.dart
void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi beberapa input data untuk perhitungan BMI.
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
}

void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  // Konversi tinggi dari cm ke m.
  double tinggiM = tinggiCm / 100;

  // Hitung BMI dengan rumus: berat (kg) / (tinggi (m) * tinggi (m)).
  double bmi = beratKg / (tinggiM * tinggiM);

  // Tentukan kategori BMI menggunakan percabangan.
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  // Simpan hasil perhitungan ke dalam list riwayat.
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori,
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  print("--- Riwayat Perhitungan BMI ---");

  // Lakukan perulangan untuk setiap item dalam list riwayat.
  for (int i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    // Ambil nilai BMI dan format menjadi 2 angka di belakang koma.
    String bmiFormatted = data['bmi'].toStringAsFixed(2);

    print("Data ke-${i + 1}:");
    print("  Tinggi   : ${data['tinggi']} cm");
    print("  Berat    : ${data['berat']} kg");
    print("  BMI      : $bmiFormatted");
    print("  Kategori : ${data['kategori']}");
    print("-" * 20); // Garis pemisah antar data
  }
}