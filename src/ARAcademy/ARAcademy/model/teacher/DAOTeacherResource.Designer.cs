﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ARAcademy.model.teacher {
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
    internal class DAOTeacherResource {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal DAOTeacherResource() {
        }
        
        /// <summary>
        ///   Devuelve la instancia de ResourceManager almacenada en caché utilizada por esta clase.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("ARAcademy.model.teacher.DAOTeacherResource", typeof(DAOTeacherResource).Assembly);
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
        ///   Busca una cadena traducida similar a @FEC.
        /// </summary>
        internal static string Birthdate {
            get {
                return ResourceManager.GetString("Birthdate", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @PAIS.
        /// </summary>
        internal static string Country {
            get {
                return ResourceManager.GetString("Country", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a CREATE_TEACHER(@MAIL, @CLAVE, @NOMBRE, @APELLIDO, @FEC, @TELF, @PAIS).
        /// </summary>
        internal static string CreateTeacherSP {
            get {
                return ResourceManager.GetString("CreateTeacherSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a DELETE_TEACHER(@MAIL).
        /// </summary>
        internal static string DeleteTeacherSP {
            get {
                return ResourceManager.GetString("DeleteTeacherSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @MAIL.
        /// </summary>
        internal static string Email {
            get {
                return ResourceManager.GetString("Email", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @APELLIDO.
        /// </summary>
        internal static string Lastname {
            get {
                return ResourceManager.GetString("Lastname", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @NOMBRE.
        /// </summary>
        internal static string Name {
            get {
                return ResourceManager.GetString("Name", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @CLAVE.
        /// </summary>
        internal static string Password {
            get {
                return ResourceManager.GetString("Password", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a @TELF.
        /// </summary>
        internal static string Phone {
            get {
                return ResourceManager.GetString("Phone", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a READ_ALL_TEACHER().
        /// </summary>
        internal static string ReadAllTeachersSP {
            get {
                return ResourceManager.GetString("ReadAllTeachersSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a READ_TEACHER(@MAIL).
        /// </summary>
        internal static string ReadTeacherSP {
            get {
                return ResourceManager.GetString("ReadTeacherSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a TEACHER_LOGIN(@MAIL, @CLAVE).
        /// </summary>
        internal static string TeacherLoginSP {
            get {
                return ResourceManager.GetString("TeacherLoginSP", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Busca una cadena traducida similar a UPDATE_TEACHER(@MAIL, @CLAVE, @NOMBRE, @APELLIDO, @FEC, @TELF, @PAIS).
        /// </summary>
        internal static string UpdateTeacherSP {
            get {
                return ResourceManager.GetString("UpdateTeacherSP", resourceCulture);
            }
        }
    }
}