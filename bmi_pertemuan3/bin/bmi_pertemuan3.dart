// main.dart
void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi beberapa input data untuk perhitungan BMI.
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
}
