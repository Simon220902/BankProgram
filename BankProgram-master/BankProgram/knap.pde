class Knap extends Komponent {
  String tekst;

  Knap(float x, float y) {
    super.x = x;
    super.y = y;
    super.h = 25;
    super.w = 250;
  }

  @Override
    void tegn() {
    fill(100, 0, 0);
    if (super.klikket && super.musOver) {
      fill(100, 100, 0);
    } else if(super.musOver){
      fill(60, 60, 0);
    }
    rect(x, y, w, h, 10);
    fill(255);
    text(tekst, x+10, y+18);
  }
}

class IndsaetKnap extends Knap {
  KontoFelt primaer;

  KontoFelt sekundaer;
  TekstFelt tekstFelt;

  IndsaetKnap(float x, float y, KontoFelt primaer, KontoFelt sekundaer, TekstFelt tekstFelt) {
    //Fordi vi nedarver fra knap så vi skal kalde dens constructor
    super(x, y);
    this.primaer = primaer;
    this.sekundaer = sekundaer;
    this.tekstFelt = tekstFelt;
  }

  @Override
    void doClickedAction() {
    if (indsaetBegge.erChecket()) {
      primaer.formue = primaer.formue + tekstFelt.hentBelob();
      sekundaer.formue = sekundaer.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    } else {
      primaer.formue = primaer.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    }
  }
  @Override
    void doNotClickedAction() {
    super.klikket = false;
  }
}
