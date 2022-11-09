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