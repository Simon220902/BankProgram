class TekstFelt {
  //Variablen der skal indeholde brugerens input
  StringBuffer input = new StringBuffer();

  //Tegn tekstfeltet på et bestemt sted.
  void tegn() {
    rect(10, 25, 250, 35, 0, 0, 10, 10);
    fill(0);
    text("TAST BELØB: " +input.toString(), 10, 50);
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
