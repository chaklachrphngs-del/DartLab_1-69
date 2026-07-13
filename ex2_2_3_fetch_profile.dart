Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));
  if (userId <= 0) {
    throw Exception('ไม่พบผู้ใช้งาน: ID ต้องมากกว่า 0');
  }
  return {'id': userId, 'name': 'John', 'role': 'Admin'};
}

void main() async {
    
  try {
    var profile = await fetchProfile(1);
    print('ข้อมูลโปรไฟล์: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงานกรณีที่ 1\n');
  }

  try {
    var profile = await fetchProfile(0); // ส่ง 0 เข้าไปให้โยน Exception
    print('ข้อมูลโปรไฟล์: $profile');
  } catch (e) {
    print('เกิดข้อผิดพลาด: $e');
  } finally {
    print('จบการทำงานกรณีที่ 2');
  }
}