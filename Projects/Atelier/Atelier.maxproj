{
	"name" : "Atelier",
	"version" : 1,
	"creationdate" : 3842600401,
	"modificationdate" : 3843157067,
	"viewrect" : [ 1005.0, 330.0, 370.0, 583.0 ],
	"autoorganize" : 0,
	"hideprojectwindow" : 0,
	"showdependencies" : 1,
	"autolocalize" : 0,
	"contents" : 	{
		"patchers" : 		{
			"main.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1,
				"toplevel" : 1
			}
,
			"feedback_integrator_synthesis_3CH.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"gamepad-router.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"gamepad-controls-CC.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"vcv.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"seq-map.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}

		}
,
		"code" : 		{
			"joystick-move-in-2d-space.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"gamepad-controls-CC.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"vcv-presets-manager.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"gamepad-router.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"leaky-integrator.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
					"projectrelativepath" : "./feedback_integrator_synthesis"
				}

			}

		}
,
		"externals" : 		{

		}

	}
,
	"layout" : 	{

	}
,
	"searchpath" : 	{

	}
,
	"detailsvisible" : 0,
	"amxdtype" : 0,
	"readonly" : 0,
	"devpathtype" : 0,
	"devpath" : ".",
	"sortmode" : 0,
	"viewmode" : 0,
	"includepackages" : 0
}
