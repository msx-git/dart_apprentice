typedef MapBuilder = Map<String, int> Function(List<int>);

class Gizmo {
  Gizmo({
    required this.builder,
  });

  // Instead of this, hard to read
  // final Map<String, int> Function(List<int>) builder;

  // Prefer this, easy to read
  final MapBuilder builder;
}
