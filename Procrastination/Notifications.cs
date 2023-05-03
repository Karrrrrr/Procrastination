using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Plugin.LocalNotification;
using Procrastination.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Essentials;

namespace Procrastination
{
	internal class Notifications
	{
		public int Id { get; set; }
		public string Name { get; set; }
		public string Type { get; set; }
		public string Repeat { get; set; }
		public DateTime Date { get; set; }
		public DateTime Time { get; set; }
		public Notifications(int id, string name, string type, string repeat, DateTime date, DateTime time)
		{
			Id = id;
			Name = name;
			Type = type;
			Repeat = repeat;
			Date = date;
			Time = time;
		}

		public static void CreateNotification(int id, string name, string type, string repeat, DateTime date, DateTime time)
		{
			if (Preferences.Get("notification", true))
			{
				DateTime notificationTime = date.Date + time.TimeOfDay;
				NotificationRequest notification = new NotificationRequest { Title = name, NotificationId = id };
				if (!Preferences.Get("sound", true))
				{

				}
				if (Preferences.Get("vibration", false))
				{
					notification.Android.VibrationPattern = new long[] { 0L, 1000L };
				}
				if (type != "")
				{
					notification.Description = type;
				}
				if (repeat == "Один раз")
				{
					notification.Schedule = new NotificationRequestSchedule() { RepeatType = NotificationRepeat.No, NotifyTime = notificationTime };
				}
				else if (repeat == "Каждый день")
				{
					notification.Schedule = new NotificationRequestSchedule() { RepeatType = NotificationRepeat.Daily, NotifyTime = time };
				}
				else
				{
					notification.Schedule = new NotificationRequestSchedule() { RepeatType = NotificationRepeat.Weekly, NotifyTime = notificationTime };
				}
				LocalNotificationCenter.Current.Show(notification);
			}
		}

		public static void EditNotification(int id, string name, string type, string repeat, DateTime date, DateTime time)
		{
			deleteNotification(id);
			CreateNotification(id, name, type, repeat, date, time);
		}

		public static void deleteNotification(int id)
		{
			try
			{
				LocalNotificationCenter.Current.Cancel(id);
			}
			catch { }
		}

		public static void turnAllNotificationsOn()
		{
			List<Notifications> list = DatabaseConnecton.getAllNotifications();
			foreach (Notifications n in list)
			{
				CreateNotification(n.Id, n.Name, n.Type, n.Repeat, n.Date, n.Time);
			}
		}

		public static void cancelAllNotifications()
		{
			LocalNotificationCenter.Current.CancelAll();
		}
	}
}