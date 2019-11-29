//tilføjet for: checkbox, knap, 
//mangler: stadig at håndetere det i koden nedenunder
//mangler: tekstfelt


TekstFelt  tekstFelt = new TekstFelt(30, 40);

KontoFelt  kontoFelt1 = new KontoFelt(30, 150);
KontoFelt  kontoFelt2 = new KontoFelt(330, 150);

CheckBox indsaetBegge = new CheckBox(330, 40, "Indsæt på begge konti");

Knap       kontoknap1 = new IndsaetKnap(30, 100, kontoFelt1, kontoFelt2, tekstFelt);
Knap       kontoknap2 = new IndsaetKnap(330, 100, kontoFelt2, kontoFelt1, tekstFelt);


ArrayList<Komponent> komponenter = new ArrayList<Komponent>();

void setup() {
  size(1000, 500);
  frameRate(60);
  kontoknap1.tekst = "Tryk for indsæt beløb på KONTO1";
  kontoknap2.tekst = "Tryk for indsæt beløb på KONTO2";
  komponenter.add(kontoknap1);
  komponenter.add(kontoknap2);
  komponenter.add(tekstFelt);
  komponenter.add(kontoFelt1);
  komponenter.add(kontoFelt2);
  komponenter.add(indsaetBegge);
}

void draw() {
  clear();
  for (Komponent k : komponenter) {
    k.tegn();
  }

  kontoFelt1.tegn();
  kontoFelt2.tegn();
}

void mousePressed() {
  for (Komponent k : komponenter) {
    k.registrerKlik();
  }
}

void keyPressed() {
  tekstFelt.tilfojTegn();
}
