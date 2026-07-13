import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen(
    (notification) => print('แจ้งเตือนใหม่: $notification'),
    onDone: () => print('ระบบปิด'),
  );

  controller.add('คุณมีข้อความใหม่');
  controller.add('มีคนกดถูกใจโพสต์ของคุณ');
  controller.add('ตรวจพบการเข้าสู่ระบบใหม่');
  controller.close();
}