class GUIInterface {
  ArrayList<GUIElem> elements = new ArrayList<GUIElem>();
  int x, y;

  void draw() {
    for (GUIElem GUI : elements) {
      GUI.draw();
    }
  }
}

class InputAndButton extends GUIInterface {
  Konto konto;
  int knapI = 0;
  int tekstI = 1;

  InputAndButton(int x, int y, Konto konto) {
    super.x = x;
    super.y = y;
    this.konto = konto;
    //Vi lægger knappen i listen af GUI elementer
    elements.add(new Knap("Sæt penge ind ", super.x, super.y, this.konto.kontonavn));
    elements.add(new TekstFelt(super.x, super.y+elements.get(knapI).h));
  }

  void update() {
    for (GUIElem GUI : elements) {
      GUI.registrerKlik();
    }
    konto.udskrivKonto();
    //Hvis der er klikket på knappen
    if (elements.get(knapI).erKlikket()) {
      //Så få beløbet fra teksteltet og sæt det ind på kontoen
      konto.indsaet(elements.get(tekstI).hentBeloeb());
      elements.get(tekstI).ryd();
    }
  }

  void tilfojTegn() {
    elements.get(tekstI).tilfoejTegn();
  }

  void feltAfVaelg() {
    elements.get(tekstI).valgt = false;
  }

  boolean feltValgt() {
    return elements.get(tekstI).valgt;
  }
}

class GUIElem {
  int x, y, w, h;
  boolean valgt;
  void registrerKlik(){}
  boolean erKlikket(){return false;}
  float hentBeloeb(){return 0;}
  void ryd(){}
  void tilfoejTegn(){}
  void draw(){}
}
