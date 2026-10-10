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