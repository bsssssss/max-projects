{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 60.0, 134.0, 783.0, 669.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"toolbars_unpinned_last_save" : 15,
		"subpatcher_template" : "no_borders_gridlock",
		"integercoordinates" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"filename" : "maxconsole-test.js",
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 60.0, 124.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "v8 maxconsole-test.js",
					"textfile" : 					{
						"text" : "",
						"filename" : "maxconsole-test.js",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 73.0, 22.0 ],
					"text" : "console.udp"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "console.udp.maxpat",
				"bootpath" : "~/dev/github.com/bsssssss/max9/Library/patchers/utils",
				"patcherrelativepath" : "../../patchers/utils",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxconsole-test.js",
				"bootpath" : "~/dev/github.com/bsssssss/max9/Library/js/maxconsole-test",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
