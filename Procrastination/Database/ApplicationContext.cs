using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Procrastination.Database
{
    internal class ApplicationContext : DbContext
    {
        public DbSet<Task> Tasks => Set<Task>();
        public DbSet<Notification> Notifications => Set<Notification>();
        public ApplicationContext() => Database.EnsureCreated();
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var sqlitePath = Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.ApplicationData), @"OlsonSoftware\FinanceManager");
            Directory.CreateDirectory(sqlitePath); var fileName = $"{sqlitePath}\fAppDB.db";
            if (!File.Exists(fileName))
            {
                File.Create(fileName);
            }
            optionsBuilder.UseSqlite("Filename=" + fileName);
        }
    }
}