﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ARAcademy.model.document {
    using System;
    
    
    /// <summary>
    ///   Clase de recurso fuertemente tipado, para buscar cadenas traducidas, etc.
    /// </summary>
    // StronglyTypedResourceBuilder generó automáticamente esta clase
    // a través de una herramienta como ResGen o Visual Studio.
    // Para agregar o quitar un miembro, edite el archivo .ResX y, a continuación, vuelva a ejecutar ResGen
    // con la opción /str o recompile su proyecto de VS.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "16.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class DAODocumentResource {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal DAODocumentResource() {
        }
        
        /// <summary>
        ///   Devuelve la instancia de ResourceManager almacenada en caché utilizada por esta clase.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("ARAcademy.model.document.DAODocumentResource", typeof(DAODocumentResource).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Reemplaza la propiedad CurrentUICulture del subproceso actual para todas las
        ///   búsquedas de recursos mediante esta clase de recurso fuertemente tipado.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @databinaria.
        /// </summary>
        internal static string BinaryContent {
            get {
                return ResourceManager.GetString("BinaryContent", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a CREATE_DOCUMENT.
        /// </summary>
        internal static string CreateDocumentSP {
            get {
                return ResourceManager.GetString("CreateDocumentSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a DELETE_DOCUMENT.
        /// </summary>
        internal static string DeleteDocumentSP {
            get {
                return ResourceManager.GetString("DeleteDocumentSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @tipoarchivo.
        /// </summary>
        internal static string Filetype {
            get {
                return ResourceManager.GetString("Filetype", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @ide.
        /// </summary>
        internal static string Id {
            get {
                return ResourceManager.GetString("Id", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @nombrearchivo.
        /// </summary>
        internal static string Name {
            get {
                return ResourceManager.GetString("Name", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a READ_ALL_DOCUMENT.
        /// </summary>
        internal static string ReadAllDocumentSP {
            get {
                return ResourceManager.GetString("ReadAllDocumentSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a READ_DOCUMENT_BY_SECTION.
        /// </summary>
        internal static string ReadDocumentBySectionSP {
            get {
                return ResourceManager.GetString("ReadDocumentBySectionSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a READ_DOCUMENT.
        /// </summary>
        internal static string ReadDocumentSP {
            get {
                return ResourceManager.GetString("ReadDocumentSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @fk_topico.
        /// </summary>
        internal static string Topic {
            get {
                return ResourceManager.GetString("Topic", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a UPDATE_DOCUMENT.
        /// </summary>
        internal static string UpdateDocumentSP {
            get {
                return ResourceManager.GetString("UpdateDocumentSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @visibilidad.
        /// </summary>
        internal static string Visibility {
            get {
                return ResourceManager.GetString("Visibility", resourceCulture);
            }
        }
    }
}
