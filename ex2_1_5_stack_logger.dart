mixin Loggable {
  void log(String msg) => print('[LOG ${DateTime.now()}]: $msg');
}

class Stack<T> with Loggable {
  final List<T> _storage = [];

  void push(T element) {
    _storage.add(element);
    log('Push: $element');
  }

  T pop() {
    T element = _storage.removeLast();
    log('Pop: $element');
    return element;
  }
}

void main() {
  print(' ทดสอบ Stack + Mixin ');
  Stack<String> names = Stack<String>();
  names.push('A');
  names.push('B');
  names.pop();
  
  Stack<int> numbers = Stack<int>();
  numbers.push(10);
  numbers.pop();
}