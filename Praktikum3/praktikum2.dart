void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};

  // .add()
  names1.add("M. Firmansyah");
  names1.add("2341720099");
  names1.add("names1");

  // .addAll()
  names2.addAll({"M. Firmansyah", "2341720099", "names2"});

  print(names1);
  print(names2);
}
