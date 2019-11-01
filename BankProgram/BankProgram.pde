//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør! tjek
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk tjek
//Opgave 3. Lav kontoen om til et objekt tjek
//Opgave 4. Opret flere konto-objekter tjek
//Opgave 5. Opret flere knap-objekter tjek
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti tjek
//Udfordring 7. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 8. Prøv at udtænke en måde at give din konto en rente

//Knappen er blevet en slags "superclass", der både indeholder knappen selv, tekstfeltet og kontoen
ArrayList<Knap> knapper = new ArrayList<Knap>();
TekstFelt valgteFelt = null;

void setup() {
  size(1000, 500);
  frameRate(60);
  knapper.add(knapper.size(), new Knap("Sæt penge ind på ", 10, 5, "Konto"));
  knapper.add(knapper.size(), new Knap("Sæt penge ind på ", 400, 5, "Opsparing"));
}


void draw() {
  clear();
  for (Knap k : knapper) {
    //Tegn knappen
    k.tegn();
    //Tegn tekstfeltet
    k.felt.tegn();
    //Udskriv kontoen
    k.felt.konto.udskrivKonto();
    //tjek om der er klikket
    k.registrerKlik();
    //Tjek om der er blevet klikket på et tekstfelt
    if (mousePressed && mouseX < k.felt.x + k.felt.w && mouseX > k.felt.x && mouseY > k.felt.y && mouseY < k.felt.y + k.felt.h) {
      //Hvis der er blevet valgt et felt så sæt det tidligere valgte felt til ikke at være valgt og sæt det nye til at være valgt
      if (!(valgteFelt == null)) {
        valgteFelt.valgt = false;
        valgteFelt = k.felt;
        valgteFelt.valgt = true;
      }
      //Hvis der ikke er valgt et felt endnu så vælg det felt der blevet klikket på
      else {
        valgteFelt = k.felt;
      }
    }
    //hvis der er blevet klikket på knappen
    if (k.erKlikket()) {
      //Læg det indtastede beløb til konto1 og fjern teksten i feltet
      k.felt.konto.indsaet(k.felt.hentBelob());
      k.felt.ryd();
    }
  }
}

//Hvis der er blevet trykket på en tast så tilføj det til det valgte tekstfelt
void keyPressed() {
  valgteFelt.tilfojTegn();
}
