class CheckBox extends Komponent {  
  boolean checket = false;
  String checkInfo;
  CheckBox(float x, float y, String checkInfo) {
    super.x = x;
    super.y = y;
    super.h = 25;
    super.w = 25;
    this.checkInfo = checkInfo;
  }
  @Override
    void registrerKlik() {
    if (!checket && mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h ) {
      checket = true;
    } else if (checket && mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h ) {
      checket = false;
    }
  }

  @Override
    void tegn() {
    fill(255);
    text(checkInfo, x+w+5, y+h/3*2);
    if (checket) {
      //Hvis den er valgt skal boksen være grå
      fill(150);
      rect(x, y, w, h, 10);
      //med et hvidt checkmark
      stroke(255);
      //Checkmarket, det består af to linjer
      line(x+3, y+h/2+3, x+w/2, y+h-3);
      line(x+w/2, y+h-3, x+w-3, y+5);
      noStroke();
    } else {
      //ellers skal det bare være en hvid boks
      rect(x, y, w, h, 10);
    }
  }

  boolean erChecket() {
    return checket;
  }
}
