void main() {
  print("===== Prakikum 1 =====");
  // Langkah 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Pada langkah 1 di atas menampilkan panjang list yaitu 3, lalu menmapilkan
  // elemen kedua dengan nilai 2. Lalu diubah menjadi 1, prohra, mencetak nilai
  // baru elemen tersebut yaitu 1.

  // Langkah 3
  final List<String?> list = List.filled(5, null);
  // mengisi nama dan NIM pada index ke-1 dan ke-2
  list[1] = "Oltha Rosyeda"; // ganti sesuai nama lengkap
  list[2] = "202101234";     // ganti sesuai NIM
  for (var i = 0; i < list.length; i++) {
    print("Index $i: ${list[i]}");
  }

  print("");
  print("===== Praktikum 2 =====");
  // Langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; 
  // var names3 = {}; 
  // print(names1);
  // print(names2);
  // print(names3);  

  // Masalahnya ada di names3, karena {} tanpa tipe akan dianggap Map<dynamic, dynamic>, bukan Set. Maka dari itu jika
  // langsung dipakai .add() akan error.

  // tambah elemen dengan .add()
  names1.add("Oltha Rosyeda");
  names1.add("2341720145");

  // tambah elemen dengan .addAll()
  names2.addAll({"Oltha Rosyeda", "2341720145"});

  print(names1);
  print(names2);

  // Apakah ada error?
  // Ada. Eror terjadi di 'names3', karena {} tanpa tipe akan dianggap Map<dynamic, dynamic>, 
  // bukan Set. Maka dari itu jika langsung dipakai .add() akan error.
  // Dan sesuai instruksi untuk menghapus names3 dulu, lalu tambahkan nama lengkap dan
  // NIM ke names1 dan names2 menggunakan fungsi berbeda.

  print("");
  print("===== Praktikum 3 =====");
  // Langkah 1
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
  };
  
  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  };
  print("Sebelum ditambah:");
  print(gifts);
  print(nobleGases);

  // Langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Tambahan: menambahkan Nama & NIM
  gifts['nama'] = 'Oltha Rosyeda Al\'haq';
  gifts['nim'] = '2341720145';

  nobleGases[20] = 'Oltha Rosyeda Al\'haq';
  nobleGases[21] = '2341720145';

  mhs1['nama'] = 'Oltha Rosyeda Al\'haq';
  mhs1['nim'] = '2341720145';

  mhs2[99] = 'Oltha Rosyeda Al\'haq';
  mhs2[100] = '2341720145';

  print("\nSetelah ditambah nama & NIM:");
  print("gifts   : $gifts");
  print("nobleGases : $nobleGases");
  print("mhs1    : $mhs1");
  print("mhs2    : $mhs2");

  print("");
  print("===== Praktikum 4 =====");
  // Langkah 1
  List<int?> list1 = [1, 2, 3]; 
  var list2 = [0, ...list1]; 
  print(list2);
  print(list2.length);

  //Langkah 3
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // Kenapa ada error?
  // error karena dari awal list1 dideklarasikan sebagai List<int> secara implisit, 
  // karena isinya [1,2,3]. sehingga ketika [1,2,null] Dart protes karena null 
  // tidak bisa masuk ke int.

  print("");
  print("===== Praktikum 5 =====");
  // Langkah 1
  // var record = ('first', a: 2, b: true, 'last');
  var record = (10, 20);
  print(record);

  // Langkah 3 -> gunakan fungsi tukar() di dalam main
  var hasil = tukar(record);
  print("Sesudah di tukar: $hasil");

  // Langkah 4
  // (String, int) mahasiswa; terjadi error karena mendeklarasi record 'mahassiwa' tapi diinisialisasi.
  (String, int) mahasiswa = ('Oltha Rosyeda', 12345678); 
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
// Langkah 3 praktikum 4
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

// TUGAS PRAKTIKUM

// 1. Apa yang dimaksud Functions dalam bahasa Dart!
//    Functions di Dart adalah blok kode yang bisa dipanggil untuk menjalankan tugas tertentu. 
//    Functions bisa menerima parameter, memprosesnya, dan mengembalikan nilai (return value).
//    Contoh :
//    (int, int) tukar((int, int) record) {
//    (int, int) tukar((int, int) record) {
//    var (a, b) = record;
//    return (b, a);
//    }

// 2. Jelaskan jenis-jenis parameter di Function beserta contoh sintaksnya!
//    a. Positional parameter = Harus sesuai urutan saat dipanggil, biasanya untuk parameter wajib.
//     Contoh :
//     tukar((int, int) record
//    b. Optional positional parameter = Opsional, menggunakan [], bisa dilewatkan saat pemanggilan.
//     Contoh :
//     void greet(String firstName, [String? lastName]) { }
//    c. Named parameter = Memudahkan pemanggilan dengan menyebut nama parameter, menggunakan {}.
//     Contoh :
//     var mahasiswa2 = ('first', a: 2, b: true, 'last');
//     print(mahasiswa2.a); // 2
//     print(mahasiswa2.b); // true

// 3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
//    Functions di Dart bisa disimpan dalam variabel, dijadikan parameter, atau dikembalikan sebagai nilai function lain.
//    Contoh :
//    var f = tukar; // simpan function ke variabel
//    var result = f((5, 10)); // panggil lewat variabel
//    print(result); // Output: (10, 5)
//    Ini menunjukkan function sebagai first-class object.

// 4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
//    Anonymous function adalah function tanpa nama, biasanya digunakan langsung sebagai nilai variabel atau parameter function lain.
//    Misal bisa langsung dipakai di forEach.
//    Contoh :
//    var list = [1, 2, 3];
//    list.forEach((item) {
//    print(item * 2); 
//    });
//    Output: 2, 4, 6

// 5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
//    a. Lexical scope: variabel hanya bisa diakses di dalam scope-nya.
//      Contoh :
//    var record = (10, 20); // scope main
//    var hasil = tukar(record); // fungsi tukar bisa akses record sebagai parameter

//    b. Closure: function yang mengakses variabel dari luar scope walau dijalankan di luar.
//      Contoh :
//    Function makeAdder(int x) {
//   return (int y) => x + y; // Closure, mengingat x dari luar
//   }
//   var add5 = makeAdder(5);
//   print(add5(10)); // 15

// 6. Jelaskan dengan contoh cara membuat return multiple value di Functions!
//    Dart menggunakan Record untuk return multiple value.
//     Contoh :
//    (int, int) tukar((int, int) record) {
//    var (a, b) = record;
//    return (b, a); // return multiple value
//    }
//    var record = (10, 20);
//    var hasil = tukar(record);
//    print("Sesudah di tukar: $hasil"); // Output: (20, 10)

//    Bisa juga untuk return nama & NIM:
//    (String, int) mahasiswa = ('Oltha Rosyeda', 12345678);
//    print(mahasiswa.$1); // Nama
//    print(mahasiswa.$2); // NIM





