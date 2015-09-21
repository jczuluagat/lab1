boolean modulo(int n){
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
int cont=0;
int[] serie;
int max;
//int F=51;
//int m;
//int ancho;
void setup(){ 
  serie= new int [50];
  
 //size(500,500);
     for(e=0;e<70;e++){
         m=modulo(e);
           if (m==true){
              serie[cont]=e;
          printArray(serie[cont]);  
          cont=cont+1;}       
           else {
         cont=cont;}
 }
 
 //ancho=width/(abundant(12));
  //m=abundant(12);
  //for(int l=0;l<(abundant(12));l++){
    //fill(255);
  //rect(l*ancho,0,ancho, 50);
  //rect(0,0,l*ancho,l*ancho);
  //}
  
  
}

//void draw(){
//printArray(serie);
//}