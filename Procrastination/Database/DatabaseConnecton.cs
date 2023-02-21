using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Procrastination.Database
{
    internal class DatabaseConnecton
    {
        public static List<Task> GetTasks()
        {
            try
            {
                List<Task> tasks;
                using (ApplicationContext db = new ApplicationContext())
                {
                    tasks = db.Tasks.ToList();
                }
                return tasks;
            }
            catch
            {
                return null;
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
                task.Type = type;
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
                    task.Type = type;
                }
                else
                {
                    task.Type = "";
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
                    }
                }
                else
                {
                    if (task.NotificationId != null)
                    {
                        task.NotificationId = null;
                        db.Notifications.Remove(db.Notifications.Find(id));
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
                }
                else
                {
                    db.Remove(db.Tasks.Find(id));
                }
                db.SaveChanges();
            }
        }
    }
}