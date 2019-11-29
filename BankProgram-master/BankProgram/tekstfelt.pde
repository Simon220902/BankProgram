class TekstFelt extends Komponent {
  boolean iFokus  = false;
  StringBuffer input = new StringBuffer();

  TekstFelt(float x, float y) {
    super.x = x;
    super.y = y;
    super.w = 245;
    super.h = 35;
  }
  @Override
    void tegn() {
    rect(x+5, y, w, h);

    fill(0);
    if (frameCount%20<12 && iFokus)rect(x+75+ input.length()*8, y+3, 10, h-5);
    fill(100);
    rect(x, y, 73, h);
    fill(0);
    text("TAST BELØB: " +input.toString() + "   KR", x, y + 25);
  }
  @Override
  void doClickedAction(){
    iFokus = true;
  }
  @Override
  void doNotClickedAction(){
    iFokus = false;
  }
  //Kunne laves til en aktion senere
  void tilfojTegn() {
    if (key==BACKSPACE && input.length() > 0) {
      input.deleteCharAt(input.length()-1);
    } else if (iFokus) {
      input.append(key);
    }
  }

  void ryd() {
    input.delete(0, input.length());
  }

  float hentBelob() {
    float belob = 0;
    if (input.length() > 0) {
      try {
        belob =  Float.parseFloat(input.toString());
      }
      catch(NumberFormatException e) {
        println("Det er ikke et tal");
      }
    }

    return belob;
  }
}
