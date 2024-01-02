void main() {
  final localData = LocalStorage();
  localData.save();
  localData.retrieve();

  final cloudData = CloudStorage();
  cloudData.save();
  cloudData.retrieve();
}

abstract class Storage {
  void save();

  void retrieve();
}

class LocalStorage extends Storage {
  @override
  void retrieve() {
    print("Data is retrieved from Local storage.");
  }

  @override
  void save() {
    print("Data is saved to Local storage.");
  }
}

class CloudStorage extends Storage {
  @override
  void retrieve() {
    print("Data is retrieved from Cloud storage.");
  }

  @override
  void save() {
    print("Data is saved to Cloud storage.");
  }
}
