Tugas 7:

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan widget yang dibuild hanya dengan konfigurasi yang telah diinisiasi sejak awal. Jadi, widget ini tidak mengubah apapun (statis).
Stateful widget merupakan widget yang dapat diubah-ubah secara dinamis. Kebalikan dari stateless yang statis

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text : Untuk memunculkan serangkaian teks
- Stack : Untuk penempatan widget dalam bentuk stack, bisa horizontal maupun vertical
-  TextStyle : Untuk meng-edit widget text yang sudah dibuat

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Untuk menetapkan suatu keadaan internal, untuk suatu perubahan yang terjadi supaya bisa disimpan nilainya, dibutuhkan setstate. Jika dari tugas ini, varible yang bertipe data int dan dapat diubah nilainya.

4. Jelaskan perbedaan antara const dengan final.
const: dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi (Compile time) berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan value secara langsung.
final: Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Dengan kata lain nilai final akan diketahui pada saat run-time.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Untuk tugas kali ini, saya memulai dengan membuat projek baru bernama counter_7 (berupa folder berisi file-file yang salah satunya adalah code dart). Setelah itu saya me-run flutter dengan command "flutter run" dan tampilan androidnya ada dalam emulator/web saya (tergantung pilihan). Setelah itu, saya mengubah kode yang berada di lib/main.dart. pertama saya menambahkan floatingActionButton untuk bagian decrement. Lalu, saya membuat method _decrementCounter untuk mengurangi nilai counter, tidak lupa saya menggunakan setState() agar nilai pengurangan tersimpan. Lalu saya membuat kondisi if-else dibagian body untuk mengubah warna dan isi text. Lalu, untuk bonus saya menggunakan kondisi if-else kembali di bagian floatingActionButton. 

Tugas 8:

1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push : menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
Navigator.pushReplacement : menambahkan rute dengan cara mengganti topofstack menjadi page yang baru.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Text : Untuk memunculkan serangkaian teks
- TextStyle : Untuk meng-edit widget text yang sudah dibuat
- Center : meletakan atau memposisikan widget ke bagian tengah
- Drawer : dapat menambahkan navbar pada widget

3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onClick
- onClose
- onError
- onShow
- onPressed

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator berkerja dengan membuat widget stack-based yang menyimpan riwayat widget yang sudah dibuat (ditumpuk di stack). Dengan menggunakan method push, menambahkan rute di stack.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Pertama membuat drawer untuk menampung navbar. Lalu, membuat class untuk routing pada drawer. Membuat class Model, class ini digunakan untuk menampung data budget. Lalu menambahkan class data_budget.dart untuk menampilkan data dan tambah_budget  untuk form budget.


Tugas 9:
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Iya dapat dilakukan. Namun, dalam pengambilan JSON tanpa membuat model akan memperbesar peluang dari kesalahan pengambilan data atau penampilan data. Jadi, lebih baik untuk mengimplementasikan models

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- FutureBuilder: untuk menggenerate array of widget berdasarkan suatu snapshot dengan memperhatikan teraksi snapshot terbaru
- ElevatedButton: tombol build-in untuk mentrigger suatu event 
- Scaffold: mengimplementasikan struktur umum material layout design

3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pertama membuat model untuk data JSON yang diambil. Lalu, membuat function GET untuk mengambil data JSON. Konversi JSON menjadi sebuah objek. Setelah itu, menampilkannya di page.

4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Pertama membuat model untuk data JSON yang diambil. Lalu, membuat function GET untuk mengambil data JSON. Konversi JSON menjadi sebuah objek. Setelah itu, menampilkannya di page. 