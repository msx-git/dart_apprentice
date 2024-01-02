enum Roles { athlete, bandMember, unionMember }

void main() {
  var talaba = Talaba("Tom", "Cruise");
  talaba.roles.add(Roles.athlete);
  talaba.roles.add(Roles.bandMember);
  talaba.roles.add(Roles.unionMember);
  print(talaba);
}

class Shaxs {
  final String name;
  final String surName;

  Shaxs(this.name, this.surName);
}

class Talaba extends Shaxs {
  Talaba(super.name, super.surName);

  @override
  String toString() {
    return 'Talaba{name: $name, surname: $surName, roles: $roles}';
  }

  final roles = <Roles>[];
}
