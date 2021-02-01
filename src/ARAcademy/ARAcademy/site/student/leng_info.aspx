<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="leng_info.aspx.cs" Inherits="ARAcademy.site.student.leng_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align:center">
        <h2 style="color:#00194f; font-weight:bold"> Información académica Lengua y Castellano </h2>
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
                            <h4>Módulo 1: Comunicación oral: Hablar - escuchar</h4>
                            <p>
                                Vocabulario
                                <br />
                                Lenguaje y la entonación
                                <br />
                                Expresión correcta
                                <br />
                                Normas de cortesía
                                <br />
                                Descripción
                                <br />
                                Narración, expresiones temporales 
                                <br />
                                Exposición
                                <br />
                                Retahílas, adivinanzas, poemas
                                <br />
                                Prosa y verso (Literatura infantil)
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
                            <h4>Módulo 2: Comunicación escrita: leer</h4>
                            <p>
                                Lectura
                                <br />  
                                Letras: reconocerlas - grafía
                                <br />  
                                Orden alfabético
                                <br />  
                                Letras mayúsculas(de la A a la Z)
                                <br />  
                                Letras minúsculas (de la A a la Z)
                                <br />  
                                Lectura de palabras de uso frecuente
                                <br />  
                                Lectura de texto (signos de puntuación) (resumen del mismo)
                                <br />  
                                Asociación de ilustraciones con el contenido. 
                                <br />  
                                Sigue instrucciones
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
                            <h4>Módulo 3: Comunicación escrita: escribir</h4>
                            <p>
                                Diferencia entre letras y las sílabas
                                <br />
                                Dictado de sílabas y palabras
                                <br />
                                Segmenta las palabras en sílabas
                                <br />
                                Dictado de frases cortas
                                <br />
                                Uso de la mayúscula y minúscula
                                <br />
                                Caligrafía 
                                <br />
                                Identifica signos de admiración y exclamación
                                <br />
                                Copia de textos cortos
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
                            <h4>Módulo 4: Conocimiento de la lengua</h4>
                            <p>
                                Distingue vocales de consonantes
                                <br />
                                Abecedario (de memoria)
                                <br />
                                Ordenar alfabéticamente una serie de palabras escritas
                                <br />
                                Sinónimos
                                <br />
                                Antónimos 
                                <br />
                                Escritura correctamente palabras conocidas
                                <br />
                                Copia oraciones sencillas
                                <br />
                                Utilidad del punto
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
                            <h4>Módulo 1: Comunicación oral: Hablar - escuchar</h4>
                            <p>
                                Información a base de preguntas
                                <br />
                                Describir
                                <br />
                                Exposición – Narración
                                <br />
                                Reproducir textos orales. Participación en conversaciones
                                <br />
                                Recitar poemas y declamar fragmentos teatrales
                                <br />
                                Compresión de textos
                                <br />
                                Ideas, principales y secundarias
                                <br />
                                Interpretación de personajes
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
                            <h4>Módulo 2: Comunicación escrita: leer</h4>
                            <p>
                                Lectura en voz alta
                                <br />
                                Lectura en silencio
                                <br />
                                Lecturas dialogadas
                                <br />
                                Comprensión de textos
                                <br />
                                La noticia, elementos básicos
                                <br />
                                Prosa – verso
                                <br />
                                Vocabulario específico de la lectura
                                <br />
                                Lectura: literatura infantil
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
                            <h4>Módulo 3: Comunicación escrita: escribir</h4>
                            <p>
                                Presentación y caligrafía
                                <br /> 
                                Dictado de textos
                                <br /> 
                                Copia de un texto corto
                                <br /> 
                                Concibir y escribir oraciones simples
                                <br /> 
                                Concibir y escribir un párrafo narrativo o explicativo de 5 o  líneas
                                <br /> 
                                Composición de textos asociados a imágenes (anuncios – carteles) 
                                <br /> 
                                Composición de textos asociados a imágenes (comics – chistes)
                                <br /> 
                                Autocorrección de sus producciones 
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
                            <h4>Módulo 4: Conocimiento de la lengua I</h4>
                            <p>
                                Sinónimos y Antónimos
                                <br />
                                Acepciones de palabras conocidas
                                <br />
                                Identificación de oraciones en un texto
                                <br />
                                Nombres y verbos
                                <br />
                                Nombre propio y comunes. 
                                <br />
                                Femenino – masculino
                                <br />
                                Singular – plural
                                <br />
                                Género y número. Concordancia entre ellos en la oración
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
                            <h4>Módulo 5: Conocimiento de la lengua II</h4>
                            <p>
                                Tiempo verbal (presente – pasado – futuro)
                                <br /> 
                                Signos de puntuación
                                <br /> 
                                El punto y sus implicaciones ortográficas
                                <br /> 
                                Signos de interrogación y exclamación
                                <br /> 
                                Uso de la coma en las enumeraciones
                                <br /> 
                                Correspondencia entre fonema y grafía (Fonemas: K, Z, G, R)
                                <br /> 
                                Uso de palabras sencillas con:/bl/ y /br/
                                <br /> 
                                Uso de palabras sencillas con:/m.b/ y /n.v/
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
                            <h4>Módulo 1: Comunicación oral: Hablar - escuchar</h4>
                            <p>
                                Relatar acontecimientos
                                <br />
                                Inventar y modificar historias
                                <br />
                                Explicar procesos sencillos. 
                                <br />
                                Participación en conversaciones y coloquios
                                <br />
                                Expresión adecuada en las intervenciones orales
                                <br />
                                Recitado de diferentes textos y poemas
                                <br />
                                Dramatización
                                <br />
                                Transmisión de mensaje con mímica
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
                            <h4>Módulo 2: Comunicación escrita: leer</h4>
                            <p>
                                Lectura en voz alta de textos breves. 
                                <br />
                                Lectura en silencio: Comprensión de cuentos y narraciones
                                <br />
                                Responder preguntas sobre textos leídos
                                <br />
                                Fábulas
                                <br />
                                Cuentos.
                                <br />
                                Leyendas.
                                <br />
                                Romances y poemas.
                                <br />
                                Significado de palabras desconocidas por el contexto
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
                            <h4>Módulo 3: Comunicación escrita: escribir</h4>
                            <p>
                                Redacciones y dictados
                                <br />
                                Escritura de cartas: correos electrónicos
                                <br />
                                Elaboración de noticias basadas en hechos reales
                                <br />
                                Redacción de invitaciones
                                <br />
                                Composición de textos narrativos
                                <br />
                                Ampliación de oraciones utilizando y, mi, o, pero, porque, pues, etc.
                                <br />
                                Copia sin errores
                                <br />
                                Presentación de trabajos.
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
                            <h4>Módulo 4: Conocimiento de la lengua</h4>
                            <p>
                                Aumentativos y disminutivos
                                <br />
                                Sufijo
                                <br />
                                Prefijo
                                <br />
                                Familia de palabras
                                <br />
                                Sinónimo
                                <br />
                                Antónimo
                                <br />
                                Antónimos  de un adjetivo calificativo, verbo de acción o un adverbio
                                <br />
                                Uso del diccionario
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
                            <h4>Módulo 5: Conocimiento de la lengua. Morfología</h4>
                            <p>
                                Sustantivos: tipos, reconocerlos
                                <br />
                                Artículos y otros determinantes
                                <br />
                                Pronombres personales básicos
                                <br />
                                Adjetivos calificativos
                                <br />
                                Verbos
                                <br />
                                Género y número.
                                <br />
                                Identificación y clasificación de sustantivos
                                <br />
                                Oraciones - reconocer: artículos, sustantivos, verbos, adjetivos.
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
                            <h4>Módulo 6: Conocimiento de la lengua / Verbos</h4>
                            <p>
                                Identificar verbos y nombrar su infinitivo
                                <br />
                                Conjugación de verbos regulares: Presente 
                                <br />
                                Conjugación de verbos: Pretérito perfecto simple 
                                <br />
                                Conjugación de verbos: Pretérito imperfecto 
                                <br />
                                Conjugación de verbos: Futuro 
                                <br />
                                Conjugación de verbos: Presente, pretérito simple y futuro simple  (dados en infinitivo)
                                <br />
                                Identificación de verbos en una oración
                                <br />
                                Identificación de verbos y su tiempo verbal en un texto dado
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
                            <h4>Módulo 7: Comunicación escrita</h4>
                            <p>
                                Orden alfabético
                                <br />
                                Regla ortográfica: uso de la b/v y g/j
                                <br />
                                Regla ortográfica: uso de la ll/y y r/rr
                                <br />
                                Regla ortográfica: uso de la h
                                <br />
                                Regla ortográfica: uso de la c/qu y z/c
                                <br />
                                Regla ortográfica: uso de la d/z y s/z
                                <br />
                                Signos de puntuación
                                <br />
                                Uso correcto de los signos de puntuación en textos de producción propia
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
                            <h4>Módulo 1: Comunicación oral, Hablar y escuchar</h4>
                            <p>
                                "Tipos de textos orales: narración
                                <br />
                                Uso de metáforas y comparaciones en la narración de cuentos y poemas"
                                <br />
                                Tipos de textos orales: descripción; descripción de objetos, lugares y escenas
                                <br />
                                Tipos de textos orales: exposición
                                <br />
                                Creación de diversos tipos de textos orales: narrativos y descriptivos
                                <br />
                                Creación de diversos tipos de textos: expositivos y argumentativos
                                <br />
                                Resumen oralmente de un texto escuchado, manteniendo un orden
                                <br />
                                Participación en conversaciones y coloquios
                                <br />
                                Memorización y recitado de poemas. Dramatización de textos sencillos
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
                            <h4>Módulo 2: Comunicación escrita: leer - escribir</h4>
                            <p>
                                Lectura: teniendo en cuenta signos de puntuación y su relación con la entonación
                                <br /> 
                                Lectura en voz alta con corrección y ritmo adecuado
                                <br /> 
                                Lectura en silencio: textos literarios y comprende su contenido
                                <br /> 
                                Lectura en silencio: textos informativos y comprende su contenido
                                <br /> 
                                Investigar obras documentales (libros o productos multimedia)
                                <br /> 
                                Utilización de programas educativos digitales
                                <br /> 
                                Redacciones y resúmenes
                                <br /> 
                                Dictados y copias
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
                            <h4>Módulo 3: Comunicación escrita: escribir</h4>
                            <p>
                                Composición de textos narrativos
                                <br />
                                Composición de textos expositivos
                                <br />
                                Redacción de cartas y mensajes
                                <br />
                                Elaboración de noticias: hechos reales
                                <br />
                                Elaboración de instrucciones
                                <br />
                                Cumplimentar formularios, encuestas y cuestionarios sencillos 
                                <br />
                                Composición de poemas breves
                                <br />
                                Estrategia para el tratamiento de información
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
                            <h4>Módulo 5: Conocimiento de la lengua II</h4>
                            <p>
                                Verbos conjugaciones. Identificación
                                <br />
                                Conjugación de los verbos haber, ser y estar en las formas simples del indicativo
                                <br />
                                Conjugación de los verbos en todos los tiempos del modo indicativo
                                <br />
                                Uso correcto de los tiempos verbales
                                <br />
                                Sílabas tónicas: Diptongo - Hiato
                                <br />
                                Clasificación de las palabras según el número de sílabas
                                <br />
                                Clasificación de las palabras según la sílaba tónica
                                <br />
                                Reglas generales de acentuación ortográfica
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
                            <h4>Módulo 1: Comunicación oral: hablar y escuchar</h4>
                            <p>
                                Pronunciación y dicción.
                                <br />
                                Explicación del contenido de un texto dado
                                <br />
                                Comprensión literal, interpretativa y crítica de un texto
                                <br />
                                Resumir textos
                                <br />
                                Fórmulas de cortesía
                                <br />
                                Debates: participación
                                <br />
                                Poemas
                                <br />
                                Dramatización
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
                            <h4>Módulo 2: Comunicación escrita: leer</h4>
                            <p>
                                Relatos breves: comprensión y comentarios
                                <br />
                                Poema:  versos y estrofas 
                                <br />
                                Inferir con ayuda del contexto el significado de palabras y expresiones o locuciones
                                <br />
                                Reconocer ideas principales y secundarias en un texto
                                <br />
                                Extraer conclusiones 
                                <br />
                                Resumen: esquemas
                                <br />
                                Uso de la biblioteca 
                                <br />
                                Utilización responsable y eficaz de las TIC
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
                            <h4>Módulo 3: Comunicación escrita: escribir</h4>
                            <p>
                                Escritura de textos propios 
                                <br />
                                Redacción de textos narrativos 
                                <br />
                                Redacción de biografía 
                                <br />
                                Resumir el contenido de textos propios.
                                <br />
                                Reproduce textos dictados con corrección
                                <br />
                                Elaboración de informe 
                                <br />
                                Composición de pequeños poemas
                                <br />
                                Reglas ortográficas y los signos de puntuación 
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
                            <h4>Módulo 4: Conocimiento de la lengua I</h4>
                            <p>
                                Sustantivos
                                <br />
                                Comparativos y superlativos: reglas para su formación
                                <br />
                                Concordancia de género y número entre los sustantivos y los determinantes 
                                <br />
                                Determinantes artículos, sus clases
                                <br />
                                Determinantes demostrativos y posesivos
                                <br />
                                Determinantes indefinidos, numerales, interrogativos y exclamativos.
                                <br />
                                Pronombres: clasificación
                                <br />
                                Adverbios: locuciones adverbiales 
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
                            <h4>Módulo 5: Conocimiento de la lengua II</h4>
                            <p>
                                Preposiciones: función
                                <br />
                                Conjunciones: función
                                <br />
                                Interjecciones: función
                                <br />
                                Forma infinitiva de los verbos
                                <br />
                                Verbo: voz pasiva
                                <br />
                                Conjugación de verbos regulares de mayor uso en todos sus modos y tiempos
                                <br />
                                Conjugación de verbos irregulares de mayor uso en todos sus modos y tiempos
                                <br />
                                Reconocer oraciones simples en un texto. Identificar el sujeto y el predicado en una oración 
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
                            <h4>Módulo 6: Conocimiento de la lengua III</h4>
                            <p>
                                Reglas básicas de ortografía y acentuación
                                <br /> 
                                Sílabas tónicas y sílabas átonas: segmentación en sílabas
                                <br /> 
                                Clasificación de palabras según su sílaba tónica: agudas, llanas, esdrújulas y sobresdrújula
                                <br /> 
                                Diptongo - Hiato
                                <br /> 
                                Palabras homónimas
                                <br /> 
                                Ortografía correspondiente a los verbos irregulares (sigo/sigue, dirigimos/dirijamos)
                                <br /> 
                                Reglas de acentuación de: los interrogativos y exclamativos. Aplicación
                                <br /> 
                                Reglas de acentuación de las palabras compuestas. Aplicación
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
                            <h4>Módulo 7: Educación Literaria</h4>
                            <p>
                                Textos literarios: leer y reconocer tipo de textos
                                <br />
                                Lectura de textos narrativos
                                <br />
                                Interpretación de textos literarios
                                <br />
                                Recursos retóricos y métricos de los poemas
                                <br />
                                Versos y estrofas de un poema
                                <br />
                                Creación de textos literarios
                                <br />
                                Dramatización de textos literarios
                                <br />
                                Composición de textos en prosa o en versos
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
                            <h4>Módulo 1: Comunicación oral /Comunicación escrita: leer</h4>
                            <p>
                                Resumir oralmente: los contenidos de entrevistas, noticias… 
                                <br />
                                Entrevistas 
                                <br />
                                Participación en dramatizaciones de textos ajenos y de producción propia
                                <br />
                                Recitar poemas y breves textos literarios
                                <br />
                                Lectura en silencio
                                <br />
                                Resumir oralmente o por escrito textos leídos 
                                <br />
                                Estrategias eficaces para la comprensión de texto
                                <br />
                                Hipótesis: formulación
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
                            <h4>Módulo 2: Comunicación escrita.</h4>
                            <p>
                                Escribe textos de diferentes soportes, imitando modelo
                                <br />
                                Escritura de textos de diferentes tipos 
                                <br />
                                Redacción de biografías 
                                <br />
                                Emplea estrategias de búsqueda y selección de la información
                                <br />
                                Presentación de informes 
                                <br />
                                Elaboración y presentación de informes, carácter científico, geográfico o histórico
                                <br />
                                Redacción
                                <br />
                                Uso del Internet y las TIC para la realización de diversas tareas
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
                            <h4>Módulo 3: Conocimiento de la lengua I</h4>
                            <p>
                                Diccionario diferentes uso
                                <br /> 
                                Familia de palabras. 
                                <br /> 
                                Palabras homónimas 
                                <br /> 
                                Sustantivos
                                <br /> 
                                Reglas básicas de ortografía
                                <br /> 
                                Reconocimiento de diptongo – triptongo o un hiato
                                <br /> 
                                Signos de puntuación
                                <br /> 
                                Acentuación de palabras
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
                            <h4>Módulo 4: Conocimiento de la lengua II</h4>
                            <p>
                                Conjugación de verbos regulares. 
                                <br />
                                Presente imperativo de los verbos. Conjugación en voz pasiva de los verbos regulares
                                <br />
                                Conjugación de algunos verbos irregulares (uso frecuente)
                                <br />
                                Análisis morfológicos de las palabras en una oración
                                <br />
                                Oraciones simples: reconocerlas
                                <br />
                                Identificar sujeto y predicado y sus respectivos núcleos
                                <br />
                                Complemento directo e indirecto: identificarlo en el predicado
                                <br />
                                Complemento circunstanciales y sus diferentes tipos, identificarlos en el predicado
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
                            <h4>Módulo 5: Educación Literaria</h4>
                            <p>
                                Textos literarios: leer y reconocer tipo de textos
                                <br />
                                Lectura de textos narrativos
                                <br />
                                Interpretación de textos literarios
                                <br />
                                Recursos retóricos y métricos de los poemas
                                <br />
                                Versos y estrofas de un poema
                                <br />
                                Creación de textos literarios
                                <br />
                                Dramatización de textos literarios
                                <br />
                                Composición de textos en prosa o en versos
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

