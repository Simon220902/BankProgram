class CheckBox extends Komponent {  
  boolean checket = false;
  String tekst;
  CheckBox(float x, float y, String tekst) {
    super.x = x;
    super.y = y;
    super.h = 25;
    super.w = 25;
    this.tekst = tekst;
  }
 
  @Override
    void tegn() {
    fill(255);
    text(tekst, x+w+5, y+h/3*2);
    if (checket) {
      //Hvis den er valgt skal boksen være grå
      fill(150);
      rect(x, y, w, h, 5);
      //med et hvidt checkmark
      stroke(255);
      strokeWeight(3);
      //Checkmarket, det består af to linjer
      line(x+3, y+h/2+3, x+w/2, y+h-3);
      line(x+w/2, y+h-3, x+w-3, y+5);
      noStroke();
    } else {
      //ellers skal det bare være en hvid boks
      rect(x, y, w, h, 5);
    }
  }
  
  @Override
  void doClickedAction(){
    this.checket = !this.checket;
  }
  
  boolean erChecket() {
    return checket;
  }
}
