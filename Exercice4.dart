class Media {

  final String titre;

  Media(this.titre);

  // 3. Méthode afficherType
  void afficherType() {
    print("Ceci est un média générique.");
  }
}

// Classe Livre qui hérite de Media
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  // Redéfinition de la méthode afficherType()
  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}


class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre ($dureeMinutes minutes).");
  }
}



void main() {
  //  Création de la liste catalogue 
  List<Media> catalogue = [];

  //  Ajout d'instances de Livre et  Film
  catalogue.add(Livre("L'Alchimiste", "Paulo Coelho"));
  catalogue.add(Film("GoodLife", 158));
  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupéry"));
  catalogue.add(Film("Avatar", 162));

  //  Parcours de la liste
  for (var media in catalogue) {
    media.afficherType();
  }
}