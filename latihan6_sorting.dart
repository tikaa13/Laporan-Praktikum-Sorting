class Mahasiswa implements Comparable<Mahasiswa> {
  String nrp;
  String nama;

  Mahasiswa(this.nrp, this.nama);

  @override
  int compareTo(Mahasiswa other) {
    // Membandingkan dua objek Mahasiswa berdasarkan nrp
    return this.nrp.compareTo(other.nrp);
  }

  @override
  String toString() {
    // Representasi string dari objek Mahasiswa
    return 'Mahasiswa{nrp: $nrp, nama: $nama}';
  }
}

class Latihan {
  static void selectionSort<T extends Comparable<T>>(List<T> arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      // Temukan indeks elemen terkecil dalam sisa list yang belum diurutkan
      int minIdx = i;
      for (int j = i + 1; j < n; j++) {
        if (arr[j].compareTo(arr[minIdx]) < 0) {
          minIdx = j;
        }
      }
      // Tukar elemen terkecil dengan elemen pada posisi i
      T temp = arr[minIdx];
      arr[minIdx] = arr[i];
      arr[i] = temp;
    }
  }

  static void display<T>(List<T> data) {
    for (T obj in data) {
      print('$obj');
    }
    print('');
  }

  static void main() {
    List<Mahasiswa> arr8 = [
      Mahasiswa("02", "Budi"),
      Mahasiswa("01", "Andi"),
      Mahasiswa("04", "Udin"),
      Mahasiswa("03", "Candra")
    ];

    print('Data Sebelum Pengurutan:');
    display(arr8);

    DateTime start = DateTime.now();
    selectionSort(arr8);
    Duration elapsedTime = DateTime.now().difference(start);

    print('Data Setelah Pengurutan:');
    display(arr8);
    print('Waktu: ${elapsedTime.inMilliseconds} ms');
  }
}

void main() {
  Latihan.main();
}
