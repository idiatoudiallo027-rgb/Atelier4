class Couleur {
  final int r;
  final int v;
  final int b;

  //  Constructeur principal
  const Couleur(this.r, this.v, this.b);

  // Constructeurs nommés
  const Couleur.rouge() : r = 255, v = 0, b = 0;
  const Couleur.vert() : r = 0, v = 255, b = 0;
  const Couleur.bleu() : r = 0, v = 0, b = 255;

  // Méthode publique afficherCouleur()
  void afficherCouleur() {
    print('(R :$r, V :$v, B :$b)');
  }
}

void main() {
  // Création d'instances avec les instances
  var maCouleurRouge = Couleur.rouge();
  var maCouleurVert = Couleur.vert();
  var maCouleurBleu = Couleur.bleu();

  // Afficher les infos
  maCouleurRouge.afficherCouleur();
  maCouleurVert.afficherCouleur();
  maCouleurBleu.afficherCouleur();
}
