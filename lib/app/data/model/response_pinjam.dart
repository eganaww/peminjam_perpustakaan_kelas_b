/// user_id : 2
/// book_id : 1
/// tanggal_pinjam : "2024-01-01"
/// tanggal_kembali : "2024-01-10"

class ResponsePinjam {
  ResponsePinjam({
      this.userId, 
      this.bookId, 
      this.tanggalPinjam, 
      this.tanggalKembali,});

  ResponsePinjam.fromJson(dynamic json) {
    userId = json['user_id'];
    bookId = json['book_id'];
    tanggalPinjam = json['tanggal_pinjam'];
    tanggalKembali = json['tanggal_kembali'];
  }
  int? userId;
  int? bookId;
  String? tanggalPinjam;
  String? tanggalKembali;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['book_id'] = bookId;
    map['tanggal_pinjam'] = tanggalPinjam;
    map['tanggal_kembali'] = tanggalKembali;
    return map;
  }

}