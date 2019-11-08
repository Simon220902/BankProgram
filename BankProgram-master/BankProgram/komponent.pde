class Komponent {
  float x, y, w, h;
  boolean klikket;


  void tegn() {
  }

  void registrerKlik() {
    if (mousePressed && mouseX < x + w && mouseX > x && mouseY > y && mouseY < y + h) {
      klikket = true;
    } else {
      klikket = false;
    }
  }

  boolean erKlikket() {
    return klikket;
  }
}

/*
Opgave 1.) Tekstfeltet skal modificeres så programmet ikke fejler hvis man taster andet end tal. ( brug evt. https://www.w3schools.com/java/java_try_catch.asp)
 Opgave 2.)  I programmet skal der være mindst tre forskellige gui komponent - klasser i jeres program: "TekstFelt" , "Knap" og "KontoFelt"
 Opgave 3.) De tre komponenter "TekstFelt" , "Knap" og "KontoFelt", skal nedarve fra en ny klasse kaldet "Komponent". 
 Alle klasser skal indeholde følgende tre metoder:
 1.) Metoden "tegn" der tegner komponenten og har returtype void
 2.) Metoden "registrerKlik" der registrerer et museklik og har returtype void.
 3.) Metoden "erKlikket" der viser om den er klikket og har returtype boolean.
 Opgave 4.) Gem dine komponenter i en arraylist og anvend arraylisten til at tegne og registrerer klik.
 */
