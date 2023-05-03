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
    public class Notification
    {
        public int Id { get; set; }
        public string Repeat { get; set; }
        public DateTime? Date { get; set; }
        public DateTime Time { get; set; }
    }
}