<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="ing_info.aspx.cs" Inherits="ARAcademy.site.student.ing_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align:center">
        <h2 style="color:#00194f; font-weight:bold"> Información académica inglés </h2>
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
                            <h4>Modulo 1: Normas de Cortesía, Presentaciones comprensión de palabras, textos breves y mensajes</h4>
                            <p>
                                Normas de cortesía y registros. Saludos y despedidas.
                                <br />
                                Presentaciones. Realización de preguntas y respuestas sobre aspectos personales (nombre, edad, gustos). 
                                <br />
                                Sonidos característicos de la lengua inglesa
                                <br />
                                El sonido y nombre de las letras del alfabeto
                                <br />
                                Comprensión de palabras clave y mensajes sencillos
                                <br />
                                Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                <br />
                                Comprensión de mensajes emitidos en lengua inglesa con distintos acentos. 
                                <br />
                                Uso de diccionario de imágenes.                               
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
                            <h4>Modulo 2: Diferencias foneticas, emisión de palabras y textos breves, Expresiones de Uso Habitual</h4>
                            <p>
                                Conocimiento de diferencias fonéticas básicas de la lengua inglesa a través de palabras y oraciones sencillas.
                                <br />
                                Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.   
                                <br />
                                Utilización de expresiones de uso habitual; saludar, dar las gracias, pedir permiso o ayuda, etc Vocabulario básico."
                                <br />
                                Uso de oraciones sencillas acerca de uno mismo: nombre, edad, etc.
                                <br />
                                Expresión de la posesión y cantidad (juguetes, familia).
                                <br />
                                Descripción de partes de la cara (color de ojos, pelo).
                                <br />
                                Expresión del gusto y la preferencia (favoritos).
                                <br />
                                Lenguaje de aulas y rutinas (pedir permiso, pedir prestado, ir al aseo...)                               
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
                            <h4>Modulo 3: Lectura de palabras y frases reconocimiento de palabras y signos ortograficos</h4>
                            <p>
                                Lectura de palabras y frases sencillas.
                                <br />
                                Reconocimiento de los principales sonidos de las letras en lengua inglesa y grupos de sonidos para la lectura de palabras. 
                                <br />
                                Introducción de los cuentos, comics y otros textos narrativos con alto contenido visual.
                                <br />
                                Reconocimiento de palabras de uso frecuente.
                                <br />
                                Patronos sonoros, acentuales, rítmicos y de entonación.
                                <br />
                                Acercamiento al ritmo y sonoridad de la lengua a través de canciones con la imitación de aspectos fonéticos de ritmo, series de dibujos animados, etc.
                                <br />
                                Reconocimiento de los signos ortográficos básicos (punto, coma, interrogación, exclamación).  
                                <br />
                                Uso de diccionario de imágenes.                               
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
                            <h4>Modulo 4: Copia y escritura de Vocabulario Basico, expresión de posesión y del gusto. Preposiciones</h4>
                            <p>
                                Expresión sobre los materiales con lo que están hecho las cosas (madera, piedra, ladrillo, plástico, cartón, cristal, metal).
                                <br />
                                Copia y escritura de vocabulario básico.
                                <br />
                                Expresión de posesión, cantidad y cantidad (singular y plural) en primera persona. 
                                <br />
                                Expresión del gusto en primera persona, pregunta y respuesta en afirmativa o negativa.
                                <br />
                                Estrategias de producción de textos escritos.
                                <br />
                                Planificación: Revisión y uso adecuado de los modelos previamente trabajados.
                                <br />
                                Ejecución: Expresión del mensaje con claridad ajustándose a los modelos y formulas de cada tipo de texto.
                                <br />
                                Preposiciones: in, on, under.
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
                            <h4>Modulo 5: Copia y escritura de Vocabulario Basico, expresión de posesión y del gusto. Preposiciones</h4>
                            <p>
                                Días de la semana y meses del año.
                                <br />
                                Tiempo atmosférico.
                                <br />
                                Colores y números del (1-20).
                                <br />
                                Formas geométricas (circulo, cuadrado..)
                                <br />
                                Material escolar y del aula.
                                <br />
                                Miembros de la familia (padres, hermanos..)
                                <br />
                                Comidas y bebidas.
                                <br />
                                Animales domésticos y salvajes. Descripción.                               
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
                            <h4>Modulo 6: Afirmación, negación, exclamación e Interrogación, Familia y partes de una casa</h4>
                            <p>
                                Expresión de relaciones lógicas (and)
                                <br />
                                Afirmación: affirmative sentences
                                <br />
                                Negación: negative sentences with not
                                <br />
                                Exclamación:exclamatory sentences (I love..!)
                                <br />
                                Interrogación: Wh-questions (what-where..)
                                <br />
                                Miembros de la familia (abuelos,primos, tíos)
                                <br />
                                Partes de la casa 
                                <br />
                                Uso de diccionario de imágenes                                
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
                            <h4>Modulo 7: Expresión de Posesión, tiempo, del aspecto, modalidad, capacidad y de obligación</h4>
                            <p>
                                Expresión de la posesión: Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa.
                                <br />
                                Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                <br />
                                Preguntas y respuestas sobre gustos (Do you like...?)
                                <br />
                                Expresión del tiempo: presente (present simple)
                                <br />
                                Expresión del aspecto: puntual (simple tenses)
                                <br />
                                Expresión de la modalidad: permiso (Can)
                                <br />
                                Expresion de la capacidad: poder (Can) 
                                <br />
                                Expresión de la obligación: (have (got) to)                        
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
                            <h4>Modulo 8: Expresión de la existencia, la entidad, cualidad y cantidad.</h4>
                            <p>
                                Expresión de la existencia: To be (there is/are)
                                <br />
                                Expresión de la entidad: Noums, pronoums, articles, demostratives. 
                                <br />
                                Expresión de la cualidad: (Verb-Adj)
                                <br />
                                Expresión de cantidad: singular/plural
                                <br />
                                Quantity: many, some, more.
                                <br />
                                Cardinal numbers up to two digits
                                <br />
                                Adverbio de grado; Adverbs of degree: Intensity of something (very) 
                                <br />
                                Uso de diccionario de imágenes.                               
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
                            <h4>Modulo 9: Expresión del espacio, expresiones temporales, del modo y de la posesión. Deportes y rutinas diarias.</h4>
                            <p>
                                Expresión del espacio: prepositions and adverbs of location (here, there, in, on, under) el lugar donde están las cosas.
                                <br />
                                Expresiones temporales: divisions of time (e.g. summer)
                                <br />
                                Expresiones temporales: indications of time  (e.g. now)
                                <br />
                                Expresión del modo: Adv. of manner (e.g. slowly, well)
                                <br />
                                Expresión de la posesión: (´s) cuando el poseedor es persona o animal.
                                <br />
                                Expresión de la posesión: (of) cuando el possedor es una cosa. 
                                <br />
                                Deportes. 
                                <br />
                                Las rutinas diarias.                               
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
                                <h4>Módulo 1: "Expresiones de uso Habitual. Comprensión de palabras, mesajes y textos breves</h4>
                                <p>
                                    Distinción de tipos de comprensión (sentido general, información esencial, puntos principales).
                                    <br />
                                    Utilización de expresiones de uso habitual en distintas situaciones.
                                    <br />
                                    Sonidos característicos de la lengua inglesa
                                    <br />
                                    Formulación de hipótesis sobre significados a partir de la comprensión de elementos significativos, lingüísticos y paralingüísticos.
                                    <br />
                                    Comprensión de palabras clave y mensajes sencillos
                                    <br />
                                    Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                    <br />
                                    Reformulación de hipótesis a partir de la comprensión de nuevos elementos.
                                    <br />
                                    Uso de diccionario de imágenes.                               
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
                                <h4>Módulo 2: Pronunciación, entonación, acentuación. Partes de la cara, gustos y preferencias.</h4>
                                <p>
                                    Uso de oraciones sencillas para el intercambio de información básica.
                                    <br />
                                    Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.   
                                    <br />
                                    Patrones sonoros, acentuales, ritmicos y de entonación.
                                    <br />
                                    Acercamiento al ritmo y sonoridad de la lengua a través de las rimas, retahilas, trabalenguas, canciones, adivinanzas, series de dibujos animados, etc. 
                                    <br />
                                    Apoyo en algunos aspectos de ritmo, acentuación y entonación para una correcta expresión oral.  
                                    <br />
                                    Descripción de partes de la cara (color de ojos, pelo).
                                    <br />
                                    Expresión del gusto y la preferencia (favoritos).
                                    <br />
                                    Lenguaje de aulas y rutinas (pedir permiso, pedir prestado, ir al aseo...)                              
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
                                <h4>Módulo 3: Lectura, deletreo y comprensión de palabras.</h4>
                                <p>
                                    Reconocimiento y lectura de palabras que comparten un patrón común, palabras que rimen y fonemas finales.
                                    <br />
                                    Lectura, deletreo y comprensión de palabras de uso frecuente y oraciones y textos muy sencillos.    
                                    <br />
                                    Reconocimiento de los signos ortográficos básicos.
                                    <br />
                                    Manejo de cuentos, comics y otros textos narrativos con alto contenido visual.
                                    <br />
                                    Estrategias de apoyo a la lectura: el contexto visual. 
                                    <br />
                                    Lectura de palabras y oraciones sencillas.
                                    <br />
                                    Apoyo en aspectos de ritmo, acentuación y entonación para la comprensión de textos.
                                    <br />
                                    Uso de diccionario de imágenes y de las tecnologías de la información y la comunicación como elemento de consulta y de aprendizaje.                     
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
                                <h4>Módulo 4: Relaciones Lógicas. Afirmación, Exclamación, Negación Interrogación.</h4>
                                <p>
                                    Expresión de relaciones lógicas: Conjunción (and); Disyunción (or).
                                    <br />
                                    Afirmación: affirmative sentences:Yes (/tag) 
                                    <br />
                                    Exclamación: exclamatory sentences (e.g. I love salad!); How/Adj. (e.g.How nice!)
                                    <br />
                                    Negación: Negative sentences with not, no (adj.)
                                    <br />
                                    Interrogación: Wh-questions: What, Where, How, Who-Aux.Verbs in questions: to be, to do.
                                    <br />
                                    Estrategias de producción de textos escritos.
                                    <br />
                                    Ejecución: Expresión del mensaje con claridad ajustándose a los modelos y formulas de cada tipo de texto.
                                    <br />
                                    Preposiciones: in, on, under.
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
                                <h4>Módulo 5: Calendario (días y meses) Colores y Formas geométricas. Miembros de una Familia, partes del cuerpo y partes de la casa. </h4>
                                <p>
                                    Días de la semana y meses del año.
                                    <br />
                                    Tiempo atmosférico. 
                                    <br />
                                    Colores y números del (1-30).
                                    <br />
                                    Formas geométricas (circulo, cuadrado..)
                                    <br />
                                    Partes de la casa. Objetos. Juguetes.
                                    <br />
                                    Miembros de la familia (abuelos, primos, tíos..)
                                    <br />
                                    Partes del cuerpo. Descripción.
                                    <br />
                                    Animales de granja, domésticos y salvajes. Descripción.                              
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
                                <h4>Módulo 6: Oraciones interrogaticas, Verbos. Expresión del espacio, de la modalidad, de posesión y cantidad.</h4>
                                <p>
                                    Oraciones interrogativas (How old are you? How many brothers, sisters...have you got? Where is....?)
                                    <br />
                                    Verbo “To have got” en primera y tercera persona (animales) de presente simpleen afirmativa y negativa.
                                    <br />
                                    Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                    <br />
                                    Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                    <br />
                                    Expresión del espacio, preposiciones del lugar (In-on-under). 
                                    <br />
                                    Expresión de la modalidad: capacidad (can) 
                                    <br />
                                    Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                    <br />
                                    Preguntas y respuestas sobre aspectos personales como nombre, edad, color favorito.                              
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
                                <h4>Módulo 7: Expresión del tiempo, del aspecto, la existencia, modalidad, cualidad, capacidad y de obligación</h4>
                                <p>
                                    Expresión del tiempo: presente (simple present).
                                    <br />
                                    Expresión del aspecto: puntual (simple tenses); durativo (present continuous); habitual (simple tenses) (/Adv. e.g. always, everyday).
                                    <br />
                                    Expresión de la existencia (To be; There is/ There are).
                                    <br />
                                    Expresión de la entidad (Nouns and pronouns, articles, demostratives.
                                    <br />
                                    Expresión de la cualidad (Very / Adj.)  
                                    <br />
                                    Expresión de la modalidad: permiso (Can)
                                    <br />
                                    Expresion de la capacidad: poder (Can)
                                    <br />
                                    Expresión de la obligación: (have (got) to)                              
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
                                <h4>Módulo 8: Cantidad, Números cardinales y ordinales. Cantidad</h4>
                                <p>
                                    Expresión de cantidad: singular/plural.
                                    <br />
                                    Cardinal numbers up to two digits. 
                                    <br />
                                    Ordinal numbers up to one digit.
                                    <br />
                                    Expresión de gustos y preferencias: I like/ I don´t like - I like (Verb/ing).
                                    <br />
                                    Quantity: many, some, more, (a) little.  
                                    <br />
                                    Adverbio de grado; Adverbs of degree: Intensity of something (very)
                                    <br />
                                    Uso de diccionarios de imágenes                             
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
                                <h4>Módulo 9: Expresión del espacio, expresiones temporales, del modo y de la posesión. Deportes y rutinas diarias.</h4>
                                <p>
                                    Expresión del espacio: prepositions and adverbs of location (here, there, in, on, under) el lugar donde están las cosas.
                                    <br />
                                    Expresiones temporales: divisions of time (e.g. Winter, Summer, Spring, Autum)
                                    <br />
                                    Expresiones temporales: indications of time  (e.g. now)
                                    <br />
                                    Expresión del modo: Adv. of manner (e.g. slowly, well)
                                    <br />
                                    Expresión de la posesión: (´s) cuando el poseedor es persona o animal,
                                    <br />
                                    Expresión de la posesión: (of) cuando el possedor es una cosa.
                                    <br />
                                    Deportes.
                                    <br />
                                    Las rutinas diarias.                              
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
                            <h4>Módulo 1: Comprensión de palabras clave, textos breves, oraciones y grabaciones</h4>
                            <p>
                                Comprensión de palabras clave, oraciones, e información de mensajes orales breves.
                                <br />
                                Comprensión de información procedente de grabaciones multimedia y de conversaciones dirigidas sobre temas cercanos.
                                <br />
                                Comprensión de mensajes producidos con distintos acentos de la lengua inglesa.
                                <br />
                                Formulación de hipótesis sobre significados a partir de la comprensión de elementos significativos, lingüísticos y paralingüísticos.
                                <br />
                                Comprensión de palabras clave y mensajes sencillos
                                <br />
                                Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                <br />
                                Reformulación de hipótesis a partir de la comprensión de nuevos elementos.
                                <br />
                                Vocabulario básico.                              
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
                            <h4>Módulo 2: Estructuras básicas y oraciones. Partes de la cara, gustos y preferencias.</h4>
                            <p>
                                Uso de estructuras básicas y oraciones construidas para el intercambio de información básica.
                                <br />
                                Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.   
                                <br />
                                Patrones sonoros, acentuales, ritmicos y de entonación.
                                <br />
                                Estrategias de apoyo a la expresión oral (lenguaje no verbal, transferencia de la lengua materna, repeticiones,etc..)
                                <br />
                                Apoyo en algunos aspectos de ritmo, acentuación y entonación para una correcta expresión oral.  
                                <br />
                                Descripción de partes de la cara (color de ojos, pelo).
                                <br />
                                Expresión del gusto y la preferencia (favoritos).
                                <br />
                                Utilización de vocabulario de uso habitual y necesario en el aula y rutinas (pedir permiso, pedir prestado, ir al aseo...)                            
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
                            <h4>Módulo 3: Lectura, deletreo y comprensión de palabras.</h4>
                            <p>
                                Aplicación de estrategias básicas de lectura: contexto, conocimiento previo o identificación de información básica. 
                                <br />
                                Lectura, deletreo y comprensión de palabras de uso frecuente y oraciones y textos muy sencillos.
                                <br />
                                Reconocimiento de los signos ortográficos básicos.
                                <br />
                                Lectura de cuentos, comics y otros textos narrativos con alto contenido visual.
                                <br />
                                Estrategias de apoyo a la lectura: el contexto visual.
                                <br />
                                Lectura correcta y comprensión de vocabulario clave y de uso frecuente.
                                <br />
                                Apoyo en aspectos de ritmo, acentuación y entonación para la comprensión de textos.
                                <br />
                                Uso de diccionario de imágenes y de las tecnologías de la información y la comunicación como elemento de consulta y de aprendizaje.                                                            
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
                            <h4>Módulo 4: Relaciones Lógicas. Afirmación, Exclamación, Negación Interrogación.</h4>
                            <p>
                                Expresión de relaciones lógicas: Conjunción (and), disyunción (or), oposicion (but).
                                <br />
                                Afirmación: affirmative sentences:Yes (/tag)
                                <br />
                                Exclamación: exclamatory sentences (e.g. I love salad!); How/Adj. (e.g.How nice!) Help! Sorry!
                                <br />
                                Negación: Negative sentences with not, never, no (adj.), no (negative/tag).
                                <br />
                                Interrogación: Wh-questions: What, Where, How, Who-Aux.Verbs in questions: to be, to do, to have.
                                <br />
                                Estrategias de producción de textos escritos.
                                <br />
                                Ejecución: Expresión del mensaje con claridad ajustándose a los modelos y formulas de cada tipo de texto.
                                <br />
                                Expresión del tiempo: presente (simple present/present continuous).                             
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
                            <h4>Módulo 5: "Calendario (días y meses) Adjetivos, alfabeto,Objetos personales, lugares. </h4>
                            <p>
                                Días de la semana y meses del año.
                                <br />
                                Adjetivos para describir personas.
                                <br />
                                Números del (1-100).
                                <br />
                                Alfabeto.
                                <br />
                                Sentimientos.
                                <br />
                                Preposiciones.
                                <br />
                                Objetos personales.
                                <br />
                                Lugares en una ciudad y en el campo. Descripción.                        
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
                            <h4>Módulo 6: Expresiones de Posesións, Verbos. Expresión del Lugar, de la modalidad, de posesión y cantidad</h4>
                            <p>
                                Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                <br />
                                Verbo “To have got” en primera y tercera persona (animales) de presente simpleen afirmativa y negativa.
                                <br />
                                Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                <br />
                                Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                <br />
                                Expresión del lugar donde se encuentran las cosas (Verbo To be con preposiciones).
                                <br />
                                Expresión de la modalidad: capacidad (can) 
                                <br />
                                Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                <br />
                                Expresión del precio.                              
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
                            <h4>Módulo 7: Expresión dde la modalidado, del aspecto, la existencia, moentidaddalidad, cualidad, capacidad y de obligación</h4>
                            <p>
                                Expresión de la modalidad: factualidad (declarative sentences)
                                <br />
                                Expresión del aspecto: puntual (simple tenses); durativo (present continuous); habitual (simple tenses) (/Adv. e.g. always, everyday).
                                <br />
                                Expresión de la existencia (To be; There is/ There are).
                                <br />
                                Expresión de la entidad (Nouns and pronouns, articles, demostratives.
                                <br />
                                Expresión de la cualidad (Very / Adj.)
                                <br />
                                Expresión de la modalidad: permiso (Can)
                                <br />
                                Expresion de la capacidad: poder (Can)
                                <br />
                                Expresión de la obligación: (have (got) to)                               
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
                            <h4>Módulo 8: Cantidad, Números cardinales y ordinales. Cantidad y frecuencia</h4>
                            <p>
                                Expresión de cantidad: singular/plural.
                                <br />
                                Cardinal numbers up to two digits.
                                <br />
                                Ordinal numbers up to two digits.
                                <br />
                                Expresión de gustos y preferencias: I like/ I don´t like - I like (Verb/ing).
                                <br />
                                Quantity: many, some, more, (a) little, a lot, a piece, a bottle, half.
                                <br />
                                Frequency: e.g. (sometimes, on sundays).
                                <br />
                                Adverbio de grado; Adverbs of degree: Intensity of something (very)
                                <br />
                                Uso de diccionarios de imágenes                               
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
                            <h4>Módulo 9: "Expresión del espacio, expresiones temporales, del modo y de la posesión. Deportes y rutinas diarias.</h4>
                            <p>
                                Expresión del modo: Adj. of manner (e.g. slowly, well, quickly, carefully)
                                <br />
                                Expresiones temporales: points (e.g. quarter past five), divisions of time (e.g. Winter, Summer, Spring, Autum)
                                <br />
                                Expresión del espacio: prepositions and adverbs of location (here, there, in, on, under) el lugar donde están las cosas.
                                <br />
                                Expresión del modo: Adv. of manner (e.g. slowly, well)
                                <br />
                                Expresión de la posesión: (´s) cuando el poseedor es persona o animal.
                                <br />
                                Expresión de la posesión: (of) cuando el possedor es una cosa. 
                                <br />
                                Deportes.
                                <br />
                                Las rutinas diarias.                               
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
                            <h4>Módulo 1: Comprensión de palabras clave, textos breves, oraciones y grabaciones</h4>
                            <p>
                                Comprensión de palabras clave, oraciones, e información de mensajes orales breves.
                                <br />
                                Comprensión de información procedente de grabaciones multimedia y de conversaciones dirigidas sobre temas cercanos.
                                <br />
                                Comprensión de mensajes producidos con distintos acentos de la lengua inglesa.
                                <br />
                                Formulación de hipótesis sobre significados a partir de la comprensión de elementos significativos, lingüísticos y paralingüísticos.
                                <br />
                                Comprensión de palabras clave y mensajes sencillos
                                <br />
                                Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                <br />
                                Reformulación de hipótesis a partir de la comprensión de nuevos elementos.
                                <br />
                                Vocabulario básico.                               
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
                            <h4>Módulo 2: Conversaciones, Deletreo de palabras. Estructuras basicas y oraciones</h4>
                            <p>
                                Estrategias de producción de textos orales; Uso de sinónimos; Parafraseo de términos o expresiones. Petición de ayuda.
                                <br />
                                Conversaciones; Deletreo de palabras.
                                <br />
                                Uso de estructuras básicas y oraciones construidas para el intercambio de información básica.
                                <br />
                                Estrategias de apoyo a la expresión oral (lenguaje no verbal, transferencia de la lengua materna, repeticiones,etc..)
                                <br />
                                Apoyo en algunos aspectos de ritmo, acentuación y entonación para una correcta expresión oral.  
                                <br />
                                Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.  
                                <br />
                                Expresión del gusto y la preferencia (favoritos).
                                <br />
                                Utilización de vocabulario de uso habitual y necesario en el aula y rutinas (pedir permiso, pedir prestado, ir al aseo...)                            
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
                            <h4>Módulo 3: Lectura, deletreo y comprensión de palabras.</h4>
                            <p>
                                Estrategias básicas de lectura: deducción del significado de palabras y frases nuevas por el contexto; conocimientos previos;  identificación de información básica. 
                                <br />
                                Lectura, deletreo y comprensión de palabras de uso frecuente y oraciones y textos muy sencillos.
                                <br />
                                Reconocimiento de los signos ortográficos básicos.
                                <br />
                                Lectura de cuentos, comics y otros textos narrativos con alto contenido visual.
                                <br />
                                Estrategias de apoyo a la lectura: el contexto visual.
                                <br />
                                Comprensión de ideas esenciales en cuentos, comics y otros textos narrativos. 
                                <br />
                                Apoyo en aspectos de ritmo, acentuación y entonación para la comprensión de textos.
                                <br />
                                Uso de diccionario de imágenes y de las tecnologías de la información y la comunicación como elemento de consulta y de aprendizaje.                               
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
                            <h4>Módulo 4: Establecimiento de relaciones analíticas grafía-sonido. Afirmación, Negación, Exclamación,  Interrogación.</h4>
                            <p>
                                Asociación de grafía, pronunciación y significado a partir de modelos escritos, expresiones orales conocidas y establecimiento de relaciones analíticas grafía-sonido.
                                <br />
                                Escritura de diferentes tipos de textos utilizando correctores sencillos, cuidando la elaboración y presentación de los mismos.
                                <br />
                                Uso de diccionario, de otros medios de consulta en papel y de las tecnologías de la información y la comunicación (procesadores de textos).
                                <br />
                                Exclamación: exclamatory sentences (e.g. I love salad!); How/Adj. (e.g.How nice!) Help! Sorry!
                                <br />
                                Interrogación: Wh-questions: What, Where, How, Who-Aux.Verbs in questions: to be, to do, to have.
                                <br />
                                Expresión de relaciones lógicas: Conjunción (and), disyunción (or), oposicion (but).
                                <br />
                                Afirmación: affirmative sentences:Yes (/tag) Negación: Negative sentences with not, never, no (adj.), no (negative/tag). Expresión del tiempo: presente (simple present/present continuous).
                                <br />
                                Uso correcto de la puntuación y el apóstrofe.                               
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
                            <h4>Módulo 5: Uso correcto de la puntuación y el apóstrofe. </h4>
                            <p>
                                Identificación personal (descripción física).
                                <br />
                                Vivienda (mobiliario y electrodomésticos).
                                <br />
                                Números del (1-100).
                                <br />
                                Entorno natural (medio ambiente).
                                <br />
                                Actividades de la vida diaria; Tecnologías de la comunicación y la información. 
                                <br />
                                Trabajo y ocupaciones; Educación y estudio.
                                <br />
                                Tiempo libre y ocio; Compra y actividades comerciales.
                                <br />
                                Salud y cuidados físicos; Alimentación.                               
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
                            <h4>Módulo 6: Verbos. Expresión del Lugar, de la modalidad, de posesión y cantidad </h4>
                            <p>
                                Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                <br />
                                Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa.
                                <br />
                                Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                <br />
                                Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                <br />
                                Expresión del lugar donde se encuentran las cosas (Verbo To be con preposiciones).
                                <br />
                                Expresión de la modalidad: capacidad (can) 
                                <br />
                                Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                <br />
                                Exclamacion: (Let´s); Expresión del precio.                              
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
                            <h4>Módulo 7: Expresión de la modalidad, del aspecto, la existencia, entidad, cualidad, capacidad y de obligación </h4>
                            <p>
                                Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                <br />
                                Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa.
                                <br />
                                Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                <br />
                                Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                <br />
                                Expresión del lugar donde se encuentran las cosas (Verbo To be con preposiciones).
                                <br />
                                Expresión de la modalidad: capacidad (can) 
                                <br />
                                Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                <br />
                                Exclamacion: (Let´s); Expresión del precio.                              
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
                            <h4>Módulo 8: "Cantidad, Números cardinales y ordinales. Gustos y preferencias. Cantidad y frecuencia</h4>
                            <p>
                                Expresión de cantidad: singular/plural.
                                <br />
                                Cardinal numbers up to three digits.
                                <br />
                                Ordinal numbers up to two digits.
                                <br />
                                Expresión de gustos y preferencias: I like/ I don´t like - I like (Verb/ing).
                                <br />
                                Quantity: many, some, more, (a) little, a lot, a piece, a bottle, half, cup, glass, piece.
                                <br />
                                Frequency: e.g. (sometimes, on sundays); Prepositions (prepositional phrases and advers of time).
                                <br />
                                Adverbio de grado; Adverbs of degree: Intensity of something (very)
                                <br />
                                Uso de diccionarios de imágenes                               
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
                            <h4>Módulo 9: </h4>
                            <p>
                                Expresión del modo: Adj. of manner (e.g. slowly, well, quickly, carefully)
                                <br />
                                Expresiones temporales: points (e.g. quarter past five), divisions of time (e.g. Winter, Summer, Spring, Autum); Anteriority (before); Posteriority (after); Sequence (first, then).
                                <br />
                                Expresión del espacio: prepositions and adverbs of location, directions (here, there, in, on, under) el lugar donde están las cosas.
                                <br />
                                Expresión del modo: Adv. of manner (e.g. slowly, well)
                                <br />
                                Expresión de la posesión: (´s) cuando el poseedor es persona o animal.
                                <br />
                                Expresión de la posesión: (of) cuando el poseedor es una cosa. 
                                <br />
                                Observación de palabras que van siempre en mayúsculas (meses, días de la semana, festividades, todas las palabras de titulo de un libro).
                                <br />
                                Las rutinas diarias; Deportes.                                                             
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
                            <h4>Módulo 10: Realización de preguntas y respuestas. Hábitos, Indicación de coordenadas. </h4>
                            <p>
                                Realización de preguntas y respuestas sobre aspectos personales, descripción de personas (Ropa) y mascotas.
                                <br />
                                Interrogación, afirmación y negación.
                                <br />
                                Realización de preguntas y respuestas sobre posesión, ubicación y precio.
                                <br />
                                Expresión del tiempo: points (quarter past/to, five past/to one); Hora (en punto/y media).
                                <br />
                                Hábitos; Expresión de sentimientos.
                                <br />
                                Indicación  de coordenadas en un mapa para localizar un lugar (mapa sencillo de ciudad y/o campo)
                                <br />
                                Petición y ofrecimiento de ayuda; Uso de sinónimos. 
                                <br />
                                Localización y uso adecuado de recursos lingüísticos o temáticos . (Uso de diccionario visual).
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
                                <h4>Módulo 1: Comprensión de palabras clave, textos breves, oraciones y grabaciones </h4>
                                <p>
                                    Comprensión de palabras clave, oraciones, e información de mensajes orales breves.
                                    <br />
                                    Comprensión de información procedente de grabaciones multimedia y de conversaciones dirigidas sobre temas cercanos.
                                    <br />
                                    Comprensión de mensajes producidos con distintos acentos de la lengua inglesa.
                                    <br />
                                    Formulación de hipótesis sobre significados a partir de la comprensión de elementos significativos, lingüísticos y paralingüísticos.
                                    <br />
                                    Comprensión de palabras clave y mensajes sencillos
                                    <br />
                                    Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                    <br />
                                    Reformulación de hipótesis a partir de la comprensión de nuevos elementos.
                                    <br />
                                    Comprensión de vocabulario y verbos en su tiempo verbal correspondiente.                              
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
                                <h4>Módulo 2: Oraciones, Estructuras basicas y oraciones </h4>
                                <p>
                                    Emisión de oraciones sencillas para dar información usando conectores simples.
                                    <br />
                                    Estrategias de producción de textos orales; Uso de sinónimos; Parafraseo de términos o expresiones. Petición de ayuda. Conversaciones; Deletreo de palabras.
                                    <br />
                                    Uso de estructuras básicas y oraciones construidas para el intercambio de información básica.
                                    <br />
                                    Estrategias de apoyo a la expresión oral (lenguaje no verbal, repeticiones,etc..)
                                    <br />
                                    Apoyo en algunos aspectos de ritmo, acentuación y entonación para una correcta expresión oral.  
                                    <br />
                                    Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.  
                                    <br />
                                    Expresión del gusto y la preferencia (favoritos).
                                    <br />
                                    Utilización de vocabulario de uso habitual y necesario en las rutinas (pedir permiso, pedir prestado, ir al aseo, realizar actividades).                              
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
                                <h4>Módulo 3: Lectura, deletreo y comprensión de palabras. </h4>
                                <p>
                                    Obtención de la idea global de un texto, etc. Estrategias básicas de lectura: deducción del significado de palabras y frases nuevas por el contexto.
                                    <br />
                                    Lectura, deletreo y comprensión de palabras de uso frecuente y oraciones y textos muy sencillos.
                                    <br />
                                    Reconocimiento de los signos ortográficos básicos.
                                    <br />
                                    Comprensión de ideas esenciales en cuentos, comics y otros textos narrativos e identificación de los personajes principales.
                                    <br />
                                    Estrategias de apoyo a la lectura: el contexto visual.
                                    <br />
                                    Comprensión de ideas esenciales en cuentos, comics y otros textos narrativos. 
                                    <br />
                                    Apoyo en aspectos de ritmo, acentuación y entonación para la comprensión de textos.
                                    <br />
                                    Uso de diccionario de imágenes y de las tecnologías de la información y la comunicación como elemento de consulta y de aprendizaje.                             
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
                                <h4>Módulo 4: Asociación de grafía, pronunciación y significado. Afirmación, Negación, Exclamación,  Interrogación.</h4>
                                <p>
                                    Uso de conocimientos previos en la lengua que conoce sobre las estrategias básicas para la producción de textos escritos; definición del objetivo del texto, elección del destinatario, organización y planificación del contenido. 
                                    <br />
                                    Escritura de diferentes tipos de textos utilizando correctores sencillos, cuidando la elaboración y presentación de los mismos.
                                    <br />
                                    Asociación de grafía, pronunciación y significado a partir de modelos escritos, expresiones orales conocidas y establecimiento de relaciones analíticas grafía-sonido.
                                    <br />
                                    Exclamación: exclamatory sentences (e.g. I love salad!); How/Adj. (e.g.How nice!) Help! Sorry!
                                    <br />
                                    Interrogación: Wh-questions: What, Where, How, Who - aux.verbs in questions: to be, to do, to have.
                                    <br />
                                    Expresión de relaciones lógicas: Conjunción (and), disyunción (or), oposicion (but); causa (because); finalidad (to-infinitive, e.g. I did it to help her).
                                    <br />
                                    Afirmación: affirmative sentences:Yes (/tag). Negación: Negative sentences with not, never, nobody, nothing, no (adj.), no (negative/tag). Expresión del tiempo: presente (simple present/present continuous).
                                    <br />
                                    Uso correcto de la puntuación y el apóstrofe.                                
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
                                <h4>Módulo 5: Vocabularios: identificación personal, clima, tiempo libre y ocio. Países de la Unión Europea. </h4>
                                <p>
                                    Medio ambiente (accidentes geográficos). 
                                    <br />
                                    Hogar (tareas domésticas). Entorno (calle/barrio). Salud y cuidados físicos. Alimentación.
                                    <br />
                                    Identificación personal (descripción física).Trabajo (personajes célebres).
                                    <br />
                                    Clima y entorno natural (sistema solar).
                                    <br />
                                    Actividades de la vida diaria; Tecnologías de la comunicación y la información.
                                    <br />
                                    Trabajo y ocupaciones; Educación y estudio  (los instrumentos musicales). Tecnologías de la información y la comunicación (aplicaciones informáticas).
                                    <br />
                                    Tiempo libre y ocio (deportes de aventura). Viajes de vacaciones. Transporte. 
                                    <br />
                                    Países de la Unión Europea.                              
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
                                <h4>Módulo 6: Relaciones lógicas, Verbos. Expresión del Lugar, de la modalidad, de posesión y cantidad</h4>
                                <p>
                                    Expresión de relaciones lógicas; comparación (as adj. as); smaller than... the biggest.
                                    <br />
                                    Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa .Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                    <br />
                                    Verbo “To like” en primera persona de presente simple en afirmativa y negativa.
                                    <br />
                                    Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                    <br />
                                    Expresión del lugar donde se encuentran las cosas (Verbo To be con preposiciones).
                                    <br />
                                    Expresión de la modalidad: capacidad (can) 
                                    <br />
                                    Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                    <br />
                                    Exclamación: (Let´s); Expresión del precio.                             
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
                                <h4>Módulo 7: Expresión de la modalidad, del aspecto, la existencia, entidad, cualidad, capacidad y de obligación </h4>
                                <p>
                                    Expresión de la modalidad: factualidad (declarative sentences); sugerencia (should); posibilidad (may); intención (going to).
                                    <br />
                                    Expresión del aspecto: puntual (simple tenses); durativo (present continuous); habitual (simple tenses) (/Adv. e.g. always, everyday).
                                    <br />
                                    Expresión de la existencia (To be; There is/ There are); La comparación (comparatives and superlatives: as+Adj.+as; smaller (than): the biggest.
                                    <br />
                                    Expresión de la entidad (Nouns and pronouns, articles, demostratives.
                                    <br />
                                    Expresión de la cualidad (Very / Adj.)
                                    <br />
                                    Expresión de la modalidad: sugerencia (should); factualidad (declarative sentences); necesidad (need); permiso (Can, may).
                                    <br />
                                    Expresión de la capacidad: poder (Can)
                                    <br />
                                    Expresión de la obligación: (have (got) to)                              
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
                                <h4>Módulo 8: "Cantidad, Números cardinales y ordinales. Gustos y preferencias. Cantidad y frecuencia</h4>
                                <p>
                                    Expresión de cantidad: singular/plural.
                                    <br />
                                    Expresion del aspecto: terminativo(finish-ing).
                                    <br />
                                    Cardinal numbers up to three digits. Ordinal numbers up to two digits.
                                    <br />
                                    Expresión de gustos y preferencias: I like/ I don´t like - I like (Verb/ing).
                                    <br />
                                    Quantity: many, some, more, (a) little, a lot, a piece, a bottle, half, cup, glass, piece.
                                    <br />
                                    Frequency: e.g. (sometimes, on sundays); Prepositions (prepositional phrases and advers of time).
                                    <br />
                                    Adverbio de grado; Adverbs of degree: Intensity of something (very/enough)
                                    <br />
                                     Uso de diccionarios de imágenes                               
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
                                <h4>Módulo 9: "Expresión del espacio, expresiones temporales, del modo y de la posesión. Deportes y rutinas diarias.</h4>
                                <p>
                                    Expresión del modo: Adj. of manner (e.g. slowly, well, quickly, carefully)
                                    <br />
                                    Expresiones temporales: points (e.g. quarter past five), divisions of time (e.g. Winter, Summer, Spring, Autum); Anteriority (before); Posteriority (after); Sequence (first, then); Duration (e.g. for two days); Frequency (e.g. sometime, on sundays).
                                    <br />
                                    Expresión del espacio: prepositions and adverbs of location, directions (here, there, in, on, under) el lugar donde están las cosas.
                                    <br />
                                    Expresión del modo: Adv. of manner (e.g. slowly, well)
                                    <br />
                                    Expresión de la posesión: (´s) cuando el poseedor es persona o animal.
                                    <br />
                                    Expresión de la posesión: (of) cuando el poseedor es una cosa. 
                                    <br />
                                    Observación de palabras que van siempre en mayúsculas (meses, días de la semana, festividades, todas las palabras de título de un libro).
                                    <br />
                                    Las rutinas diarias; Deportes.                               
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
                                <h4>Módulo 10: Realización de preguntas y respuestas. Hábitos, Indicación de coordenadas.</h4>
                                <p>
                                    Realización de preguntas y respuestas sobre aspectos personales, descripción de personas (ropa) y mascotas. Hábitos; Expresión de sentimientos.
                                    <br />
                                    Interrogación, afirmación y negación.
                                    <br />
                                    Realización de preguntas y respuestas sobre posesión, ubicación y precio.
                                    <br />
                                    Expresión del tiempo: points (quarter past/to, five past/to one); Hora (en punto/y media).
                                    <br />
                                    Expresión del tiempo: presente (simple present/present continuous); pasado (simple past); futuro (going to).
                                    <br />
                                    Indicación de coordenadas en un mapa para localizar un lugar (mapa sencillo de ciudad y/o campo)
                                    <br />
                                    Petición y ofrecimiento de ayuda; Uso de sinónimos. 
                                    <br />
                                    Localización y uso adecuado de recursos lingüísticos o temáticos. (Uso de diccionario visual).                             
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
                            <h4>Módulo 1: Comprensión de mensajes y anuncios, textos breves y grabaciones. Canciones, diálogos y debates.</h4>
                            <p>
                                Comprensión de anuncios publicitarios sobre productos de su interés (juegos, ordenadores, etcétera).
                                <br />
                                Comprensión de mensajes y anuncios públicos que contengan instrucciones, indicaciones u otro tipo de información (por ejemplo, números, precios, horarios, en una estación o en unos grandes almacenes).
                                <br />
                                Comprensión en transacciones habituales sencillas (instrucciones, indicaciones, peticiones y avisos). 
                                <br />
                                Formulación de hipótesis sobre significados a partir de la comprensión de elementos significativos, lingüísticos y paralingüísticos.
                                <br />
                                Comprensión de información procedente de grabaciones multimedia y de conversaciones dirigidas sobre temas cercanos.
                                <br />
                                Comprensión de textos breves y sencillos procedentes de distintos soportes audio visuales e informáticos.
                                <br />
                                Canciones, diálogos y debates; Introducción a la literatura infantil en lengua inglesa (relatos, poesías, rimas); Historia, personajes, costumbres y tradiciones de los países de habla inglesa.
                                <br />
                                Distinción de tipos de comprensión (sentido general, información esencial, puntos principales). Comprensión de vocabulario y verbos en su tiempo verbal correspondiente.                             
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
                            <h4>Módulo 2: Oraciones, Estructuras basicas y oraciones</h4>
                            <p>
                                Patrones sonoros, acentuales, rítmico y de entonación. Pronunciación: diptongos y grupos de tres consonantes al principio (sch-/scr-/sph-/spl-/spr-/squ-/thr-/) y en medio de una palabra (-ppl-/-ttl-/-mpl-/-ckl-/-mpt-/-ght-).
                                <br />
                                Participación en conversaciones (por teléfono o video llamadas), en la que se establece contacto social (dar las gracias, saludar, despedirse, dirigirse a alguien, pedir disculpas, presentarse, interesarse por el estado de alguien, felicitar a alguien. Presentaciones breves y sencillas sobre temas cotidianos; transacciones cotidianas (por ejemplo, pedir en una tienda un producto y preguntar el precio).
                                <br />
                                Intercambio información personal y sobre asuntos cotidianos: se expresan sentimientos, se ofrece algo a alguien, se pide prestado algo, quedar con amigos, dan instrucciones (por ejemplo, como se llega a un sitio con ayuda de un plano). 
                                <br />
                                Participación en una entrevista (por ejemplo, médica , nombrando partes del cuerpo para indicar lo que le duele).
                                <br />
                                Apoyo en algunos aspectos de ritmo, acentuación y entonación para una correcta expresión oral.  
                                <br />
                                Emisión de palabras y mensajes breves y sencillos con una pronunciación, entonación, acentuación y ritmos correctos.  
                                <br />
                                Conversaciones de temática variada. Expresión del gusto y las preferencias.
                                <br />
                                Utilización de vocabulario de uso habitual y necesario en las rutinas.                            
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
                            <h4>Módulo 3: Comprensión de noticias, artículos, corresondencia y cuentos.</h4>
                            <p>
                                Comprensión de lo esencial y puntos principales de noticias breves y artículos de revista que traten temas de su interés. 
                                <br />
                                Comprensión de correspondencia (SMS, correos electrónicos, postales, tarjetas). 
                                <br />
                                Estrategias básicas de lectura: deducción del significado de palabras y frases nuevas por el contexto.
                                <br />
                                Comprensión de ideas esenciales en cuentos, comics y otros textos narrativos e identificación de los personajes principales.
                                <br />
                                Estrategias de apoyo a la lectura: el contexto visual.
                                <br />
                                Comprensión de ideas esenciales en cuentos, comics y otros textos narrativos. 
                                <br />
                                Apoyo en aspectos de ritmo, acentuación y entonación para la comprensión de textos.
                                <br />
                                Uso de diccionario de imágenes y de las tecnologías de la información y la comunicación como elemento de consulta y de aprendizaje.                              
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
                            <h4>Módulo 4: Asociación de grafía, pronunciación y significado. Afirmación, Negación, Exclamación,  Interrogación.</h4>
                            <p>
                                Escritura de correspondencia personal, breve y simple en la que da gracias, felicita; definición del objetivo del texto, elección del destinatario, organización y planificación del contenido. 
                                <br />
                                Completa un breve formulario o una ficha con sus datos personales. Escritura de diferentes tipos de textos utilizando correctores sencillos, cuidando la elaboración y presentación de los mismos.
                                <br />
                                Asociación de grafía, pronunciación y significado a partir de modelos escritos, expresiones orales conocidas y establecimiento de relaciones analíticas grafía-sonido.
                                <br />
                                Exclamación: exclamatory sentences (e.g. I love salad!); How/Adj. (e.g.How nice!) Help! Sorry!
                                <br />
                                Interrogación: Wh-questions: What, Where, How, Who - aux.verbs in questions: to be, to do, to have.
                                <br />
                                Expresión de relaciones lógicas: Conjunción (and), disyunción (or), oposicion (but); causa (because); finalidad (to-infinitive, e.g. I did it to help her); relaciones temporales (when, before, after).
                                <br />
                                Afirmación: affirmative sentences:Yes (/tag) Negación: Negative sentences with not, never, nobody, nothing, no (adj.), no (negative/tag). Expresión del tiempo: presente (simple present/present continuous).
                                <br />
                                Uso correcto de la puntuación y el apóstrofe.                               
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
                            <h4>Módulo 5: Vocabularios: identificación personal, miembros de familia, clima, tiempo libre y ocio. Países de la Unión Europea.</h4>
                            <p>
                                Tecnologías de la información y la comunicación (aplicaciones informáticas).
                                <br />
                                Miembros de la familia (sobrino/a, nieto/a, abuelos, padres).
                                <br />
                                Identificación personal (descripción física).Trabajo (personajes célebres).
                                <br />
                                Medio ambiente, clima y entorno natural (sistema solar).
                                <br />
                                Actividades de la vida diaria; Tecnologías de la comunicación y la información.
                                <br />
                                Trabajo y ocupaciones; Educación y estudio  (los instrumentos musicales). 
                                <br />
                                Tiempo libre y ocio (deportes de aventura). Viajes de vacaciones. Transporte. 
                                <br />
                                Países de la Unión Europea.                              
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
                            <h4>Módulo 6: Relaciones lógicas, Verbos. Expresión del Lugar, de la modalidad, de posesión y cantidad.</h4>
                            <p>
                                Expresión de relaciones lógicas; comparación (as adj. as); smaller than... the biggest.
                                <br />
                                Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa. Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                <br />
                                Verbo “To have got” en primera y tercera persona (animales) de presente simple en afirmativa y negativa. Expresión de la posesión (his/her, genitivo sajón, verbo To have).
                                <br />
                                Preguntas y respuestas sobre gusto en primera persona (Do you like...?)
                                <br />
                                Expresión del lugar donde se encuentran las cosas (Verbo To be con preposiciones).
                                <br />
                                Expresión de la modalidad: capacidad (can) 
                                <br />
                                Expresión de posesión y cantidad (singular/plural) en primera persona. 
                                <br />
                                Exclamación: (Let´s); Expresión del precio.                              
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
                            <h4>Módulo 7: Expresión de la modalidad, del aspecto, la existencia, entidad, cualidad, capacidad y de obligación</h4>
                            <p>
                                Expresión de la modalidad: factualidad (declarative sentences); sugerencia (should); posibilidad (may); intención (going to/will); oblig obligación (must).
                                <br />
                                Expresión del aspecto: puntual (simple tenses); durativo (present continuous); habitual (simple tenses) (/Adv. e.g. always, everyday).
                                <br />
                                Expresión de la existencia (To be; There was/ There were);  La comparación (comparatives and superlatives: as+Adj.+as; smaller (than): the biggest.
                                <br />
                                Expresión de la entidad (Nouns and pronouns, articles, demostratives.
                                <br />
                                Expresión de la cualidad (Very / Adj.)
                                <br />
                                Expresión de la modalidad: sugerencia (should); factualidad (declarative sentences); necesidad (need); permiso (Can, may).
                                <br />
                                Expresión de la capacidad: poder (Can)
                                <br />
                                Expresión de la obligación: (have (got) to)                              
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
                            <h4>Módulo 8: Cantidad, Números cardinales y ordinales. Gustos y preferencias. Cantidad y frecuencia </h4>
                            <p>
                                Expresión de cantidad: singular/plural.
                                <br />
                                Expresion del aspecto: terminativo( finish-ing).
                                <br />
                                Cardinal numbers up to four digits. Ordinal numbers up to two digits.
                                <br />
                                Expresión de gustos y preferencias: I like/ I don´t like - I like (Verb/ing).
                                <br />
                                Quantity: many, some, more, (a) little, a lot, a piece, a bottle, half, cup, glass, piece.
                                <br />
                                Frequency: e.g. (sometimes, on sundays); Prepositions (prepositional phrases and advers of time).
                                <br />
                                Adverbio de grado; Adverbs of degree: Intensity of something (very/enough)
                                <br />
                                Uso de diccionarios de imágenes                               
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
                            <h4>Módulo 9: "Expresión del modo, expresiones temporales, del espacio y de la posesión. Deportes y rutinas diarias. </h4>
                            <p>
                                Expresión del modo: Adj. of manner (e.g. slowly, well, quickly, carefully)
                                <br />
                                Expresiones temporales: points (e.g. quarter past five), divisions of time (e.g. Winter, Summer, Spring, Autum); Anteriority (before); Posteriority (after); Sequence (first, then); Duration (e.g. for two days); Frequency (e.g. sometime, on sundays); simultaneosly (at the same time); prepositions, prepositional phrases and adverbs of time. 
                                <br />
                                Expresión del espacio: prepositions and adverbs of location, directions (here, there, in, on, under) el lugar donde están las cosas; phrases, position, distance, motion, origin and arrangement.
                                <br />
                                Expresión del modo: Adv. of manner (e.g. slowly, well)
                                <br />
                                Expresión de la posesión: (´s) cuando el poseedor es persona o animal.
                                <br />
                                Expresión de la posesión: (of) cuando el poseedor es una cosa. 
                                <br />
                                Observación de palabras que van siempre en mayúsculas (meses, días de la semana, festividades, todas las palabras de titulo de un libro).
                                <br />
                                Las rutinas diarias; Deportes.                              
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
                            <h4>Módulo 10: Realización de preguntas y respuestas. Narración de hechos.Expresión del tiempo. Indicación de coordenadas.</h4>
                            <p>
                                Narración de hechos pasados y presentes. Expresión de la preferencia (acuerdo, desacuerdo, el sentimiento y la intención); Saludos, presentaciones, disculpas y agradecimientos. 
                                <br />
                                Realización de preguntas y respuestas sobre aspectos personales, descripción de personas (ropa) y mascotas. Hábitos; Expresión de sentimientos.
                                <br />
                                Petición de ayuda, información e instrucciones. Realización de preguntas y respuestas sobre posesión, ubicación y precio.
                                <br />
                                Expresión del tiempo: points (quarter past/to, five past/to one); Hora (en punto/y media).
                                <br />
                                Expresión del tiempo: presente (simple present/present continuous); pasado (simple past); futuro (going to/will).
                                <br />
                                Indicación de coordenadas en un mapa para localizar un lugar (mapa sencillo de ciudad y/o campo)
                                <br />
                                Establecimiento y mantenimiento de la comunicación.  
                                <br />
                                Localización y uso adecuado de recursos lingüísticos o temáticos. (Uso de diccionario visual).                             
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

