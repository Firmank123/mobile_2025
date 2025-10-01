// ...existing code...
void main() {
  // Map dengan tipe yang konsisten
  final gifts = <String, String>{
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  final nobleGases = <int, String>{
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  final mhs1 = <String, String>{};
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['third'] = 'M. Firmansyah';
  mhs1['fourth'] = '2341720099';
  mhs1['fifth'] = 'golden rings';

  final mhs2 = <int, String>{};
  mhs2[2] = 'helium';
  mhs2[3] = 'M. Firmansyah';
  mhs2[10] = 'neon';
  mhs2[15] = '2341720099';
  mhs2[18] = 'argon';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
// ...existing code...