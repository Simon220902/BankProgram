class Komponent {
  float x, y, w, h;
  boolean klikket;

  void tegn() {
  }

  void registrerKlik() {
    if (mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = true;
    } else {
      klikket = false;
    }
  }

  boolean erKlikket() {
    return klikket;
  }
}
