class Couleur {
  final int r;
  final int g;
  final int b;

  //  Constructeur principal
  const Couleur(this.r, this.g, this.b);


  // Constructeurs nommés
  const Couleur.rouge() : r = 255, g = 0, b = 0;
  const Couleur.vert() : r = 0, g = 255, b = 0;
  const Couleur.bleu() : r = 0, g = 0, b = 255;
  
  // Méthode publique afficherCouleur()
  void afficherCouleur() {
    print('(R :$r, V :$g, B :$b)');
  }
}


void main() {
  // 6. Création d'instances avec les constructeurs nommés
  var maCouleurRouge = Couleur.rouge();
  var maCouleurVert = Couleur.vert();
  var maCouleurBleu = Couleur.bleu();

  
  // Afficher les infos 
  maCouleurRouge.afficherCouleur();
  maCouleurVert.afficherCouleur();
  maCouleurBleu.afficherCouleur();
}



