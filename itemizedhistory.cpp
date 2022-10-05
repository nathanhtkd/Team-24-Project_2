
#include <iostream>
#include <vector>
#include <string>
#include <math.h>
#include <fstream>
#include <sstream>
#include <limits>
#include <cstdlib>
#include <iomanip> 
using namespace std;



int main() {

    std::ofstream file;
    file.open("saleshistory.csv");

    if (!file.is_open()) {
       cout << "file not open";
    }
    file << "date" <<  "," << "item" << ","<< "price" << "\n"; 



    
    string entree[] = {"honeysesamechicken", "orangechicken",         
    "blackpepperangussteak", "generaltsochicken", "stringbeanchickenbreast"
    , "sweetfirechickenbreast", "kungpaochicken", "mushroomchicken",
    "blackpepperchicken", "grilledteriyakichicken", "broccolibeef", 
    "beijingbeef", "honeywalnutshrimp", "eggplanttofu"};

    string sides[] =
    {"mixedvegetables", "chowmein", "friedrice", 
    "whiterice","brownrice", "chickenpotsticker",
    "creamcheeserangoon", "chickeneggroll",
    "veggiespringroll",
    "crispyshrimp"};

    string catagory[] = {"bowl", "plate", "bigplate"};

    double total_price = 0.00;
    int eidx;
    int eidx2;
    int eidx3;
    int sidx;
    int cidx;

int count = 4;
for(int i = 0; i <= 21; i++){
   
    int gameday; //game days are the 10th and 17
    if(count == 10 || count == 17){
        gameday = 5000.00;
    }else{
        gameday = 3000.00;
    }
    
    while(total_price <= gameday){
        if(count < 10){
         file << "2022-09-0" << to_string(count) << ",";
        }else {
         file << "2022-09-" << to_string(count) << ",";
        }
       
            eidx = rand() % 14;
            eidx2 = rand() % 14;
            eidx3 = rand() % 14;
            sidx = rand() % 10; 
            cidx = rand() % 5; //0,1,2,3,4,
      

        if(cidx == 0){
            //it's a bowl 
            file << "bowl:" << entree[eidx] << " " << sides[sidx] <<
                "," << "6.70" << "\n";
            total_price += 6.70;
        }else if(cidx == 1){
            //plate
            file << "plate:" << entree[eidx] << " " <<
                entree[eidx2] << " " << sides[sidx] <<
                "," << "8.20" << "\n";
            total_price += 8.20;
        }else if(cidx == 2){
            //bigplate
            file << "bigplate:" << entree[eidx] << " " <<
                entree[eidx2] << " " << entree[eidx3]   << " " << sides[sidx] <<
                "," << "9.70" << "\n";
            total_price += 9.70;
        }else if(cidx == 3){
            //side 
            file << sides[sidx] <<
                "," << "2.70" << "\n";
            total_price += 2.70;
        }else if(cidx == 4){
            //entree
             file << sides[sidx] <<
                "," << "6.70" << "\n";
            total_price += 6.70;
        }
        
    }
    total_price = 0.0;
    count++;
    }
    


   
    file.close();
    return 0;
}