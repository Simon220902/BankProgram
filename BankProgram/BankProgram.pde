//Opgave 1. Skriv kommentarer i programmet, der forklarer hvad programmet gør! tjek
//Opgave 2. Giv knappen og tekstfeltet et "bedre" visuelt udtryk tjek
//Opgave 3. Lav kontoen om til et objekt tjek
//Opgave 4. Opret flere konto-objekter tjek
//Opgave 5. Opret flere knap-objekter tjek
//Opgave 6. Forbind knapperne med hver konto , så du kan indsætte på de forskellige konti tjek
//Udfordring 7. Prøv at udtænk en måde at visualisere konto bevægelser
//Udfordring 8. Prøv at udtænke en måde at give din konto en rente

//Knappen er blevet en slags "superclass", der både indeholder knappen selv, tekstfeltet og kontoen
ArrayList<InputAndButton> indsaet = new ArrayList<InputAndButton>();
Konto konto1 = new Konto("Konto", 10, 210);
Konto opsparing = new Konto("Opsparing", 400, 210);
int valgtFeltI = 1;

void setup() {
  size(1000, 500);
  frameRate(60);
  indsaet.add(new InputAndButton(konto1.x, konto1.y-200, konto1));
  indsaet.add(new InputAndButton(opsparing.x, opsparing.y-200, opsparing));
}

void draw() {
  clear();
  for (InputAndButton inb: indsaet){
    inb.draw();
    inb.update();
    if (inb.feltValgt() && !inb.equals(indsaet.get(valgtFeltI))){
      println("nu ændres det: "+inb.konto.kontonavn);
      indsaet.get(valgtFeltI).feltAfVaelg();
      valgtFeltI = indsaet.indexOf(inb);
    }
  }
}

//Hvis der er blevet trykket på en tast så tilføj det til det valgte tekstfelt
void keyPressed() {
  indsaet.get(valgtFeltI).tilfojTegn();
}
