# master_plan

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Praktikum 1
![Output Praktikum 1](Images/praktikum1.jpeg)

### Soal
1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Langkah 4 membuat file data_layer.dart bertujuan untuk menyederhanakan proses import pada aplikasi. Dengan mengumpulkan dan mengekspor semua model (seperti plan.dart dan task.dart) melalui satu file, developer cukup mengimpor satu berkas saja ketika membutuhkan semua model tersebut. Cara ini membuat struktur kode lebih rapi, mudah dikelola, dan memudahkan pengembangan ketika jumlah model bertambah, karena cukup menambahkan export baru pada satu file tanpa harus mengubah banyak bagian kode lain.

2. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Variabel plan dipakai karena halaman butuh satu objek Plan sebagai tempat menyimpan dan menampilkan daftar tugas. Objeknya dibuat const karena saat pertama kali dibuat datanya masih tetap, sehingga lebih efisien dan tidak perlu dibuat ulang setiap kali widget dibangun.

3. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

Pada Langkah 11, initState() dipakai untuk menyiapkan apa pun yang harus berjalan sekali di awal, termasuk membuat ScrollController dan menambahkan listener. Listener itu dipakai agar saat daftar discroll, fokus keyboard otomatis hilang.

Pada Langkah 13, dispose() dipakai untuk membersihkan controller ketika widget sudah tidak dipakai lagi, supaya tidak ada kebocoran memori (memory leak).



