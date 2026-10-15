class Compte {
  final String numeroCompte;
  double _solde;
  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde => '${_solde.toStringAsFixed(2)} \$';

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
      print('Dépôt de ${montant.toStringAsFixed(2)} \$ effectué avec succès.');
    } else {
      print('Erreur : Le montant  doit être positif, reessayez.');
    }
  }
}

//Test dans le main
void main() {
  var monCompte = Compte("FR123452569", 50.0);

  print('Numéro de compte : ${monCompte.numeroCompte}');
  print('Solde initial : ${monCompte.solde}');

  // Effectuer un dépôt
  monCompte.depot(150.0);

  // Affichage
  print('Solde final : ${monCompte.solde}');
}
