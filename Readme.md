# PHP Clean Architecture Student Management

Proyek ini adalah aplikasi sederhana untuk manajemen data mahasiswa menggunakan PHP dengan arsitektur bersih (Clean Architecture).

## Struktur Proyek

Proyek ini terdiri dari beberapa bagian utama:

- `Database.php`: Kelas ini bertanggung jawab untuk mengelola koneksi database.
- `StudentRepository.php`: Kelas ini bertanggung jawab untuk mengambil data mahasiswa dari database.
- `StudentView.php`: Kelas ini bertanggung jawab untuk menampilkan data mahasiswa.
- `index.php`: File ini adalah titik masuk utama aplikasi.

## Cara Menjalankan

1. Pastikan Anda telah menginstal PHP dan MySQL di sistem Anda.
2. Buat database MySQL dan tabel `mahasiswa` menggunakan skrip SQL yang disediakan.
3. Salin file `.env.example` menjadi `.env` dan perbarui dengan detail koneksi database Anda.
4. Jalankan `composer install` untuk menginstal dependensi.
5. Jalankan `php -S localhost:8000` untuk memulai server pengembangan PHP.
6. Buka `http://localhost:8000` di browser Anda.

## Fitur

- Menampilkan semua data mahasiswa dalam tabel.
- Paginasi data mahasiswa.


by Muhammad Kevin