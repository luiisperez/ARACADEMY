<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="mat_info.aspx.cs" Inherits="ARAcademy.site.student.mat_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align:center">
        <h2 style="color:#00194f; font-weight:bold"> Información académica matemática </h2>
        <p style="font-size:large"> En el siguiente apartado podrá encontrar información sobre los módulos de la materia</p>
    </div>

    <div class="container" style="margin-top:5%; margin-bottom:5%">
        <div id="accordion">
            <div class="card">
              <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapseOne" style="color:black">
                  Primer Curso
                </a>
              </div>
              <div id="collapseOne" class="collapse" data-parent="#accordion">
                <div class="card-body">

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 1: Orientación Espacial, plano y espacio</h4>
                            <p>
                                Posición de objetos respecto a uno mismo y de otro objeto.
                                <br />
                                Relación de posición entre objetos o en sí mismo (delante/detrás de)
                                <br />
                                Realiza consignas dadas de ejercicios de motricidad variados y orientación espacial.
                                <br />
                                Líneas y superficies (Líneas rectas y curvas), (Líneas abiertas y cerradas)
                                <br />
                                Regla (uso de la misma)- Identificar clases de líneas
                                <br />
                                Línea cerrada: elementos, circunferencia y círculo: diferencia.
                                <br />
                                Formas geométricas plana: cuadradas y rectangulares
                                <br />
                                Formas geométricas planas: triangulares y circulares
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 2: Conociendo los Números</h4>
                            <p>
                                Lectura y escritura de los números del 1 al 50
                                <br />
                                Lectura y escritura de los números del 50 al 99
                                <br />
                                Valor posicional hasta la decena. Equivalencia entre decenas y unidades, redondeo a la decena
                                <br />
                                Descomposición de números en forma aditiva
                                <br />
                                Números pares menores que 100
                                <br />
                                Números impares menores que 100
                                <br />
                                Series ascendentes y descendentes de números menores de 100
                                <br />
                                Introducción a los números ordinales: nombre y grafía hasta el sexto
                                <br />                        
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 3: Operaciones - Sumas</h4>
                            <p>
                                Suma: concepto, signo y elementos
                                <br />
                                Suma con dos sumandos de una cifra – Suma con dos sumandos donde un sumando sea cero
                                <br />
                                Ordenar y sumar números de dos cifras (propiedad conmutativa)
                                <br />
                                Sumas de dos números de dos cifras, incluyendo el cero
                                <br />
                                Sumas llevando con números de dos cifras
                                <br />
                                Series ascendentes y descendentes de cadencia 1;2 y 10
                                <br />
                                Contar de manera ascendente y descendente de 2 en 2,de 3 en 3 y de 5 en 5
                                <br />
                                Problemas: análisis y resolución (suma)
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 4: Operaciones - Resta</h4>
                            <p>
                                Resta: concepto, signo y elementos
                                <br />
                                Restas con dos números de una cifra
                                <br />
                                Restas con dos números de dos cifras sin llevadas (o pedir prestado)
                                <br />
                                Ordenar y restar números de dos cifras (minuendo mayor que el sustraendo)
                                <br />
                                Series descendentes de cadencia 1,2 y 10
                                <br />
                                Cuenta de forma descendentes de cadencia 3 y 5
                                <br />
                                Efectuar restas de una o dos cifras minuendo mayor que el sustraendo
                                <br />
                                Problemas: análisis y resolución (resta)
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 5: Operaciones - Multiplicación</h4>
                            <p>
                                Multiplicación: sumandos iguales. Tabla del 0,1,2
                                <br />
                                Tabla de multiplicar del 5: construcción
                                <br />
                                Concepto de doble (en números inferiores a 10)
                                <br />
                                Series ascendentes de cadencia 10 (a partir de un número acabado en cero o en 5 
                                <br />
                                Series descendentes de cadencia 10 a partir de un número acabado en cero o en 5
                                <br />
                                Series ascendentes de cadencia 20 (a partir de un número acabado en cero o en 5
                                <br />
                                Series descendentes de cadencia 20 a partir de un número acabado en cero o en 5
                                <br />
                                Número anterior y posterior a un número dado (menor que 100)
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 6: Magnitudes y medidas de peso y capacidad</h4>
                            <p>
                                Largo y ancho en objetos
                                <br />
                                Medición de longitud utilizando: unidades naturales y unidades convencionales
                                <br />
                                Medidas de longitud: metro, centímetro
                                <br />
                                Reconocer longitudes de aproximado 1 metro o 1 centímetro
                                <br />
                                Medir longitudes en metros y centímetros con la regla o cinta métrica
                                <br />
                                Medidas de Peso: kilogramo
                                <br />
                                Medidas de Capacidad: asociación y comparación 
                                <br />
                                Medidas de Capacidad: medición (patrón no convencional)
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 7: Moneda y medida de tiempo</h4>
                            <p>
                                Monedas y billetes hasta 20 euros
                                <br />
                                Equivalencia entre monedas y billetes
                                <br />
                                Calcular entre dos conjuntos (monedas o billetes) cual tiene mayor valor monetario
                                <br />
                                Utilizar combinaciones adecuadas para reunir 20 euros (monedas y billetes)
                                <br />
                                Medidas de tiempo: horas y medias horas
                                <br />
                                Días de la semana
                                <br />
                                Meses del año y estaciones
                                <br />
                                Relación entre:
                                <br />
                                Meses – días
                                <br />
                                Semanas – días
                                <br />
                                Día - hora
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 8: Estadística y Probabilidades</h4>
                            <p>
                                Recolección de datos: información cuantificable
                                <br />
                                Utilización adecuada de la palabra: frecuencia y los términos más frecuentes y menos frecuentes
                                <br />
                                Organización de datos: tabla de datos
                                <br />
                                Completar tabla de datos según información obtenida
                                <br />
                                Organización de datos: pictogramas
                                <br />
                                Completar un pictograma según información obtenida
                                <br />
                                Organización de datos: gráficos de barras
                                <br />
                                Completar y construye gráficos de barras
                                <br />                              
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

              </div>
            </div>
            </div>

            <div class="card">
              <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo" style="color:black">
                Segundo Curso
              </a>
              </div>
              <div id="collapseTwo" class="collapse" data-parent="#accordion">
                <div class="card-body">

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 1: Conociendo los Números</h4>
                                <p>
                                    Números hasta la centena: escritura en letras
                                    <br />
                                    Números hasta la centena: escritura en cifras
                                    <br />
                                    Valor posicional hasta la centena: relación y redondeo
                                    <br />
                                    Descomposición de números en forma aditiva
                                    <br />
                                    Números pares – impares
                                    <br />
                                    Número anterior y posterior a un número dado
                                    <br />
                                    Series ascendentes y descendentes hasta el 999
                                    <br />
                                    Números ordinales hasta el décimo
                                    <br />                              
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 2: Operaciones: Suma</h4>
                                <p>
                                    Suma: términos. Suma en forma horizontal
                                    <br />
                                    Suma: propiedades
                                    <br />
                                    Suma (sin llevadas)de dos números de dos cifras (en forma vertical)
                                    <br />
                                    Suma(en forma vertical)de dos números de tres cifras (sin llevadas)
                                    <br />
                                    Suma de un número de dos cifras con otro de una 
                                    <br />
                                    Suma de dos números de dos cifras (ambos múltiplo de 10)
                                    <br />
                                    Suma: un múltiplo de 10 con otro de dos cifras
                                    <br />
                                    Problemas sencillos
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 3: Operaciones: Restas </h4>
                                <p>
                                    Resta: términos. Restas en forma horizontal
                                    <br />
                                    Resta (sin llevadas)de dos números de dos cifras (en forma vertical)
                                    <br />
                                    Resta(sin llevadas)de dos números de tres cifras (en forma vertical)
                                    <br />
                                    Resta de un número de dos cifras con otro de una (minuendo mayor que  el sustraendo)
                                    <br />
                                    Resta de dos números de dos cifras (ambos múltiplo de 10), (minuendo mayor que  el sustraendo)
                                    <br />
                                    Resta: un múltiplo de 10 con otro de dos cifras
                                    <br />
                                    Prueba de la resta
                                    <br />
                                    Problemas sencillos
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 4: Operaciones: Multiplicación </h4>
                                <p>
                                    Multiplicación: concepto - términos
                                    <br />
                                    Propiedades de la multiplicación
                                    <br />
                                    Tablas de multiplicar del 1 al 5. Ejercicios
                                    <br />
                                    Tablas de multiplicar del 6 y 7- Ejercicios
                                    <br />
                                    Tablas de multiplicar del 8 al 10. Ejercicios
                                    <br />
                                    Doble o mitad; anterior – posterior de un número
                                    <br />
                                    Series ascendentes y descendente de cadencia 3,5 o 5 a partir de un número
                                    <br />
                                    Problemas: tabla de multiplicación del 1 al 10
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 5: Medición </h4>
                                <p>
                                    Medidas de Longitud
                                    <br />
                                    Medidas de Capacidad
                                    <br />
                                    Medidas de Peso
                                    <br />
                                    Lectura del reloj: digital y analógico
                                    <br />
                                    Relaciones entre minuto – hora - día
                                    <br />
                                    Días de la semana, meses y año: relación entre ellas
                                    <br />
                                    Establecer relaciones entre las medidas de tiempo
                                    <br />
                                    Problemas relacionados con mediciones
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 6: Sistema monetario </h4>
                                <p>
                                    Monedas
                                    <br />
                                    Billetes hasta 5 euros
                                    <br />
                                    Equivalencia entre las monedas
                                    <br />
                                    Equivalencia entre los billetes
                                    <br />
                                    Equivalencia entre los diferentes billetes y monedas
                                    <br />
                                    Comparación de conjuntos monetarios y determinar el de mayor valor
                                    <br />
                                    Combinación de billetes para reunir cantidades (máximo 50 euros)
                                    <br />
                                    Combinación de billetes y monedas para reunir cantidades (máximo 50 euros)
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 7: Geometría </h4>
                                <p>
                                    Líneas rectas – curvas – mixtas
                                    <br />
                                    Líneas poligonales. Punto
                                    <br />
                                    Polígonos: reconocerlos
                                    <br />
                                    Identificar lado y vértice en un polígono
                                    <br />
                                    Rectas perpendiculares – paralelas (reconocerlas)
                                    <br />
                                    Trazar rectas paralelas o perpendiculares.
                                    <br />
                                    Dibujo: Triángulo – rectángulo – cuadrado
                                    <br />
                                    Perímetro de figuras geométricas
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                            </div>
                            <div class="col-8">
                                <h4>Módulo 8: Estadística y Probabilidades </h4>
                                <p>
                                    Recoger y registrar información cuantificable (tabla)
                                    <br />
                                    Diagrama de barras
                                    <br />
                                    Tabla de doble entrada
                                    <br />
                                    Gráficas sectoriales
                                    <br />
                                    Diagrama lineales
                                    <br />
                                    Lectura e interpretación de representaciones gráficas
                                    <br />
                                    Problemas: tablas de doble entrada y gráficas
                                    <br />
                                    Noción de secesos
                                    <br />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                            </div>
                        </div>

                </div>
              </div>
              </div>
            <div class="card">
              <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree" style="color:black">
                  Tercer Curso
                </a>
              </div>
              <div id="collapseThree" class="collapse" data-parent="#accordion">
                    <div class="card-body">

                     <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 1: Conociendo los Números </h4>
                            <p>
                                Nombre y grafía de números hasta seis cifras
                                <br />
                                Valor posicional hasta 6 cifras. Redondeo a la unidad
                                <br />
                                Sistema de numeración decimal: equivalencia entre sus elementos
                                <br />
                                Descomposición de números en forma aditiva
                                <br />
                                Descomposición de números en forma aditiva – multiplicativa (números menores de 10.000)
                                <br />
                                Comparación y ordenación de números naturales: signo < y >
                                <br />
                                Números ordinales hasta el vigésimo: su utilización. 
                                <br />
                                Números romanos: nombre y grafía del 1 al 10
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 2: Operaciones Numericas I </h4>
                            <p>
                                Series numéricas ascendentes  de cadencia 2 – 10 - 100 
                                <br />
                                Series numéricas de cadencia 5 – 25 de un múltiplo de 5 – 25 ascendente respectivamente
                                <br />
                                Series numéricas de cadencia 50 de un múltiplo de 50 (ascendente)
                                <br />
                                Propiedades de la suma
                                <br />
                                Suma hasta cuatro cifras (con/sin llevados)
                                <br />
                                Suma números de 2 o 3 cifras con otro de una cifra, múltiplo de 10-100-1000
                                <br />
                                Problemas de suma
                                <br />
                                Problemas combinados: suma - resta
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 3:  Operaciones Numéricas II </h4>
                            <p>
                                Series numéricas descendente de cadencia 2 y 10 
                                <br />
                                Series numéricas descendente de cadencia 100 
                                <br />
                                Series numéricas descendente de cadencia 5 y 25 a partir de un múltiplo de 5 y 25 
                                <br />
                                Series numéricas descendente de cadencia 50 de un múltiplo de 50 
                                <br />
                                Resta hasta cuatro cifras (con/sin llevada)
                                <br />
                                Redondeo de cifras (resultado)
                                <br />
                                Problemas de resta
                                <br />
                                Problemas combinados: sumas y restas
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 4: Operaciones: Multiplicación </h4>
                            <p>
                                Multiplicación en forma de sumandos iguales y viceversa
                                <br />
                                Propiedades de la multiplicación
                                <br />
                                Completar productos. Tabla de multiplicar
                                <br />
                                Multiplicación hasta la centena por una cifra
                                <br />
                                Multiplicación hasta centena por dos cifras
                                <br />
                                Multiplicación: números de una cifra, múltiplos de 10 y 100
                                <br />
                                Problemas de números hasta la centena por una cifra
                                <br />
                                Problemas: números hasta la centena por dos cifras
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 5: Operaciones: División  </h4>
                            <p>
                                Asociar división con repartir
                                <br />
                                Términos de la división
                                <br />
                                Algoritmo para efectuar divisiones
                                <br />
                                Completar divisiones: exactas e inexactas
                                <br />
                                Mitad y tercera parte de números pares y múltiplos de 3
                                <br />
                                Cuarta parte de números múltiplo de 4
                                <br />
                                Divisiones sencillas entre múltiplos de 10
                                <br />
                                Problemas sencillos
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 6: Operaciones Fracciones y Equivalencias  </h4>
                            <p>
                                Fracción  propia
                                <br />
                                Términos de una fracción
                                <br />
                                Representación de fracciones (denominador menor que 10)
                                <br />
                                Lectura y escritura de fracciones (denominador menor que 10)
                                <br />
                                Fracciones equivalentes
                                <br />
                                Equivalencia entre euros y céntimos
                                <br />
                                Equivalencia en forma fraccionaria y decimal entre monedas de 1,5,10 y 50 céntimos y euro
                                <br />
                                Ordenar cantidades con o sin céntimos
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 7: Mediciones  </h4>
                            <p>
                                Medidas de longitud: múltiplos y submúltiplos, equivalencia
                                <br />
                                Adición y sustracción de medidas de longitud
                                <br />
                                Medidas de peso: Kilogramo y gramo, equivalencia
                                <br />
                                Adición y sustracción de medidas de peso
                                <br />
                                Medidas de capacidad: litro – centilitro
                                <br />
                                Suma y resta de medidas de capacidad
                                <br />
                                Medidas de tiempo. Reloj digital y analógico
                                <br />
                                Múltiplos y submúltiplos del euro. Equivalencias
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 8: Geometría  </h4>
                            <p>
                                Sistema de coordenadas cartesianas
                                <br />
                                Ángulos y su clasificación
                                <br />
                                Rectas en el plano
                                <br />
                                Figuras geométricas
                                <br />
                                Perímetro y área de un polígono
                                <br />
                                La circunferencia. Elementos básicos
                                <br />
                                Cuerpos geométricos. Poliedros
                                <br />
                                Regularidades y simetrías
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 9: Estadística y Probabilidades  </h4>
                            <p>
                                Datos cualitativos y cuantitativos
                                <br />
                                Frecuencia. Organización de información
                                <br />
                                Tabla de datos
                                <br />
                                Tabla de doble acción
                                <br />
                                Diagrama de barras
                                <br />
                                Problemas (gráfica y tabla de doble entrada)
                                <br />
                                Sucesos
                                <br />
                                Representación gráfica y tablas de los sucesos
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>
                        
                    </div>
                  </div>
                </div>
            <div class="card">
              <div class="card-header">
                <a class="card-link" data-toggle="collapse" href="#collapseFour" style="color:black">
                  Cuarto Curso
                </a>
              </div>
              <div id="collapseFour" class="collapse" data-parent="#accordion">
                <div class="card-body">

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 1: Conociendo los Números   </h4>
                            <p>
                                Lectura y escritura con cifras y letras de números hasta el 100.000
                                <br />
                                Valor posicional de las cifras (números naturales menores que 100.000) (o hasta la decena de mil)
                                <br />
                                Descomposición de números en forma aditiva
                                <br />
                                Descomposición de números en forma aditivo multiplicativo
                                <br />
                                Ordena números naturales menores que 100.000 en forma ascendente
                                <br />
                                Ordena números naturales menores que 100.000 en forma descendente
                                <br />
                                Números ordinales hasta el 30°
                                <br />
                                Números romanos 1 al 10 (Nombre y grafía)
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 2: Operaciones Numericas I   </h4>
                            <p>
                                Automatizar el algoritmo de la suma
                                <br />
                                Suma con resultado menores que 100.000
                                <br />
                                Automatizar el algoritmo de la resta
                                <br />
                                Automatizar el algoritmo de la multiplicación (multiplicando hasta 3 cifras y multiplicador por dos cifras)
                                <br />
                                División: términos y algoritmo para dividir
                                <br />
                                Divisiones: dividendo hasta 5 cifras y divisor de una cifra
                                <br />
                                Prueba de división en casos sencillos
                                <br />
                                Problemas sencillos combinados
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 3: Fracciones /Números decimales   </h4>
                            <p>
                                Fracción: concepto, términos y representación
                                <br />
                                Fracción propias e impropia
                                <br />
                                Fracción mixta o número mixto
                                <br />
                                Valor posición de números decimales
                                <br />
                                Equivalencia entre fracciones y decimales (euros-céntimos)
                                <br />
                                Lectura de precios dados en euros
                                <br />
                                Números decimales en una recta graduada
                                <br />
                                Semejanzas de la moneda, y el significado de los decimales en diversas magnitudes
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 4: Magnitudes y medidas   </h4>
                            <p>
                                Medidas de longitud.
                                <br />
                                Problemas de longitud 
                                <br />
                                Medida y comparación de superficie
                                <br />
                                Medida de peso: múltiplos y submúltiplos equivalencias
                                <br />
                                Suma y resta medidas de peso
                                <br />
                                Medidas de capacidad: múltiplos y submúltiplos
                                <br />
                                Suma, resta y ordena medidas de capacidad
                                <br />
                                Problemas de peso y capacidad
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 5: Sistema monetario EUR. Medidas de tiempo   </h4>
                            <p>
                                Redondeo de precios con céntimos a euros
                                <br />
                                Suma y resta cantidades expresadas en euros y céntimos
                                <br />
                                Equivalencia entre las medidas de tiempo (relojes analógicos y digitales)
                                <br />
                                Relación de fracción de hora a minutos
                                <br />
                                Expresar la hora de un reloj digital en forma analógico y viceversa
                                <br />
                                Equivalencia entre las unidades de tiempo
                                <br />
                                Expresar en minutos y segundos cantidades de tiempo, ordenarlas
                                <br />
                                Medidas de tiempo: trimestre, lustro, siglo.
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 6: Geometría, Estadística y probabilidad   </h4>
                            <p>
                                Rectas: tipos, semirectas y segmentos
                                <br />
                                Ángulos: clasificación
                                <br />
                                Polígonos: clasificación
                                <br />
                                Triángulos: clasificación y representación
                                <br />
                                Circunferencia y círculo
                                <br />
                                Cálculo de área: formulas
                                <br />
                                Poliedros: partes
                                <br />
                                Simetría
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 7: Estadística y probabilidad   </h4>
                            <p>
                                Recoger y registrar información cuantificable
                                <br />
                                Organizar información en gráficos sencillos
                                <br />
                                Tabla de frecuencia: elementos
                                <br />
                                Elabora y completa tabla sencilla de doble entrada
                                <br />
                                Interpretación de pictogramas
                                <br />
                                Interpretación de diagrama de barras
                                <br />
                                Problemas (interpretación de datos estadísticos)
                                <br />
                                Estimaciones sobre sucesos
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

              </div>
            </div>
            </div>
            <div class="card">
              <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseFive" style="color:black">
                Quinto Curso
              </a>
              </div>
              <div id="collapseFive" class="collapse" data-parent="#accordion">
                <div class="card-body">

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 1:  Conociendo los Números    </h4>
                            <p>
                                Lee y escribe con cifras y letras números menores que un millón
                                <br />
                                Descomposición en forma aditiva y aditiva-multiplicativa
                                <br />
                                Redondeo de números menores que un millón
                                <br />
                                Múltiplos
                                <br />
                                Divisores
                                <br />
                                Números primos y números compuestos
                                <br />
                                Reglas de divisibilidad 2,5,10
                                <br />
                                Numeración romana: L, C, D, M (escritura y lectura)
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 2: Números decimales   </h4>
                            <p>
                                Números decimales: Valor de posición y uso
                                <br />
                                Lectura y escritura (con cifras o letras) de números decimales hasta tres cifras decimales
                                <br />
                                Equivalencia correspondiente entre unidades, décimas, centésimas y milésimas
                                <br />
                                Ordena números decimales
                                <br />
                                Redondeo de números decimales al número natural más cercano
                                <br />
                                Divisiones no exactas hallando cocientes con dos decimales
                                <br />
                                Relación entre decimal y fracción (con decimales finitos)
                                <br />
                                Ordena fracciones, según su correspondiente expresiones decimales
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 3: Operaciones   </h4>
                            <p>
                                Suma y resta de números naturales y decimales
                                <br />
                                Multiplicaciones con números naturales y decimales (multiplicando hasta cuatro cifras y multiplicador hasta tres cifras)
                                <br />
                                Divisiones enteras con números naturales (hasta seis cifras en el dividendo y tres en el divisor)
                                <br />
                                Divisiones con números decimales en el dividendo y naturales en el divisor (una cifra)
                                <br />
                                Divisiones con números decimales en el dividendo y naturales en el divisor (dos cifras)
                                <br />
                                Multiplicación y división de números naturales por la unidad seguida de cero
                                <br />
                                Multiplicación y división de números decimales por la unidad seguida de cero
                                <br />
                                Potencia: concepto. Potencias de base 10
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 4:  Fracciones   </h4>
                            <p>
                                Expresión fraccionaria de decimales sencillos
                                <br />
                                Valor numérico de una fracción entre dos naturales consecutivos
                                <br />
                                Situar fracciones en una recta graduado
                                <br />
                                Fracciones equivalentes
                                <br />
                                Simplificación de fracción y ordenar fracciones de igual denominador
                                <br />
                                Transformar una fracción impropia en número mixto y viceversa
                                <br />
                                Fracción de un número natural.
                                <br />
                                Suma y resta de fracciones con igual denominador
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 5: Magnitudes y medidas   </h4>
                            <p>
                                Sistema métrico decimal.
                                <br />
                                Equivalencia entre las unidades de medida
                                <br />
                                Cambios de unidades
                                <br />
                                Medidas de superficie
                                <br />
                                Expresa en forma simple medidas dadas en forma compleja
                                <br />
                                Sumas y restas con expresiones numéricas del sistema métrico decimal o en el sistema sexagesimal
                                <br />
                                Problemas con medidas angulares
                                <br />
                                Problemas de tiempo y horas
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 6: Geometría   </h4>
                            <p>
                                Coordenadas cartesianas
                                <br />
                                Ángulos. Posiciones. Figuras geométricas
                                <br />
                                Triángulo: clasificación 
                                <br />
                                Triángulos: ángulos interiores, altura
                                <br />
                                Cuadriláteros: clasificación
                                <br />
                                Simetría: trazado de figuras simétricas
                                <br />
                                Posiciones relativas de rectas y circunferencia. Cuerpos redondos
                                <br />
                                Cálculo de perímetros y áreas
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 7: Estadística y probabilidad   </h4>
                            <p>
                                Variables estadísticas
                                <br />
                                Recolección y registro de datos
                                <br />
                                Tablas de frecuencia absoluta: elaboración e interpretación
                                <br />
                                Media aritmética: cálculo
                                <br />
                                Interpretar gráficos estadísticos: diagrama de barras
                                <br />
                                Diagrama lineales
                                <br />
                                Diagrama de sectores
                                <br />
                                Problemas: calcular medias aritméticas en situaciones, práctica de la vida
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                </div>
              </div>
              </div>
            <div class="card">
              <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#collapseSix" style="color:black">
                  Sexto Curso
                </a>
              </div>
              <div id="collapseSix" class="collapse" data-parent="#accordion">
                    <div class="card-body">

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 1: Números   </h4>
                            <p>
                                Lectura y escritura de números naturales. Números negativos
                                <br />
                                Descomposición en forma aditiva y aditivo-multiplicativa de un número natural
                                <br />
                                Redondeo de números naturales
                                <br />
                                Múltiplo – divisor de un número
                                <br />
                                Múltiplo de un número menor que 100
                                <br />
                                Reglas de divisibilidad por 2,3,5 y 10 
                                <br />
                                Divisores de cualquier número menor que 100
                                <br />
                                Potenciación
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 2: Operaciones - Fracciones   </h4>
                            <p>
                                m.c.m, y m.c.d de dos números naturales
                                <br />
                                Equivalencia de fracciones
                                <br />
                                Simplificación y ampliación de fracciones
                                <br />
                                Suma y resta de fracciones con el mismo denominador
                                <br />
                                Suma y resta de fracciones con diferentes denominadores.
                                <br />
                                Multiplicación entre números enteros y fracciones
                                <br />
                                Fracción de un número dado. Expresión decimal de una fracción
                                <br />
                                Multiplicación y división de fracciones
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 3: Operaciones Numéricas I   </h4>
                            <p>
                                Equivalencia entre unidades, décimas, centésimas y milésimas
                                <br />
                                Expresiones decimales equivalentes
                                <br />
                                Ordenar números decimales
                                <br />
                                Redondeo de números decimales
                                <br />
                                Descomposición de números decimales
                                <br />
                                Porcentaje. Problemas
                                <br />
                                Equivalencia entre porcentajes, decimales y fracciones
                                <br />
                                Regla de tres de proporcionalidad directa
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 4: Operaciones Numéricas II   </h4>
                            <p>
                                Suma con decimales
                                <br />
                                Resta con decimales
                                <br />
                                Propiedades de la adición y multiplicación
                                <br />
                                Multiplicación: propiedad distributiva
                                <br />
                                Multiplicación de números naturales por números hasta 3 cifras
                                <br />
                                Multiplicación de números naturales o decimales en cualquiera de los términos
                                <br />
                                Multiplicación de números naturales y decimales por la unidad seguida de ceros
                                <br />
                                Problemas combinados
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 5: Operaciones División y Potencia   </h4>
                            <p>
                                División: entre una cifra. Por la unidad seguida de ceros
                                <br />
                                División de números naturales (hasta 3 cifras en el divisor)
                                <br />
                                División de números decimales y enteros en el divisor
                                <br />
                                División de números naturales y divisor número decimal
                                <br />
                                División de número decimal y número decimal en el divisor 
                                <br />
                                Divisiones inexactas: obteniendo decimales indicados
                                <br />
                                Potenciación. Potencia de base 10
                                <br />
                                Uso del paréntesis y jerarquía de las operaciones
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 6: Magnitudes y medidas   </h4>
                            <p>
                                Medidas de longitud
                                <br />
                                Medidas de volúmenes
                                <br />
                                Sistema Métrico Decimal
                                <br />
                                Suma, resta, las medidas estudiadas en forma simple o compleja, el resultado se dará en la unidad elegida
                                <br />
                                Multiplicación de un número, las medidas estudiadas, el resultado se dará en la unidad elegida
                                <br />
                                Compara y ordena medidas de una misma magnitud
                                <br />
                                Comparación de superficies planas, por descomposición y medición
                                <br />
                                Resolución de problemas utilizando las unidades de medida usuales
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 7: Geometría   </h4>
                            <p>
                                Representaciones (croquis – planos – maquetas)
                                <br />
                                Instrumentos de dibujos y herramientas tecnológicas
                                <br />
                                Triángulos: lados, ángulos y alturas (tres)
                                <br />
                                Simetría respecto a un eje determinado
                                <br />
                                Reproducción de figuras sencillas utilizando: regla, compás, transportador
                                <br />
                                Ampliaciones y reducciones
                                <br />
                                Prismas o pirámides y sus partes
                                <br />
                                Identificar aristas o caras que son paralelas o perpendiculares en un cuerpo geométrico
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <img src="/site/home/images/Background_Log_Adm.png" style="width:90%"/>
                        </div>
                        <div class="col-8">
                            <h4>Módulo 8: Figuras Geométricas - Áreas  </h4>
                            <p>
                                Área del triángulo: fórmula y aplicación
                                <br />
                                Área del rectángulo: fórmula y aplicación
                                <br />
                                Área del cuadrado: fórmula y aplicación
                                <br />
                                Área del rombo y romboide: fórmula y aplicación
                                <br />
                                Área del trapecio: fórmula y aplicación
                                <br />
                                Cálculo del área de figuras geométricas sencillas
                                <br />
                                Volumen de ortoedro
                                <br />
                                Resolución de problemas de cálculo de áreas
                                <br />
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11" style="margin:auto; border-bottom:solid; border-color:#c4c4c4; margin-bottom:2%; margin-top:2%">
                        </div>
                    </div>
                        
                    </div>
                  </div>
                </div>
        </div>
    </div>
    

</asp:Content>
