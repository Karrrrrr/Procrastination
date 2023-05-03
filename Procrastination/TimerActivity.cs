using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using static Android.Widget.RelativeLayout;

namespace Procrastination
{
    [Activity(Label = "TimerActivity", ParentActivity = typeof(MainActivity))]
    public class TimerActivity : AppCompatActivity
    {
        bool timerStart = false;
        int timerTime = 0;
        Timer timer;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.timer);

            SupportActionBar.Title = "Таймер";
            SupportActionBar.SetDefaultDisplayHomeAsUpEnabled(true);
            SupportActionBar.SetDisplayShowHomeEnabled(true);

            FindViewById<ImageView>(Resource.Id.timer_start_stop).Click += timerStartStop;
        }

        private void timerStartStop(object sender, EventArgs e)
        {
            if (timerStart)
            {
                ImageView timerIc = FindViewById<ImageView>(Resource.Id.timer_ic);
                timerIc.SetImageResource(Resource.Drawable.timer_start);
                timerIc.LayoutParameters = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent) { LeftMargin = (int)Resources.GetDimension(Resource.Dimension.timer_start_margin_horizontal), TopMargin = (int)Resources.GetDimension(Resource.Dimension.timer_start_margin_top) };
                OnAlertShow();
                FindViewById<TextView>(Resource.Id.timer_text).Text = "0:00:00";
                timerTime = 0;
                timerStart = false;
                timer.Change(Timeout.Infinite, Timeout.Infinite);

			}
            else
            {
                ImageView timerIc = FindViewById<ImageView>(Resource.Id.timer_ic);
                timerIc.SetImageResource(Resource.Drawable.timer_stop);
                timerIc.LayoutParameters = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent) { LeftMargin = (int)Resources.GetDimension(Resource.Dimension.timer_stop_margin_horizontal), TopMargin = (int)Resources.GetDimension(Resource.Dimension.timer_start_margin_top) };
                timer = new Timer(TimerTick, null, 0, 1000);
                timerStart = true;
            }
        }

        private void TimerTick(object state)
        {
            timerTime++;
            FindViewById<TextView>(Resource.Id.timer_text).Text = timeString();
        }

        public void OnAlertShow()
        {
            Android.App.AlertDialog.Builder alert = new Android.App.AlertDialog.Builder(this);
            alert.SetTitle("Отличная работа!");
            alert.SetMessage("Время работы: " + FindViewById<TextView>(Resource.Id.timer_text).Text);
            Dialog dialog = alert.Create();
            dialog.Show();
        }

        public string timeString()
        {
            int hours = timerTime / 3600;
            string time = hours.ToString() + ":";
            int minutes = (timerTime - (hours * 3600)) / 60;
            if (minutes < 10)
            {
                time += "0";
            }
            time += minutes.ToString() + ":";
            int seconds = timerTime % 60;
			if (seconds < 10)
			{
				time += "0";
			}
            time += seconds.ToString();
			return time;
        }
    }
}