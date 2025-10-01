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
}
