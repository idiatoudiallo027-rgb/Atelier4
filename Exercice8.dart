class Livre {
  String titre;
  String auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $_pages");
  }

  static void afficherTotalLivres() {
    print("Nombre total de livres créés : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  void afficherGenre() {
    print("Genre: $genre");
  }

  @override
  void afficherInfos() {
    super.afficherInfos();
    afficherGenre();
  }
}

void main() {
  Livre livre1 = Livre("Les Misérables", "Victor Hugo");
  Livre livre2 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
  Livre livre3 = Livre("Amkoulel peulh", "Hampate Ba");

  livre1.afficherInfos();
  livre2.afficherInfos();
  livre3.afficherInfos();

  Roman roman1 = Roman("1984", "George Orwell", "Anticipation");
  Roman roman2 = Roman("Le Père Goriot", "Honoré de Balzac", "Réaliste");

  roman1.afficherInfos();
  roman2.afficherInfos();

  Livre.afficherTotalLivres();
}
