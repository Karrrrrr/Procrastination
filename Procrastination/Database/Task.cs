using Android.App;
using Android.Content;
using Android.OS;
using Android.Renderscripts;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Procrastination.Database
{
    internal class Task
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string? Type { get; set; }
        public string? Color { get; set; }
        public int? NotificationId { get; set; }
    }
}