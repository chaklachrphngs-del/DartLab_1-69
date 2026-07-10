class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);


  void showDetail() {
    print('ชื่อหนังสือ: $title | ผู้แต่ง: $author | ราคา: $price บาท');
  }
}

void main() {

  Book book1 = Book('เรียนรู้ Dart ใน 1 วัน', 'สมชาย ใจดี', 250.0);
  Book book2 = Book('OOP Mastery', 'John Doe', 450.0);

  print('--- รายละเอียดหนังสือ ---');
  book1.showDetail();
  book2.showDetail();
}