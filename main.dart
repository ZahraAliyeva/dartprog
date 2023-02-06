
import 'dart:io';

void main() {
    
    String productName = "Computer";
    int productNumber = 2;
    double productPrice = 1200;


    if(productNumber >= 1) {
      print("Product name: $productName \nProduct number: $productNumber \nProduct price: $productPrice");
            
      print("-------------------------------------------");
      print("Odenis usulu secin: \n1)Kart \n2)Nagd \n3)Kredit");
      print("Seciminiz:");
      int? secim = int.parse(stdin.readLineSync()!);

      if(secim == 1){
        print("Odenis hansi Bankla olsun?(Bank1; Bank2; Bank3)");
        print("Bank seciminiz:");
        int bank = int.parse(stdin.readLineSync()!);
        switch(bank) {
          case 1:        
            print("Odenis Bank1 ile edildi");
            break;
          case 2:
            print("Odenis Bank2 ile edildi");
            break;
          case 3:
            print("Odenis Bank3 ile edildi");
            break;
          default:
            print("Odenis edilmedi!");
            break;
        }
      
      } else if (secim ==2) {
        print("Odenis nagd edildi!");
      } else if (secim ==3) {
        print("Kredit secimleri: \n1) 3 Ayliq(Faizsiz) \n2) 6 ayliq(10%) \n3) 12 ayliq(40%)");
        print("\nSeciminizi daxil edin:");
        int kredit = int.parse(stdin.readLineSync()!);
                
        if(kredit == 1) {
          num ay = (productPrice*productNumber)/3; 
          print("Faiz yoxdur. Her ay $ay manat odemelisiniz");
        }else if(kredit ==2) {
          productPrice *= 1.1;
          double ay = (productPrice*productNumber)/6;
          print("Faiz 10%. Her ay $ay manat odemelisiniz");
        }else if(kredit ==3) {
          productPrice *= 1.4;
          double ay = (productPrice*productNumber)/12;
          print("Faiz 40%. Her ay $ay manat odemelisiniz");
        }else {
          print("Bu xidmetimiz movcud deyil...");
        }
      } else {
        print("Duzgun secim edin !!!");
      }
    } else {
      print("Sebetde mehsul yoxdu");
    }

    
}