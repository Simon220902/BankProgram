class Konto {
  //Member variabler kontonavn, konto (pengene på kontoen), og positionen.
  String kontonavn;
  float konto;
  int x, y;

  //Vi har to construcere en til hvis kun et kontonavn og position er givet, hvor konto så bare skal være 0 og en anden hvor man også kan give konto en startvaerdi
  Konto(String s, int x, int y) {
    this(s, 0, x, y);
  }

  Konto(String s, float startvaerdi, int x, int y) {
    kontonavn = s;
    konto = startvaerdi;
    this.x = x;
    this.y = y;

  }

  void indsaet(float beloeb) {
    //Beløbet lægges til kontoen
    konto += beloeb;
  }

  //En funktion, der først tegner kontonavnet og derefter værdien nedenunder.
  void udskrivKonto() {
    fill(255);
    textSize(32);
    text(kontonavn, x, y);
    text(konto, x, y+50);
    textSize(12);
  }
}
