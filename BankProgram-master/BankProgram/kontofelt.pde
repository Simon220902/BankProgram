class KontoFelt extends Komponent {
  float formue = 0;


  KontoFelt(float x, float y) {
    super.x = x;
    super.y = y;
    super.w = 250;
    super.h = 70;
  }

  void tegn() {
    fill(200);
    rect(x, y, w, h);
    fill(0);

    textSize(32);
    text(formue + "KR", x, y + 50);
    textSize(12);
  }
}
