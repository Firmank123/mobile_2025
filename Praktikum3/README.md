## 1. Apa itu Function
Function adalah blok kode reusable untuk tugas spesifik. Memiliki (opsional) tipe kembalian, nama, parameter, dan body.
```dart
int tambah(int a, int b) {
  return a + b;
}
int kali(int a, int b) => a * b; // arrow
```

## 2. Jenis Parameter
1. Required positional  
```dart
void f(int a, String b) {}
f(10, 'hi');
```
2. Optional positional ([])  
```dart
void g(int a, [int? b]) {}
g(1);
g(1, 2);
```
3. Named optional ({})  
```dart
void h({int? a, String? label}) {}
h(a: 10);
```
4. Named required  
```dart
void k({required int a, required String msg}) {}
k(a: 1, msg: 'ok');
```
5. Default value  
```dart
void step([int s = 1]) {}
void mode({String m = 'auto'}) {}
```
6. Kombinasi  
```dart
int hitung(int base, {int factor = 1, int bonus = 0}) =>
  (base * factor) + bonus;
```
7. Generic  
```dart
T first<T>(List<T> items) => items.first;
```

## 3. First-Class Objects
Fungsi bisa disimpan, dikirim, dikembalikan.
```dart
int tambah(int a, int b) => a + b;
void operasi(int x, int y, int Function(int,int) op) {
  print(op(x, y));
}
void main() {
  var fn = tambah;
  operasi(3, 4, fn);
  operasi(5, 2, (a, b) => a - b);
}
```

## 4. Anonymous Functions
Fungsi tanpa nama (lambda / closure inline).
```dart
void main() {
  var list = [1, 2, 3];
  list.forEach((n) {
    print('Angka: $n');
  });
  var ganda = list.map((n) => n * 2);
  print(ganda.toList());
}
```

## 5. Lexical Scope vs Closure
- Lexical scope: ruang lingkup ditentukan oleh posisi di kode.
- Closure: fungsi yang menangkap variabel luar dan mempertahankan state.
```dart
void main() {
  int x = 10;
  void inner() => print(x); // scope
  inner();
}
```
```dart
Function counter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}
void main() {
  var c1 = counter();
  print(c1()); // 1
  print(c1()); // 2
  var c2 = counter();
  print(c2()); // 1
}
```

## 6. Mengembalikan Multiple Value
Gunakan Records (Dart 3), class, Map, atau List.

### a. Record
```dart
(String nama, int usia) getData() => ('Rani', 20);
void main() {
  var (n, u) = getData();
  print('$n - $u');
}
```
Named record:
```dart
({int sum, int diff}) calc(int a, int b) => (sum: a + b, diff: a - b);
void main() {
  var r = calc(8, 3);
  print(r.sum);
  print(r.diff);
}
```

### b. Class
```dart
class Pair {
  final int sum;
  final int diff;
  Pair(this.sum, this.diff);
}
Pair calc(int a, int b) => Pair(a + b, a - b);
```

### c. Map
```dart
Map<String, int> calc(int a, int b) => {
  'sum': a + b,
  'diff': a - b,
};
```

### d. List
```dart
List<int> calc(int a, int b) => [a + b, a - b];
```
