class Worker {
  String id;
  String name;
  String email;
  String phone;
  WorkerType type;

  Worker({
    required this.type,
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
}

enum WorkerType {
  doctor,
  assistant,
}
