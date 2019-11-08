class Knap 
  extends Komponent {
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
    if (klikket) {
      fill(100, 100, 0);
    }
    rect(x, y, w, h, 10);
    fill(255);
    text(tekst, x+10, y+18);
  }
}
