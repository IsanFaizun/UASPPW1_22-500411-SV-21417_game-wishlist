
# Gamesite
## Penjelasan Web Secara Umum
Gamesite merupakan proyek web sederhana yang secara umum digunakan untuk memindahkan game ke dalam wishlist. Wishlist adalah sebuah list yang berfungsi untuk menandai suatu item (dalam hal ini game) sebelum ingin membeli. Biasanya digunakan oleh website game store seperti Steam, Epic Games, dan lain-lain.

Project ini dikerjakan dengan bahasa HTML, CSS, Javascript, dan PHP-MySQL. Project ini menggunakan Bootstrap sebagai frameworknya.






## Requirement

1. Desain yang rapi mengikuti prinsip desain
    ![image](https://github.com/IsanFaizun/UASPPW1_22-500411-SV-21417_game-wishlist/assets/113765539/242472e8-e446-4fa2-ac82-a86eeff744d5)


Website ini sudah mengikuti prinsip desain dan menggunakan 3 warna dasar yaitu biru, hitam, dan putih. Warna hitam dan putih digunakan untuk komponen penting pada website seperti navbar, footer, form, button, dan sebagainya sedangkan warna biru untuk background website. Warna hitam di sini merupakan warna dark bawaan dari Bootstrap. Contohnya:
```html
<button class="btn btn-dark" type="button"><b>JOIN</b></button>
```
Kode di atas menggunakan class "btn-dark" supaya warna button menjadi hitam

Kemudian, warna biru adalah warna gradasi. Warna ini digunakan di CSS pada tag body. Contohnya:
```css
body {
    background: rgb(0,11,70);
    background: linear-gradient(180deg, rgba(0,11,70,1) 0%, rgba(18,116,167,0.4543067226890757) 100%);
}
```
Adapun 2 warna tambahan yakni merah (warna danger dari Bootstrap) dan grey.

2. Website responsive

Proyek ini menggunakan Bootstrap untuk mempermudah dalam membuat website yang responsif. Cara akses ke dalam Bootstrap adalah dengan CDN via JSDelivr. Berikut adalah kodenya:
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
```
Terdapat banyak komponen yang diambil dari Bootstrap seperti navbar, footer, carousel, form, table, dan lain-lain. Berikut adalah salah satu contoh kode yang digunakan. Kode ini digunakan untuk membuat navbar:
```html
<nav class="navbar navbar-dark navbar-expand-sm  bg-dark fixed-top">
    <div class="container-fluid">
        <img class="me-4" src="assets/logo.png" height="50" width="50" alt="logo">
        <a class="navbar-brand" href="#">GameSite</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="about.php">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="games.php">Games</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="wishlist.php">Wishlist</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.php">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
```
Navbar di atas menggunakan 5 class. Class navbar digunakan untuk mendefinisikan navbar dari Bootstrap. Kemudian, class navbar-dark dan bg-dark digunakan untuk membuat navbar menjadi hitam dengan tulisannya yang komplementer yaitu putih. Lalu, navbar-expand-sm digunakan untuk membuat menu-menu dibungkus ke dalam toggle pada ukuran 576px (ukuran handphone). Adapun kelas tambahan yakni fixed-top untuk membuat navbar selalu di atas layar.

Untuk tampilan paling kecil, projek ini bisa sampai pada maksimal width 375px untuk lebar paling kecil. Berikut adalah tampilan dari 375px:
![image](https://github.com/IsanFaizun/UASPPW1_22-500411-SV-21417_game-wishlist/assets/113765539/6a10805b-a9d9-470f-8879-01fa297a9063)


3. Direct Feedback

Terdapat 6 direct feedback pada website ini yaitu join (untuk memberikan pemberitahuan jika user sudah ikut ke komunitas), donate (untuk memberitahu user setelah melakukan donasi), add to wishlist (memberitahu user jika user berhasil memasukkan item ke dalam wishlist), remove (memberi konfirmasi terhadap user yang ingin mengahapus 1 item dari wishlist), delete all (memberi konfirmasi terhadap user yang ingin mengahapus semua item dari wishlist), dan submit(memberikan feedback ketika user ingin melakukan laporan dari menu contact).
Berikut adalah salah satu contoh direct feedback yaitu join:

Ini adalah kode javascript
```javascript
function join() {
    alert("Now you join the community");
}
``` 
Ini adalah kode yang digunakan untuk memasukkan function join ke html
```html
<button class="btn btn-dark" onclick="join()" type="button"><b>JOIN</b></button>
```
4. Konten Dinamis

Website ini menggunakan PHP dan MySQL untuk membuatnya menjadi dinamis. Kemudian, terdapat 3 tabel yang digunakan yaitu trending, games, dan wishlist. Trending digunakan pada page home, games untuk page games, dan wishlist untuk page wishlist. Hal yang pertama untuk membuat web dinamis adalah mengkoneksikannya ke dalam database. Berikut adalah kode untuk mengkoneksikan web ke database dengan server lokal via PHP dengan mysqli_connect:
```php
<?php
    $conn = mysqli_connect('localhost', 'root', '', 'game_site') or die('connection failed')
?>
```
Kemudian untuk mengambil data dari database, hal yang dilakukan adalah menggunakan fetching dengan bantuan mysqli_query untuk masuk ke dalam database. Berikut adalah contohnya dari page games:
```php
<table class="table">
    <?php
        $select = mysqli_query($conn, "SELECT * FROM `games`");
        if(mysqli_num_rows($select) > 0){
            while($fetch_games = mysqli_fetch_assoc($select)){
    ?>
    <tbody>
        <tr>
            <td><img src="<?php echo $fetch_games['img']; ?>" alt="" class="img-fluid" height="80" width="130"></td>
            <td><b><?php echo $fetch_games['name']; ?></b></td>
            <td><input type="submit" class=" btn btn-secondary" value="add to wishlist"></td>
        </tr>
    </tbody>
    <?php
            };
        };
    ?>
</table> 
```
Proyek ini dapat digunakan untuk memindahkan suatu item ke wishlist. Cara untuk memindahkannya adalah dengan menggunakan tag form dengan method="post" ditambah dengan tag input, type="hidden" untuk melakukan fetching semua kolom dari tabel. Berikut adalah contohnya:
```php
<table class="table">
    <?php
        $select = mysqli_query($conn, "SELECT * FROM `games`");
        if(mysqli_num_rows($select) > 0){
            while($fetch_games = mysqli_fetch_assoc($select)){
    ?>
    <tbody>
        <tr>
            <form method="post">
            <td><img src="<?php echo $fetch_games['img']; ?>" alt="" class="img-fluid" height="80" width="130"></td>
            <td><b><?php echo $fetch_games['name']; ?></b></td>
            <input type="hidden" name="games_id" value="<?php echo $fetch_games['id']; ?>">
            <input type="hidden" name="games_image" value="<?php echo $fetch_games['img']; ?>">
            <input type="hidden" name="games_name" value="<?php echo $fetch_games['name']; ?>">
            <td><input type="submit" class=" btn btn-secondary" value="add to wishlist" name="add_to_wishlist"></td>
            </form>
        </tr>
    </tbody>
    <?php
            };
        };
    ?>
</table> 
```
Setelah itu, lakukan pemindahan ke tabel wishlist dengan bantuan function isset() dan $_POST bawaan PHP ditambah dengan pemeriksaan dan conditional if (untuk melakukan action dan memberikan pesan) dengan mysqli_query seperti di bawah:
```php
<?php
    if(isset($_POST['add_wt'])){
    $img = $_POST['games_image'];
    $name = $_POST['games_name'];
  
    // Periksa game sudah ada di dalam wishlist atau belum
    $select_wishlist = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$name'");
  
    if(mysqli_num_rows($select_wishlist) == 0){
      $insert_game = mysqli_query($conn, "INSERT INTO `wishlist`(img, name) VALUES('$img', '$name')");
    } else {
      // If game sudah ada dalam wishlist
      echo "<script>alert('This game is already in the wishlist')</script>";
    }
  }
?>
```
