using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common
{
    public class Teacher : Entity
    {
        private String email;
        private String password;
        private String name;
        private String lastName;
        private DateTime birthDate;
        private String phone;
        private String country;
        private int salary;

        public Teacher()
        {
        }

        public Teacher(string email)
        {
            this.email = email;
        }

        public Teacher(string email, string password)
        {
            this.email = email;
            this.password = password;
        }

        public Teacher(string email, string password, string name, string lastName, DateTime birthDate, string phone, string country)
        {
            this.email = email;
            this.password = password;
            this.name = name;
            this.lastName = lastName;
            this.birthDate = birthDate;
            this.phone = phone;
            this.country = country;
        }

        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Name { get => name; set => name = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public DateTime BirthDate { get => birthDate; set => birthDate = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Country { get => country; set => country = value; }
        public int Salary { get => salary; set => salary = value; }
    }
}