class Komponent implements Action{
  float x, y, w, h;
  boolean klikket;

  void tegn(){}
  void doClickedAction(){}
  void doNotClickedAction(){}
  
  void registrerKlik() {
    if (mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h) {
      //Vi bruger nu kun klikket når vi tegner knap
      klikket = true;
      doClickedAction();
    } else {
      //Vi bruger nu kun klikket når vi tegner knap
      klikket = false;
      doNotClickedAction();
      //action.doClickedAction();
    }
  }
  

  boolean erKlikket() {
    return klikket;
  }
}
