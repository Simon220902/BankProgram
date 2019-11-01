class Konto {
  //Member variabler kontonavn, konto (pengene på kontoen), og positionen.
  String kontonavn;
  float konto;
  float x, y = 150;

  //Vi har to construcere en til hvis kun et kontonavn er givet, hvor konto så bare skal være 0 og en anden hvor man også kan give konto en startvaerdi
  Konto(String s){
   this(s, 0); 
  }
  
  Konto(String s, float startvaerdi) {
    kontonavn = s;
    konto = startvaerdi;
  }
  
  void indsaet(float beloeb){
    //Beløbet lægges til kontoen
    konto += beloeb;
  }
  
  //En funktion, der først tegner kontonavnet og derefter værdien nedenunder.
  void udskrivKonto() {
    fill(255);
    textSize(32);
    text(kontonavn, 200, 150);
    text(konto, 200, 200);
    textSize(12);
  }
}
