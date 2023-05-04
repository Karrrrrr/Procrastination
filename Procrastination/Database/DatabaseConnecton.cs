using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Plugin.LocalNotification;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Drawing;
using System.Linq;
using System.Text;

namespace Procrastination.Database
{
    internal class DatabaseConnecton
    {
        public static List<Task> GetTasks(int code)
        {
            List<Task> tasks;
            if (code == 0)
            {
                using (ApplicationContext db = new ApplicationContext())
                {
					return db.Tasks.ToList();
				}
            }
            else if (code == 1)
            {
                using (ApplicationContext db = new ApplicationContext())
                {
                    return db.Tasks.ToList().OrderBy(x => x.Name).ToList();
                }
            }
            else
            {
				using (ApplicationContext db = new ApplicationContext())
				{
					return db.Tasks.ToList().OrderBy(x => x.Color).ToList();
				}
			}
        }

        public static void CreateTask(string name, string type, string color, bool notification, string repeat, DateTime date, DateTime time)
        {
            Random r = new Random();
            int id;
            do
            {
                id = r.Next();
            }
            while (!CheckId(id));
            Task task = new Task() { Id = id, Name = name, Color = color };
            if (type != "")
            {
                task.Description = type;
            }
            Notification n = null;
            if (notification)
            {
                n = new Notification() { Id = id, Repeat = repeat, Time = time };
                if (repeat != "Каждый день")
                {
                    n.Date = date;
                }
                task.NotificationId = id;
                Notifications.CreateNotification(id, name, type, repeat, date, time);
            }
            using (ApplicationContext db = new ApplicationContext())
            {
                db.Tasks.Add(task);
                if (notification)
                {
                    db.Notifications.Add(n);
                }
                db.SaveChanges();
            }
        }

		public static bool CheckId(int id)
        {
            Task res;
            using (ApplicationContext db = new ApplicationContext())
            {
                res = db.Tasks.Find(id);
            }
            if (res == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static void EditTask(int id, string name, string type, string color, bool notification, string repeat, DateTime date, DateTime time)
        {
            Task task;
            Notification n;
            using (ApplicationContext db = new ApplicationContext())
            {
                task = db.Tasks.Find(id);
                task.Name = name;
                if (type != "")
                {
                    task.Description = type;
                }
                else
                {
                    task.Description = "";
                }
                task.Color = color;
                if (notification)
                {
                    if (task.NotificationId == null)
                    {
                        n = new Notification() { Id = id, Repeat = repeat, Time = time };
                        if (repeat != "Каждый день")
                        {
                            n.Date = date;
                        }
                        task.NotificationId = id;
                        Notifications.CreateNotification(id, name, type, repeat, date, time);
                    }
                    else
                    {
                        n = db.Notifications.Find(id);
                        n.Repeat = repeat;
                        n.Time = time;
                        if (repeat != "Каждый день")
                        {
                            n.Date = date;
                        }
                        Notifications.EditNotification(id, name, type, repeat, date, time);
                    }
                }
                else
                {
                    if (task.NotificationId != null)
                    {
                        task.NotificationId = null;
                        db.Notifications.Remove(db.Notifications.Find(id));
                        Notifications.deleteNotification(id);
                    }
                }
                db.SaveChanges();
            }
        }

        public static Task getTask(int id)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Tasks.Find(id);
            }
        }

        public static Notification getNotification(int id)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                return db.Notifications.Find(id);
            }
        }

        public static void deleteTask(int id)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                Task task = db.Tasks.Find(id);
                if (task.NotificationId != null)
                {
                    db.Remove(db.Tasks.Find(id));
                    db.Remove(db.Notifications.Find(id));
                    Notifications.deleteNotification(id);
                }
                else
                {
                    db.Remove(db.Tasks.Find(id));
                }
                db.SaveChanges();
            }
        }

        public static List<Notifications> getAllNotifications()
        {
            List<Notifications> list = new List<Notifications>();
            using (ApplicationContext db = new ApplicationContext())
            {
                foreach (Task task in db.Tasks)
                {
                    if (task.NotificationId != null)
                    {
                        Notification n = db.Notifications.Find(task.NotificationId);
                        if (((n.Repeat == "Один раз") && (n.Date != null) && (n.Date >= DateTime.Now)) || (n.Repeat == "Каждый день") || (n.Repeat == "Раз в неделю"))
                        {
                            DateTime date;
                            if (n.Date == null)
                            {
                                date = DateTime.Now;
                            }
                            else
                            {
                                date = (DateTime)n.Date;
                            }
                            list.Add(new Notifications(task.Id, task.Name, task.Description, n.Repeat, date, n.Time));
                        }
                    }
                }
            }
            return list;
        }

        public static List<Task> searchTasks(string searchString)
        {
            List<Task> tasks = new List<Task>();
            using (ApplicationContext db = new ApplicationContext())
            {
                foreach (Task task in db.Tasks)
                {
                    if (task.Name.Contains(searchString) || task.Description.Contains(searchString))
                    {
                        tasks.Add(task);
                    }
                }
            }
            return tasks;
        }
    }
}