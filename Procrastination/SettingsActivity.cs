using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;
using Xamarin.Essentials;

namespace Procrastination
{
    [Activity(Label = "SettingsActivity", ParentActivity = typeof(MainActivity))]
    public class SettingsActivity : AppCompatActivity
    {
		private Switch notificationSwitch;
		private Switch soundSwitch;
		private Switch vibrationSwitch;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.settings);

            SupportActionBar.Title = "Настройки";
            SupportActionBar.SetDefaultDisplayHomeAsUpEnabled(true);
            SupportActionBar.SetDisplayShowHomeEnabled(true);

			notificationSwitch = FindViewById<Switch>(Resource.Id.notifications_switch);
			notificationSwitch.Click += notificationSwitched;

			soundSwitch = FindViewById<Switch>(Resource.Id.sound_switch);
			soundSwitch.Click += soundSwitched;

			vibrationSwitch = FindViewById<Switch>(Resource.Id.vibration_switch);
			vibrationSwitch.Click += vibrationSwitched;
		}

		private void vibrationSwitched(object sender, EventArgs e)
		{
			vibrationCheck();
		}

		private void soundSwitched(object sender, EventArgs e)
		{
			soundCheck();
		}

		private void notificationSwitched(object sender, EventArgs e)
		{
			notificationCheck();
		}

		protected override void OnResume()
		{
			base.OnResume();
			if (!Preferences.ContainsKey("notification"))
			{
				notificationCheck();
			}
			else
			{
				if (Preferences.Get("notification", true))
				{
					FindViewById<Switch>(Resource.Id.notifications_switch).Checked = true;
				}
				else
				{
					FindViewById<Switch>(Resource.Id.notifications_switch).Checked = false;
				}
			}

			if (!Preferences.ContainsKey("sound"))
			{
				soundCheck();
			}
			else
			{
				if (Preferences.Get("sound", true))
				{
					FindViewById<Switch>(Resource.Id.sound_switch).Checked = true;
				}
				else
				{
					FindViewById<Switch>(Resource.Id.sound_switch).Checked = false;
				}
			}

			if (!Preferences.ContainsKey("vibration"))
			{
				vibrationCheck();
			}
			else
			{
				if (Preferences.Get("vibration", false))
				{
					FindViewById<Switch>(Resource.Id.vibration_switch).Checked = true;
				}
				else
				{
					FindViewById<Switch>(Resource.Id.vibration_switch).Checked = false;
				}
			}
		}

		private void notificationCheck()
		{
			if (FindViewById<Switch>(Resource.Id.notifications_switch).Checked)
			{
				Preferences.Set("notification", true);
				Notifications.turnAllNotificationsOn();
			}
			else
			{
				Preferences.Set("notification", false);
				Notifications.cancelAllNotifications();
			}
		}

		private void soundCheck()
		{
			if (FindViewById<Switch>(Resource.Id.sound_switch).Checked)
			{
				Preferences.Set("sound", true);
				Notifications.cancelAllNotifications();
				Notifications.turnAllNotificationsOn();
			}
			else
			{
				Preferences.Set("sound", false);
				Notifications.cancelAllNotifications();
				Notifications.turnAllNotificationsOn();
			}
		}

		private void vibrationCheck()
		{
			if (FindViewById<Switch>(Resource.Id.vibration_switch).Checked)
			{
				Preferences.Set("vibration", true);
				Notifications.cancelAllNotifications();
				Notifications.turnAllNotificationsOn();
			}
			else
			{
				Preferences.Set("vibration", false);
				Notifications.cancelAllNotifications();
				Notifications.turnAllNotificationsOn();
			}
		}
	}
}