{
	"name" : "Atelier",
	"version" : 1,
	"creationdate" : 3842600401,
	"modificationdate" : 3843396721,
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
			"bell-params.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"feedback_integrator_network_3CH.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}
,
			"low-shelf-params.maxpat" : 			{
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
,
			"joystick-travel.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1
			}

		}
,
		"code" : 		{
			"biquad.bell.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1
			}
,
			"biquad.low-shelf.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1
			}
,
			"dial-matrix.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"equalizer.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1
			}
,
			"feedback_integrator_network_engine_3ch.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1
			}
,
			"joystick-move-in-2d-space.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"leaky-integrator.gendsp" : 			{
				"kind" : "gendsp",
				"local" : 1
			}
,
			"xy_projection.js" : 			{
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
			"dial-single.js" : 			{
				"kind" : "javascript",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/dev/personal/max9/Projects/Atelier/ui",
					"projectrelativepath" : "./ui"
				}

			}
,
			"leak-level-selector.js" : 			{
				"kind" : "javascript",
				"local" : 1,
				"singleton" : 				{
					"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis/ui",
					"projectrelativepath" : "./feedback_integrator_synthesis/ui"
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
