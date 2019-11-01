//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør! tjek
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk tjek
//Opgave 3. Lav kontoen om til et objekt tjek
//Opgave 4. Opret flere konto-objekter
//Opgave 5. Opret flere knap-objekter
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti
//Udfordring 7. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 8. Prøv at udtænke en måde at give din konto en rente
Konto konto1 = new Konto("Konto1", 0);
Knap       kontoknap1 = new Knap();
TekstFelt  tekstFelt = new TekstFelt();


void setup() {
  size(1000, 500);
  frameRate(60);
}
 
void draw() {
  clear();
  //Tegn knappen,
  kontoknap1.tegn();
  //tjek om der er klikket
  kontoknap1.registrerKlik();
  //tegn feltet
  tekstFelt.tegn(); 
  
  //hvis der er blevet klikket på knappen
  if (kontoknap1.erKlikket()) {
    //Læg det indtastede beløb til konto1 og fjern teksten i feltet
    konto1.indsaet(tekstFelt.hentBelob());
    tekstFelt.ryd();
  }
  
  //Tegn kontoens værdi og navn
  konto1.udskrivKonto();
}
//Hvis der er blevet trykket på en tast så tilføj det til tekstfeltet
void keyPressed() {
  tekstFelt.tilfojTegn();
}
