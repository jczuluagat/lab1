//Función para detectar los numeros abundantes (retorna si el numero es o no abundante)

boolean modulo(int n){
 int div;
 int i;
 int aux=0;

  for(i=1;i<n;i++)
 {
   div=n%i;
   if(div==0)
   {
     aux=aux+i;
   }
  }
 
 return aux>n;
}
//Funcion que calcula el tamaño de la serie desde cero a un valor n
int tamserie(int n)
{
  int tamano=0;
  for(int cont=0;cont<n;cont++)  
    if (modulo(cont))tamano++;
 
  return tamano;
}


//COLOR DE FONDO Y DIMENSIONES DE LA FIGURA
void draw() 
{
  background(65,31,0);//Escogemos el color para el fondo de la pantalla color(matiz), saturación y brillo
  for (int posx = 0; posx <= width; posx+=tamfig) //Delimitamos el tamaño de nuestras figuras
  {
    pintar(posx, height);//es nuestra función de graficar, le enviamos los tamaños en x y y
    //height/3 controla la posición vertical
  } 
}
int nfig, tamfig;//Ajusta el tamaño de las figuras que se quieren ver en pantalla
void setup() {
 
  nfig=1;
  size(900, 900);//Definimos el tamaño de la ventana gráfica (alargada porque son varias figuras)(ancho, alto)
  tamfig = width/nfig;//Escogemos la cantidad de figuras = 2
  colorMode(HSB, 360, 100, 100);//escogemos los rangos de matiz, saturación y brillo
  ellipseMode(CORNER);//Definimos la posición desde la cual se ejecutará el draw(desde donde pintar)
  frameRate(10);//Esta función controla la velocidad de actualización o ejecución de la gráfica
}
//FUNCIÓN DE PINTAR
void pintar(float x, float y) 
{
  int radio = tamfig/2;//Radio de la figura (numero de figuras dividido 4)
  int acumulado=0;
  //--------------------------------------------------------/
  //Variable auxiliar que va cambiando para redibujar y generar sensación visual de movimiento
  //Inicia en un valor aleatorio entre 0 y 360 para los colores
  float llenar = random(0, 360); 
  //-------------------------------------------------------/
  
  
  
  //--------------------------------------------------------/
  //Creamos un vector con el tamaño de la serie para un valor max de 360
  int t=tamserie(radio);
  int []serie;
  serie= new int [t] ;
  //--------------------------------------------------------/
    
  
  
  //Ciclo para dibujar
  int i,suma,gama;//Variables para control de la serie
  suma=0;
  i=0;
  gama=0;
  for (int cont=0 ; cont < radio; ++cont) //-- para que grafique de afuera hacia adentro
  {
    fill(llenar, 90, 90);//Definimos como queremos que se llene la figura.
    if (modulo(cont))
    {
      serie[i]=cont;
      print(serie[i],",");
      i++;
      //suma+=cont;
      suma+=1;
      ellipse(x, suma, cont/2, cont/2);//Graficamos una elipse apartir de una esquina y variamos los radios
    }
    else ellipse(4*suma, suma, cont, cont/2);//Graficamos un cono con base circular
    
    
    llenar = (llenar + 1) % 360;//Modificamos la variable llenar para que varíe el tono degradado (esta línea fué tomada directamente del ejemplo "radialGradient").
    
  }
}