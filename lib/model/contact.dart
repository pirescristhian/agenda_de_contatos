class Contact {
  final String photo;
  final String name;
  final String cel;
  final String email;
  bool favorite;

  Contact({
    required this.photo,
    required this.name,
    required this.cel,
    required this.email,
    this.favorite = false,
  });
}
