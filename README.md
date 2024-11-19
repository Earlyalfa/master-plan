


---

### Master_plan
**Nama**  : Early Alfa Sheilawati  
**NIM**   : 362358302105  
**Kelas** : 2D TRPL

---

## hasil projek praktikum 1
1. dokumentasikan berupa GIF hasil praktikum
![masterplan](assets/masterplan.gif)

2. Pada Langkah 4, membuat file data_layer.dart untuk menggabungkan semua model yang ada, yaitu task.dart dan plan.dart. Dengan menggunakan export, kita dapat dengan mudah mengimpor kedua model tersebut dalam file lain tanpa harus mengimpor satu per satu. Ini membuat struktur proyek menjadi lebih rapi dan modular. hanya perlu mengimpor file ini saja di seluruh aplikasi, sehingga tidak perlu mengelola impor model satu per satu di setiap file.

3. Variabel plan di langkah 6, digunakan untuk menyimpan data daftar rencana (Plan) yang berisi nama rencana dan daftar tugas. hanya data tugas yang diubah (seperti menambah atau mengubah deskripsi tugas), sementara data lainnya tetap konsisten.

4. Di Langkah 9, kita buat tampilan daftar tugas dengan widget ListTile. Tampilan ini memuat checkbox untuk menandai tugas selesai dan TextFormField untuk mengedit deskripsi tugas. Saat ada perubahan di daftar tugas (misalnya, tambah tugas, edit deskripsi, centang tugas), setState memperbarui tampilan berdasarkan data terbaru.

5.  Fungsi initState dan dispose pada Langkah 11 dan 13
    - Langkah 11 (Menambah Scroll Listener dengan initState): initState dijalankan pertama kali saat widget dibuat. Di sini, kita pakai ScrollController dengan listener agar ketika pengguna menggulir layar, fokus input otomatis hilang. Ini membantu tampilan lebih nyaman, terutama saat keyboard muncul.
    - Langkah 13 (Membersihkan scrollController dengan dispose): dispose berguna untuk membersihkan resource yang tidak lagi dipakai saat widget dihapus. Kita gunakan dispose untuk membuang scrollController agar tidak memakan memori lebih dari yang diperlukan.

---

## hasil projek praktikum 2
![masterplan](assets/ss_masterplan.png)
1. Proses menambah tugas, mengedit deskripsi, dan menampilkan pesan kelengkapan tugas.

2. Langkah 1: Menjelaskan InheritedWidget dan Penggunaan InheritedNotifier
    - InheritedWidget adalah widget khusus di Flutter yang menyediakan akses data ke seluruh widget di bawahnya tanpa harus mengirim data secara manual ke setiap widget.
    - InheritedNotifier memungkinkan kita menggunakan ValueNotifier untuk mendengarkan perubahan data dan secara otomatis memberi tahu widget lain saat ada perubahan. Dengan begitu, kita bisa memperbarui UI tanpa memerlukan setState di setiap tempat yang menggunakan data Plan.

3. Langkah 3 Menambah Method completedCount dan completenessMessage: Kedua method ini membantu menghitung berapa tugas yang sudah selesai dan membuat pesan seperti "2 dari 5 tugas selesai" agar tampil di UI. Ini membuat tampilan lebih informatif bagi pengguna.

4. Langkah 9 menambahkan SafeArea untuk menampilkan completenessMessage dari plan dalam area aman layar, sehingga tidak terpotong oleh elemen perangkat (seperti notch). Kode ini memastikan bahwa teks ditampilkan di area yang terlihat, sambil memisahkan tampilan (view) dari model (Plan).

---

## hasil projek praktikum 3
![masterplan](assets/masterplan3.gif)
1. MaterialApp
Ini adalah widget utama yang berfungsi sebagai root aplikasi. MaterialApp menyediakan tema dan navigasi global untuk aplikasi.

2. PlanProvider
Widget ini kemungkinan berperan sebagai penyedia data (state management). Ia mengelola dan menyediakan data atau state kepada widget turunannya.

3. PlanCreatorScreen dan PlanScreen
- PlanCreatorScreen: Merupakan layar tempat pengguna dapat membuat rencana.
- PlanScreen: Layar utama lainnya yang menampilkan rencana yang dibuat pengguna. Transisi antara layar dilakukan dengan Navigator Push.

4. Scaffold
Berfungsi sebagai kerangka layar. Scaffold menyediakan struktur dasar seperti AppBar, Body, FloatingActionButton, dan lainnya.

5. Column
Widget ini digunakan untuk menyusun elemen secara vertikal. Baik di PlanCreatorScreen maupun PlanScreen, Column menjadi struktur utama.

6. Expanded dan SafeArea
- Expanded: Digunakan untuk mengatur ukuran widget agar menyesuaikan ruang yang tersedia.
- SafeArea: Memastikan konten tidak tumpang tindih dengan area sistem (seperti notch atau status bar).

7. TextField, ListView, dan Text
- TextField: Pada PlanCreatorScreen, digunakan untuk input teks dari pengguna.
- ListView: Digunakan untuk menampilkan daftar item dalam format scrollable.
- Text: Digunakan untuk menampilkan informasi statis atau dinamis.

Kesimpulan:
Diagram ini menjelaskan alur logika navigasi dan hierarki widget dalam aplikasi. Mulai dari widget utama (MaterialApp) hingga interaksi pengguna dengan input (TextField) dan tampilan data yang dihasilkan dalam bentuk daftar (ListView). Navigasi antar layar diatur melalui Navigator Push.