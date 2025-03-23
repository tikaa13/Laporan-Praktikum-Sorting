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
  static void insertionSort<T extends Comparable<T>>(List<T> arr) {
    for (int i = 1; i < arr.length; i++) {
      T key = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j].compareTo(key) > 0) {
        arr[j + 1] = arr[j];
        j = j - 1;
      }
      arr[j + 1] = key;
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
    insertionSort(arr8);
    Duration elapsedTime = DateTime.now().difference(start);

    print('Data Setelah Pengurutan:');
    display(arr8);
    print('Waktu: ${elapsedTime.inMilliseconds} ms');
  }
}

void main() {
  Latihan.main();
}
