class Knap {
  //Teksten til knappen hardcodes til hvad der skal stå på indsæt/træk knappen
  String tekst    = " Tryk for indsæt beløb på KONTO1";

  //Position hardcodes.
  float xPosition = 10, yPosition  = 5;

  //Størrelsen hardcodes
  float hojdeKnap = 25, breddeKnap = 250;

  //Variable til om knappen er klikket
  boolean klikket;
  
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
    text(tekst, xPosition, yPosition+15);
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
