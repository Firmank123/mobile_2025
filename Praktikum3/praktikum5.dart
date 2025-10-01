void main() {
  // Langkah 1
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 2
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var hasil = tukar((17, 29));
  print(hasil);

  // Langkah 3
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('M. Firmansyah', 2341720099);
  print(mahasiswa);

  // Langkah 4
  var mahasiswa2 = ('first', a: 'M. Firmansyah', b: 2341720099, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 'M. Firmansyah'
  print(mahasiswa2.b); // Prints 2341720099
  print(mahasiswa2.$2); // Prints 'last'
}
