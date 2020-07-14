using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Student : Entity
    {
        private String email;
        private String password;
        private String name;
        private String lastName;
        private DateTime birthDate;
        private String phone;
        private String country;
        private Grade grade;

        public Student()
        {
        }

        public Student(string email, string password)
        {
            this.email = email;
            this.password = password;
        }

        public Student(string email, string password, string name, string lastName, DateTime birthDate, string phone, string country, Grade grade)
        {
            this.email = email;
            this.password = password;
            this.name = name;
            this.lastName = lastName;
            this.birthDate = birthDate;
            this.phone = phone;
            this.country = country;
            this.grade = grade;
        }

        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Name { get => name; set => name = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public DateTime BirthDate { get => birthDate; set => birthDate = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Country { get => country; set => country = value; }
        public Grade Grade { get => grade; set => grade = value; }
    }
}