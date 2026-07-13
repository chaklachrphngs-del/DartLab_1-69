abstract class PaymentMethod {
  void pay(double amount);
}

// คลาสที่นำไปใช้ (Implement Interface)
// ใช้ implements เพราะต้องการบังคับให้ทุกคลาสสร้าง (pay) ใหม่เอง 
// โดยไม่ต้องรับช่วงต่อโครงสร้างภายใน ต่างจาก 'extends' ที่เน้นสืบทอดคุณสมบัติร่วม

class CreditCard implements PaymentMethod {
  String cardNumber;
  CreditCard(this.cardNumber);

  void pay(double amount) {
    print('ชำระเงินจำนวน $amount บาท ผ่านบัตรเครดิตหมายเลข $cardNumber สำเร็จ');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;
  PromptPay(this.phoneNumber);

  void pay(double amount) {
    print('ชำระเงินจำนวน $amount บาท ผ่าน PromptPay ($phoneNumber) สำเร็จ');
  }
}

class CashOnDelivery implements PaymentMethod {
  String address;
  CashOnDelivery(this.address);

  void pay(double amount) {
    print('เลือกชำระเงินปลายทางจำนวน $amount บาท เตรียมจัดส่งที่: $address');
  }
}

void main() {
  
  PaymentMethod card = CreditCard('XXXX-XXXX-1234');
  PaymentMethod qr = PromptPay('091-xxx-xxxx');
  PaymentMethod cod = CashOnDelivery('123/45 กทม.');

  card.pay(1250.0);
  qr.pay(450.0);
  cod.pay(3200.0);
}