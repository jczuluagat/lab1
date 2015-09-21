boolean abundant(int n){
 int div;
 int i;
 int aux=0;
// boolean s=false;
  for(i=1;i<n;i++){
   div=n%i;
   if(div==0){
   aux=aux+i;
   }
   else{
   aux=aux+0;
   }   
 }
 return aux>n;
 //if(aux>n)
  //s=true;
  // return s;
}
boolean m;
int e;
int serie;
//int F=51;
//int m;
//int ancho;
void setup(){ 
 //size(500,500);
     for(e=0;e<50;e++){
         m=abundant(e);
           if (m==true){
              serie.append(e);}
 }
 
 //ancho=width/(abundant(12));
  //m=abundant(12);
  //for(int l=0;l<(abundant(12));l++){
    //fill(255);
  //rect(l*ancho,0,ancho, 50);
  //rect(0,0,l*ancho,l*ancho);
  //}
  printArray(serie);
}
//void draw(){
//printArray(serie);
//}