using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using Widget = AndroidX.AppCompat.Widget;
using AndroidX.Core.View;
using AndroidX.DrawerLayout.Widget;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Navigation;
using Google.Android.Material.Snackbar;
using Android.Content;
using Procrastination.Database;
using System.Collections.Generic;
using Android.Graphics;
using static Android.App.ActionBar;
using System.Drawing;
using System.Reflection.Emit;
using Org.Apache.Http.Protocol;
using System.Xml.Serialization;
using Android.Views.InputMethods;

namespace Procrastination
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, NavigationView.IOnNavigationItemSelectedListener
    {
        static List<int> delTask = new List<int>();
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            Widget.Toolbar toolbar = FindViewById<Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab);
            fab.Click += FabOnClick;

            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawer, toolbar, Resource.String.navigation_drawer_open, Resource.String.navigation_drawer_close);
            drawer.AddDrawerListener(toggle);
            toggle.SyncState();

            NavigationView navigationView = FindViewById<NavigationView>(Resource.Id.nav_view);
            navigationView.SetNavigationItemSelectedListener(this);

            ImageButton search = FindViewById<ImageButton>(Resource.Id.searchButton);
            search.Click += searchOnClick;

            Spinner spinner = FindViewById<Spinner>(Resource.Id.sort);
			spinner.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(spinner_ItemSelected);
			var adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.sort_list, Android.Resource.Layout.SimpleSpinnerItem);
			adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
			spinner.Adapter = adapter;
		}

		private void spinner_ItemSelected(object sender, AdapterView.ItemSelectedEventArgs e)
		{
			var spinner = sender as Spinner;
            LoadTasks((int)spinner.SelectedItemId);
		}

		private void searchOnClick(object sender, EventArgs e)
		{
			var intent = new Intent(this, typeof(SearchActivity));
			StartActivity(intent);
		}

		public override void OnBackPressed()
        {
            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            if(drawer.IsDrawerOpen(GravityCompat.Start))
            {
                drawer.CloseDrawer(GravityCompat.Start);
            }
            else
            {
                base.OnBackPressed();
            }
        }


        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            CreateEditActivity.isCreate = true;
            var intent = new Intent(this, typeof(CreateEditActivity));
            StartActivity(intent);
        }

        public bool OnNavigationItemSelected(IMenuItem item)
        {
            int id = item.ItemId;

            if (id == Resource.Id.nav_timer)
            {
                var timer_intent = new Intent(this, typeof(TimerActivity));
                StartActivity(timer_intent);
            }
            else if (id == Resource.Id.nav_settings)
            {
                var settings_intent = new Intent(this, typeof(SettingsActivity));
                StartActivity(settings_intent);
            }
            else if (id == Resource.Id.nav_about)
            {
                onAboutAlertShow();
            }

            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            drawer.CloseDrawer(GravityCompat.Start);
            return true;
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        public void onAboutAlertShow()
        {
            Android.App.AlertDialog.Builder alert = new Android.App.AlertDialog.Builder(this);
            alert.SetTitle("О программе");
            alert.SetMessage("Разработчик: Наумкина Сабина Артёмовна 4432 КИТ КАИ");
            Dialog dialog = alert.Create();
            dialog.Show();
        }

        protected override void OnResume()
        {
            base.OnResume();
            LoadTasks(0);
        }

        private void LoadTasks(int code)
        {
			LinearLayout tasksLayout = FindViewById<LinearLayout>(Resource.Id.tasks_layout);
			tasksLayout.RemoveAllViews();
			List<Task> tasks = DatabaseConnecton.GetTasks(code);
			if ((tasks != null) && (tasks.Count > 0))
			{
				foreach (Task task in tasks)
				{
					CreateTask(task, tasksLayout);
				}
			}
			else
			{
				TextView tw = new TextView(this) { Text = "Нет дел", TextAlignment = TextAlignment.Center };
				LayoutParams twParams = new LayoutParams(ViewGroup.LayoutParams.MatchParent, ViewGroup.LayoutParams.MatchParent);
				twParams.SetMargins(0, (int)Resources.GetDimension(Resource.Dimension.no_tasks_marginTop), 0, 0);

				tasksLayout.AddView(tw, twParams);
			}
		}

        private void CreateTask(Task task, LinearLayout tasksLayout)
        {
			RelativeLayout taskLayout = new RelativeLayout(this);
            taskLayout.SetBackgroundResource(Resource.Drawable.task_layout_background);
            taskLayout.SetPadding(0, 0, 0, (int)Resources.GetDimension(Resource.Dimension.task_layout_padding_bottom));
            LayoutParams layoutParams = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
            int margin = (int)Resources.GetDimension(Resource.Dimension.task_layout_margin);
            layoutParams.SetMargins(margin, margin, margin, 0);

            ImageView tag = new ImageView(this);
            tag.SetImageResource(Resource.Drawable.color_tag);
            if (task.Color == "Red")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.red);
            }
            else if (task.Color == "Orange")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.orange);
            }
            else if (task.Color == "Yellow")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.yellow);
            }
            else if (task.Color == "Green")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.green);
            }
            else if (task.Color == "Blue")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.blue);
            }
            else if (task.Color == "Purple")
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.purple);
            }
            else
            {
                tag.ImageTintList = GetColorStateList(Resource.Color.task_background);
            }

            CheckBox checkBox = new CheckBox(this) { Text = task.Name, TextSize = (int)Resources.GetDimension(Resource.Dimension.name_size) };
            LayoutParams checkboxParams = new LayoutParams(ViewGroup.LayoutParams.MatchParent, ViewGroup.LayoutParams.WrapContent);
            checkboxParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.checkbox_marginLeft), (int)Resources.GetDimension(Resource.Dimension.checkbox_marginTop), 0, 0);
            checkBox.Click += delegate
            {
                if (checkBox.Checked)
                {
                    checkBox.Text = ConvertToStrikethrough(checkBox.Text);
                    delTask.Add(task.Id);
                }
                else
                {
                    checkBox.Text = task.Name;
                    delTask.Remove(task.Id);
                }
            };

            if (task.Description != null)
            {
                TextView type = new TextView(this) { Text = task.Description, TextSize = (int)Resources.GetDimension(Resource.Dimension.type_size) };
                LayoutParams typeParams = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
                typeParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.type_marginLeft), (int)Resources.GetDimension(Resource.Dimension.type_marginTop), 0, 0);
                taskLayout.AddView(type, typeParams);
            }

            ImageView editButton = new ImageView(this);
            editButton.SetImageResource(Resource.Drawable.ic_edit);
            editButton.Click += delegate
            {
                CreateEditActivity.isCreate = false;
                CreateEditActivity.task = task;
                CreateEditActivity.notification = DatabaseConnecton.getNotification(task.Id);
                var intent = new Intent(this, typeof(CreateEditActivity));
                StartActivity(intent);
            };
            LayoutParams editParams = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
            editParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.edit_ic_marginLeft), (int)Resources.GetDimension(Resource.Dimension.ic_marginTop), 0, 0);

            ImageView deleteButton = new ImageView(this);
            deleteButton.SetImageResource(Resource.Drawable.ic_trash);
            deleteButton.Click += delegate
            {
                DatabaseConnecton.deleteTask(task.Id);
                delTask.Remove(task.Id);
                OnResume();
            };
            LayoutParams deleteParams = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
            deleteParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.trash_ic_marginLeft), (int)Resources.GetDimension(Resource.Dimension.ic_marginTop), 0, 0);

            taskLayout.AddView(tag);
            taskLayout.AddView(checkBox, checkboxParams);
            taskLayout.AddView(editButton, editParams);
            taskLayout.AddView(deleteButton, deleteParams);

            tasksLayout.AddView(taskLayout, layoutParams);
        }

        string ConvertToStrikethrough(string text)
        {
            string strikethroughText = "";
            foreach (char symb in text)
            {
                strikethroughText += $"{symb}\u0336";
            }
            return strikethroughText;
        }

        void deleteTasks()
        {
			if (delTask.Count > 0)
			{
				foreach (int task in delTask)
				{
					DatabaseConnecton.deleteTask(task);
				}
				delTask.Clear();
			}
		}

		protected override void OnPause()
        {
			deleteTasks();
			base.OnPause();
		}

		protected override void OnStop()
		{
			deleteTasks();
			base.OnStop();
		}

		protected override void OnDestroy()
		{
			deleteTasks();
			base.OnDestroy();
		}
	}
}

