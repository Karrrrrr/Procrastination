using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using Widget = AndroidX.AppCompat.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Essentials;
using Procrastination.Database;
using Google.Android.Material.Chip;
using Android.Nfc;
using System.Globalization;
using Android.Media;
using static Android.App.TimePickerDialog;
using Java.Security;
using Google.Android.Material.FloatingActionButton;
using static Android.Telephony.CarrierConfigManager;
using Plugin.LocalNotification;

namespace Procrastination
{
    [Activity(Label = "CreateEditActivity", Theme = "@style/AppTheme.NoActionBar", ParentActivity = typeof(MainActivity))]
    public class CreateEditActivity : AppCompatActivity
    {
        private Switch notificationSwitch;
        public static bool isCreate = true;
        internal static Task task;
        internal static Database.Notification notification;
        DatePickerDialog datePicker;
        TimePickerDialog timePicker;
        bool loading = false;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.create_edit_task);

            Widget.Toolbar toolbar = FindViewById<Widget.Toolbar>(Resource.Id.toolbar_create_edit);
            SetSupportActionBar(toolbar);
            SupportActionBar.SetDefaultDisplayHomeAsUpEnabled(true);
            SupportActionBar.SetDisplayShowHomeEnabled(true);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab_create_edit);
            fab.Click += FabOnClick;

            var spinner = FindViewById<Spinner>(Resource.Id.select_notification);
            spinner.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(spinner_ItemSelected);
            var adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.list_notifications, Android.Resource.Layout.SimpleSpinnerItem);
            adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            spinner.Adapter = adapter;

            notificationSwitch = FindViewById<Switch>(Resource.Id.notification_switch);
            notificationSwitch.Click += switch_Click;

            Button SelectDate = FindViewById<Button>(Resource.Id.select_date);
            SelectDate.Click += selectDateOnClick;

            Button SelectTime = FindViewById<Button>(Resource.Id.select_time);
            SelectTime.Click += selectTimeOnClick;
        }

        private string getColor()
        {
            int colorId = FindViewById<ChipGroup>(Resource.Id.select_color).CheckedChipId;
            string color;
            if (colorId == Resource.Id.select_color_red)
            {
                color = "Red";
            }
            else if (colorId == Resource.Id.select_color_orange)
            {
                color = "Orange";
            }
            else if (colorId == Resource.Id.select_color_yellow)
            {
                color = "Yellow";
            }
            else if (colorId == Resource.Id.select_color_green)
            {
                color = "Green";
            }
            else if (colorId == Resource.Id.select_color_blue)
            {
                color = "Blue";
            }
            else
            {
                color = "Purple";
            }
            return color;
        }

        private void FabOnClick(object sender, EventArgs e)
        {
            if (isCreate)
            {
                if (FindViewById<EditText>(Resource.Id.name_edit_text).Text != "")
                {
                    if (notificationSwitch.Checked == true)
                    {
                        if (FindViewById<Button>(Resource.Id.select_time).Text != "Выберите время")
                        {
                            if (FindViewById<Spinner>(Resource.Id.select_notification).SelectedItemId != 1)
                            {
                                if (FindViewById<Button>(Resource.Id.select_date).Text != "Выберите дату")
                                {
                                    string name = FindViewById<EditText>(Resource.Id.name_edit_text).Text;
                                    string repeat = FindViewById<Spinner>(Resource.Id.select_notification).SelectedItem.ToString();
                                    DateTime date = DateTime.Parse(FindViewById<Button>(Resource.Id.select_date).Text);
                                    DateTime time = DateTime.Parse(FindViewById<Button>(Resource.Id.select_time).Text);
                                    DatabaseConnecton.CreateTask(name, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), true, repeat, date, time);
                                    Finish();
                                }
                                else
                                {
                                    Toast.MakeText(this, "Выберите дату", ToastLength.Short).Show();
                                }
                            }
                            else
                            {
                                string name = FindViewById<EditText>(Resource.Id.name_edit_text).Text;
                                DateTime time = DateTime.Parse(FindViewById<Button>(Resource.Id.select_time).Text);
                                DatabaseConnecton.CreateTask(name, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), true, "Каждый день", DateTime.Now, time);
                                Finish();
                            }
                        }
                        else
                        {
                            Toast.MakeText(this, "Выберите время", ToastLength.Short).Show();
                        }
                    }
                    else
                    {
                        DatabaseConnecton.CreateTask(FindViewById<EditText>(Resource.Id.name_edit_text).Text, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), false, "", DateTime.Now, DateTime.Now);
                        Finish();
                    }
                }
                else
                {
                    Toast.MakeText(this, "Введите название", ToastLength.Short).Show();
                }
            }
            else if (FindViewById<EditText>(Resource.Id.name_edit_text).Text != "")
            {
                if (notificationSwitch.Checked == true)
                {
                    if (FindViewById<Button>(Resource.Id.select_time).Text != "Выберите время")
                    {
                        if (FindViewById<Spinner>(Resource.Id.select_notification).SelectedItemId != 1)
                        {
                            if (FindViewById<Button>(Resource.Id.select_date).Text != "Выберите дату")
                            {
                                DatabaseConnecton.EditTask(task.Id, FindViewById<EditText>(Resource.Id.name_edit_text).Text, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), true, FindViewById<Spinner>(Resource.Id.select_notification).SelectedItem.ToString(), DateTime.Parse(FindViewById<Button>(Resource.Id.select_date).Text), DateTime.Parse(FindViewById<Button>(Resource.Id.select_time).Text));
                                Finish();
                            }
                            else
                            {
                                Toast.MakeText(this, "Выберите дату", ToastLength.Short).Show();
                            }
                        }
                        else
                        {
                            DatabaseConnecton.EditTask(task.Id, FindViewById<EditText>(Resource.Id.name_edit_text).Text, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), true, FindViewById<Spinner>(Resource.Id.select_notification).SelectedItem.ToString(), DateTime.Parse(FindViewById<Button>(Resource.Id.select_date).Text), DateTime.Parse(FindViewById<Button>(Resource.Id.select_time).Text));
                            Finish();
                        }
                    }
                    else
                    {
                        Toast.MakeText(this, "Выберите время", ToastLength.Short).Show();
                    }
                }
                else
                {
                    DatabaseConnecton.EditTask(task.Id, FindViewById<EditText>(Resource.Id.name_edit_text).Text, FindViewById<EditText>(Resource.Id.type_edit_text).Text, getColor(), false, "", DateTime.Now, DateTime.Now);
                    Finish();
                }
            }
            else
            {
                Toast.MakeText(this, "Введите название", ToastLength.Short).Show();
            }
        }

        private void selectTimeOnClick(object sender, EventArgs e)
        {
            timePicker = new TimePickerDialog(this, (sender, e) => {
                FindViewById<Button>(Resource.Id.select_time).Text = e.HourOfDay.ToString() + ":" + e.Minute.ToString();
            }, DateTime.Now.Hour, DateTime.Now.Minute, true);
            timePicker.Show();
        }

        private void selectDateOnClick(object sender, EventArgs e)
        {
            datePicker = new DatePickerDialog(this);
            datePicker.DatePicker.DateChanged += dateSeleted;
            datePicker.Show();
        }

        private void dateSeleted(object sender, DatePicker.DateChangedEventArgs e)
        {
            if (FindViewById<Spinner>(Resource.Id.select_notification).SelectedItemId == 0)
            {
                FindViewById<Button>(Resource.Id.select_date).Text = datePicker.DatePicker.DateTime.ToString("d");
            }
            else
            {
                FindViewById<Button>(Resource.Id.select_date).Text = datePicker.DatePicker.DateTime.ToString("dddd");
            }
        }

        private void switch_Click(object sender, EventArgs e)
        {
            LinearLayout notificationLayout = FindViewById<LinearLayout>(Resource.Id.notification_layout);
            if (notificationSwitch.Checked == true)
            {
                notificationLayout.Visibility = ViewStates.Visible;
            }
            else
            {
                notificationLayout.Visibility = ViewStates.Invisible;
            }
        }

        private void spinner_ItemSelected(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            if (loading)
            {
                loading = false;
            }
            else
            {
                var spinner = sender as Spinner;
                if (spinner.SelectedItemId == 1)
                {
                    everyDaySeleted();
                }
                else
                {
                    onceSeleted();
                }
            }
        }

        private void onceSeleted()
        {
            FindViewById<Button>(Resource.Id.select_date).Text = "Выберите дату";
            FindViewById<Button>(Resource.Id.select_date).Enabled = true;
            FindViewById<Button>(Resource.Id.select_time).Text = "Выберите время";
        }

        private void everyDaySeleted()
        {
            FindViewById<Button>(Resource.Id.select_date).Text = "Выберите дату";
            FindViewById<Button>(Resource.Id.select_date).Enabled = false;
            FindViewById<Button>(Resource.Id.select_time).Text = "Выберите время";
        }

        protected override void OnResume()
        {
            base.OnResume();
            if (isCreate)
            {
                SupportActionBar.Title = GetString(Resource.String.create_task);
                FindViewById<EditText>(Resource.Id.name_edit_text).Text = "";
                FindViewById<EditText>(Resource.Id.type_edit_text).Text = "";
                FindViewById<Chip>(Resource.Id.select_color_red).Checked = true;
                FindViewById<Switch>(Resource.Id.notification_switch).Checked = true;
                FindViewById<LinearLayout>(Resource.Id.notification_layout).Visibility = ViewStates.Visible;
                FindViewById<Spinner>(Resource.Id.select_notification).SetSelection(0);
                onceSeleted();
            }
            else
            {
                SupportActionBar.Title = GetString(Resource.String.edit_task);
                FindViewById<EditText>(Resource.Id.name_edit_text).Text = task.Name;
                if (task.Description != null)
                {
                    FindViewById<EditText>(Resource.Id.type_edit_text).Text = task.Description;
                }
                else
                {
                    FindViewById<EditText>(Resource.Id.type_edit_text).Text = "";
                }
                if (task.Color == "Red")
                {
                    FindViewById<Chip>(Resource.Id.select_color_red).Checked = true;
                }
                else if (task.Color == "Orange")
                {
                    FindViewById<Chip>(Resource.Id.select_color_orange).Checked = true;
                }
                else if (task.Color == "Yellow")
                {
                    FindViewById<Chip>(Resource.Id.select_color_yellow).Checked = true;
                }
                else if (task.Color == "Green")
                {
                    FindViewById<Chip>(Resource.Id.select_color_green).Checked = true;
                }
                else if (task.Color == "Blue")
                {
                    FindViewById<Chip>(Resource.Id.select_color_blue).Checked = true;
                }
                else if (task.Color == "Purple")
                {
                    FindViewById<Chip>(Resource.Id.select_color_purple).Checked = true;
                }
                if (task.NotificationId != null)
                {
                    FindViewById<Switch>(Resource.Id.notification_switch).Checked = true;
                    FindViewById<LinearLayout>(Resource.Id.notification_layout).Visibility = ViewStates.Visible;
                    DateTime date = DateTime.MinValue;
                    if (notification.Date != null)
                    {
                        date = (DateTime)notification.Date;
                    }
					if (notification.Repeat == "Один раз")
                    {
                        FindViewById<Spinner>(Resource.Id.select_notification).SetSelection(0);
                        FindViewById<Button>(Resource.Id.select_date).Text = date.ToString("d");
                        FindViewById<Button>(Resource.Id.select_date).Enabled = true;
                    }
                    else if (notification.Repeat == "Каждый день")
                    {
                        FindViewById<Spinner>(Resource.Id.select_notification).SetSelection(1);
                        FindViewById<Button>(Resource.Id.select_date).Text = "Выберите дату";
                        FindViewById<Button>(Resource.Id.select_date).Enabled = false;
                    }
                    else if (notification.Repeat == "Раз в неделю")
                    {
                        FindViewById<Spinner>(Resource.Id.select_notification).SetSelection(2);
                        FindViewById<Button>(Resource.Id.select_date).Text = date.ToString("dddd");
                        FindViewById<Button>(Resource.Id.select_date).Enabled = true;
                    }
					FindViewById<Button>(Resource.Id.select_time).Text = notification.Time.ToString("t");
				}
                else
                {
                    FindViewById<Switch>(Resource.Id.notification_switch).Checked = false;
                    FindViewById<LinearLayout>(Resource.Id.notification_layout).Visibility = ViewStates.Invisible;
                }
                loading = true;
            }
        }
    }
}