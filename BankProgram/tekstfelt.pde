class TekstFelt {
  //Variablen der skal indeholde brugerens input
  StringBuffer input = new StringBuffer();
  //Den tilknyttede konto
  Konto konto;
  //Position
  float x, y;
  //Størrelse
  float w = 250;
  float h = 35;
  
  //Om den er valgt eller ej
  boolean valgt = false;
  
  TekstFelt(Konto konto, float x, float y, float w, float h){
    this.konto = konto;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  
  //Tegn tekstfeltet på et bestemt sted.
  void tegn() {
    //rect(10, 25, 250, 35, 0, 0, 10, 10);
    if (valgt){
      fill(255);
    }else{
      fill(150);
    }
    rect(x, y, w, h, 0, 0, 10, 10);
    fill(0);
    text("TAST BELØB: " +input.toString(), x+5, y*2);
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
