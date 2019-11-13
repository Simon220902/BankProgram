Knap       kontoknap1 = new Knap(30, 100);
Knap       kontoknap2 = new Knap(330, 100);

TekstFelt  tekstFelt = new TekstFelt(30, 40);

KontoFelt  kontoFelt1 = new KontoFelt(30, 150);
KontoFelt  kontoFelt2 = new KontoFelt(330, 150);

CheckBox indsaetBegge = new CheckBox(330, 40, "Indsæt på begge konti");

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
    k.registrerKlik();
  }


  if (kontoknap1.erKlikket()) {
    if (indsaetBegge.erChecket()) {
      kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
      kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    } else {
      kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    }
  }  

  if (kontoknap2.erKlikket()) {
    if (indsaetBegge.erChecket()) {
      kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
      kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    } else {
      kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
      tekstFelt.ryd();
    }
  }  


  kontoFelt1.tegn();
  kontoFelt2.tegn();
}

void keyPressed() {
  tekstFelt.tilfojTegn();
}
