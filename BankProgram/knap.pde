class Knap extends GUIElem {
  //Teksten til knappen hardcodes til hvad der skal stå på indsæt/træk knappen
  String tekst = "";

  //Variable til om knappen er klikket
  boolean klikket = false;

  Knap(String tekst, int x, int y, String kontonavn) {
    this.tekst = tekst+kontonavn;
    super.x = x;
    super.y = y;
    //Størrelsen hardcodes
    super.h = 25;
    super.w = 250;
  }

  @Override
    void draw() {
    //Baggrunden skal være rød, hvis knappen ikke er blevet klikket
    fill(100, 0, 0);

    //Ellers skal den være (lidt grøn lidt rød?)
    if (klikket) {
      fill(0, 100, 0);
    }

    //Knappen tegnes
    //Jeg har rundet dets hjørner
    rect(super.x, super.y, w, h, 10, 10, 0, 0);

    //Knappens tekst tegnes (hvid)
    fill(255);
    text(tekst, x+5, y+15);
  }

  void registrerKlik() {
    //Hvis musen er klikket og at den er indenfor knappens område
    if (mousePressed && mouseX < x +w && mouseX > x && mouseY > y && mouseY < y + h) {
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
