class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache tache1 = Tache(
    "s'exercer pour le devoir de Developpement d'application",
  );
  Tache tache2 = Tache("Installer Flutter");
  Tache tache3 = Tache("Se preparer pour l'examen ");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}
