// ใช้ async* และ yield ตามคำแนะนำ
Stream<String> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i.toString();
  }
  yield 'หมดเวลา!';
}

void main() async {
  print(' เริ่มนับถอยหลัง ');

  await for (String msg in countdown(3)) {
    print(msg);
  }
}