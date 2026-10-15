class Connectable {
  void connecter(String utilisateur) {}
  void deconnecter() {}
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Accès autorisé pour l'utilisateur $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Fermeture de la connexion sécurisée.");
  }
}

void main() {
  List<Connectable> services = [ServeurAPI(), BaseDeDonnees()];

  for (var service in services) {
    service.connecter("Idiatou");
    service.deconnecter();
    print("");
  }
}
