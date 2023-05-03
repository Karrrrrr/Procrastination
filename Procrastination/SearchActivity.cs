using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Text;
using Android.Util;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using AndroidX.AppCompat.App;
using Procrastination.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using static Android.App.ActionBar;

namespace Procrastination
{
	[Activity(Label = "SearchActivity", Theme = "@style/AppTheme.NoActionBar", ParentActivity = typeof(MainActivity))]
	public class SearchActivity : AppCompatActivity
	{
		EditText searchText;
		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);
			SetContentView(Resource.Layout.search);

			AndroidX.AppCompat.Widget.Toolbar toolbar = FindViewById<AndroidX.AppCompat.Widget.Toolbar>(Resource.Id.toolbar_search);
			SetSupportActionBar(toolbar);
			SupportActionBar.SetDefaultDisplayHomeAsUpEnabled(true);
			SupportActionBar.SetDisplayShowHomeEnabled(true);

			searchText = FindViewById<EditText>(Resource.Id.search_text);
			searchText.RequestFocus();
			InputMethodManager imm = Application.GetSystemService(Context.InputMethodService) as InputMethodManager;
			imm.ShowSoftInput(searchText, ShowFlags.Forced);
			imm.ToggleSoftInput(ShowFlags.Forced, HideSoftInputFlags.ImplicitOnly);

			searchText.TextChanged += search;
		}

		private void search(object sender, TextChangedEventArgs e)
		{
			searchText = FindViewById<EditText>(Resource.Id.search_text);
			LinearLayout searchLayout = FindViewById<LinearLayout>(Resource.Id.search_layout);
			searchLayout.RemoveAllViews();
			if (searchText.Text.Trim() != "")
			{
				List<Task> tasks = DatabaseConnecton.searchTasks(searchText.Text);
				if ((tasks != null) && (tasks.Count > 0))
				{
					foreach (Task task in tasks)
					{
						CreateTask(task, searchLayout);
					}
				}
			}
		}

		private void hideKeyboard()
		{
			searchText = FindViewById<EditText>(Resource.Id.search_text);
			InputMethodManager imm = Application.GetSystemService(Context.InputMethodService) as InputMethodManager;
			imm.HideSoftInputFromWindow(searchText.WindowToken, HideSoftInputFlags.None);
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

			TextView name = new TextView(this) { Text = task.Name, TextSize = (int)Resources.GetDimension(Resource.Dimension.name_size) };
			LayoutParams edittextParams = new LayoutParams(ViewGroup.LayoutParams.MatchParent, ViewGroup.LayoutParams.WrapContent);
			edittextParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.type_marginLeft), (int)Resources.GetDimension(Resource.Dimension.checkbox_marginTop), 0, 0);

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
				OnResume();
			};
			LayoutParams deleteParams = new LayoutParams(ViewGroup.LayoutParams.WrapContent, ViewGroup.LayoutParams.WrapContent);
			deleteParams.SetMargins((int)Resources.GetDimension(Resource.Dimension.trash_ic_marginLeft), (int)Resources.GetDimension(Resource.Dimension.ic_marginTop), 0, 0);

			taskLayout.AddView(tag);
			taskLayout.AddView(name, edittextParams);
			taskLayout.AddView(editButton, editParams);
			taskLayout.AddView(deleteButton, deleteParams);

			tasksLayout.AddView(taskLayout, layoutParams);
		}

		protected override void OnPause()
		{
			hideKeyboard();
			base.OnPause();
		}

		protected override void OnStop()
		{
			hideKeyboard();
			base.OnStop();
		}

		protected override void OnDestroy()
		{
			hideKeyboard();
			base.OnDestroy();
		}
	}
}