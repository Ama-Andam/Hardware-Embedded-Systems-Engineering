// Day 3/365

/* 
For today I am gonna implement the half adder in C
*/

#include<stdio.h>
#include<stdint.h>


struct results {
    uint8_t S;
    uint8_t Cout;
};

struct results fulladder(uint8_t A, uint8_t B) {
    //Revised something here, the function should return a struct, initially I used int
    //and it was returning only the Cout and not both outputs
    
    struct results r; 

    r.S    = A ^ B;
    r.Cout = A & B;

    return r;
}

void main(){

uint8_t a;
uint8_t b;
uint8_t s;
uint8_t c;


printf("A B S Cout\n");

//Test A - 0 B - 0
a = 0;
b = 0;
struct results out = fulladder(a, b);
s = out.S;
c = out.Cout;

printf("%d %d  %d   %d \n",a,b,s,c);

//Test A - 0 B - 1
a = 0;
b = 1;
out = fulladder(a, b);
s = out.S;
c = out.Cout;

printf("%d %d  %d   %d \n",a,b,s,c);

//Test A - 1 B - 0 
a = 1;
b = 0;
out = fulladder(a, b);
s = out.S;
c = out.Cout;

printf("%d %d  %d   %d \n",a,b,s,c);


//Test A - 1 B - 1
a = 1;
b = 1;
out = fulladder(a, b);
s = out.S;
c = out.Cout;

printf("%d %d  %d   %d \n",a,b,s,c);

}
