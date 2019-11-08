class TekstFelt extends GUIElem {
  //Variablen der skal indeholde brugerens input
  StringBuffer input = new StringBuffer();

  //Om den er valgt eller ej
  boolean valgt = false;

  TekstFelt(int x, int y) {
    super.x = x;
    super.y = y;
    //Størrelse
    super.w = 250;
    super.h = 35;
  }

  @Override
    //Tegn tekstfeltet på et bestemt sted.
    void draw() {
    //Hvis tekstfeltet ikke er valgt er det gråt, hvis det er valgt så er det hvidt
    if (valgt) {
      fill(255);
    } else {
      fill(150);
    }
    rect(x, y, w, h, 0, 0, 10, 10);
    fill(0);
    text("TAST BELØB: " +input.toString(), x+5, y*1.5);
  }

  void tilfojTegn() {
    //Jeg fandt ud af at værdien af backspace charen var 8, så
    if ((int) key != 8) {
      //Prop det i stringbufferen
      input.append(key);
    } else if (input.length()>0) {
      //Hvis det er backspace der trykket så slet det.
      input.delete(input.length()-1, input.length());
    }
  }

  void ryd() {
    //Slet det hele
    input.delete(0, input.length());
  }

  void registrerKlik() {
    //Hvis musen er klikket og at den er indenfor knappens område
    if (mousePressed && mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h) {
      valgt = true;
    }
  }

  //Få beløbet der står i tekstfeltet
  float hentBelob() {
    //En variabel til beløbet
    float belob = 0;
    //Hvis der er noget i stringbufferen
    if (input.length() > 0) {
      //Prøv at lave det til et float, hvis det er et float returner det, ellers skriv en fejlbesked
      try {
        belob =  Float.parseFloat(input.toString());
      }
      catch(NumberFormatException e) {
        println("Det var ikke et tal!!");
      }
    }
    return belob;
  }
}
