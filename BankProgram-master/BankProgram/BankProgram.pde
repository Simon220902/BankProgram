
//Udfordring 6. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 7. Prøv at udtænke en måde at give din konto en rente

Knap       kontoknap1 = new Knap(30, 100);
Knap       kontoknap2 = new Knap(330, 100);

TekstFelt  tekstFelt = new TekstFelt(30, 40);

KontoFelt  kontoFelt1     = new KontoFelt(30, 150);
KontoFelt  kontoFelt2     = new KontoFelt(330, 150);

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
}

void draw() {
  clear();
  for (Komponent k : komponenter) {
    k.tegn();
    k.registrerKlik();
  }


  if (kontoknap1.erKlikket()) {
    kontoFelt1.formue = kontoFelt1.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  

  if (kontoknap2.erKlikket()) {
    kontoFelt2.formue = kontoFelt2.formue + tekstFelt.hentBelob();
    tekstFelt.ryd();
  }  


  kontoFelt1.tegn();
  kontoFelt2.tegn();
}

void keyPressed() {
  tekstFelt.tilfojTegn();
}
