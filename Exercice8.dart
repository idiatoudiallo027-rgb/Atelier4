class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }
}

void main() {
  Livre livre1 = Livre("Les Misérables", "Victor Hugo");
  Livre livre2 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  Livre livre3 = Livre("Amkoulel peulh", "Hampate Ba");

  livre1.afficherInfos();
  livre2.afficherInfos();
  livre3.afficherInfos();
}
