class Knap {
  //Teksten til knappen hardcodes til hvad der skal stå på indsæt/træk knappen
  String tekst;

  //Position hardcodes.
  float xPosition, yPosition;

  //Størrelsen hardcodes
  float hojdeKnap = 25, breddeKnap = 250;

  //Variable til om knappen er klikket
  boolean klikket = false;
  
  //Det felt som er knyttet til knappen
  TekstFelt felt;

  Knap(String tekst, float x, float y, String kontonavn){
    this.tekst = tekst+kontonavn;
    xPosition = x;
    yPosition = y;
    felt = new TekstFelt(new Konto(kontonavn, xPosition, yPosition+200), xPosition, yPosition+hojdeKnap, breddeKnap, hojdeKnap+10);
  }
  
  void tegn() {
    //Baggrunden skal være rød, hvis knappen ikke er blevet klikket
    fill(100, 0, 0);

    //Ellers skal den være (lidt grøn lidt rød?)
    if (klikket) {
      fill(0, 100, 0);
    }

    //Knappen tegnes
    //Jeg har rundet dets hjørner
    rect(xPosition, yPosition, breddeKnap, hojdeKnap, 10, 10, 0, 0);

    //Knappens tekst tegnes (hvid)
    fill(255);
    text(tekst, xPosition+5, yPosition+15);
    
    //Tegn tekstfeltet og kontoen
    felt.tegn();
    felt.konto.udskrivKonto();
  }

  void registrerKlik() {
    //Hvis musen er klikket og at den er indenfor knappens område
    if (mousePressed && mouseX < xPosition +breddeKnap && mouseX > xPosition && mouseY > yPosition && mouseY < yPosition + hojdeKnap) {
      klikket = true;
      
    } else {
      //Hvis den ikke er klikket eller klikket ikke var over knappen så skal den sættes til falsk.
      klikket = false;
    }
  }

  //En funktion, der kan fortælle om objektet er blevet klikket eller ej.
  boolean erKlikket() {
    return klikket;
  }
}
