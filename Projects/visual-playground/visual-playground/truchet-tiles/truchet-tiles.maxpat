{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
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
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 30.0, 110.0, 22.0 ],
					"text" : "read truchet-tiles.js"
				}

			}
, 			{
				"box" : 				{
					"filename" : "truchet-tiles.js",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.0, 75.0, 500.0, 500.0 ],
					"textfile" : 					{
						"filename" : "truchet-tiles.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
 ],
		"originid" : "pat-23",
		"dependency_cache" : [ 			{
				"name" : "Tile_class.js",
				"bootpath" : "~/Code/max9/Projects/visual-playground/visual-playground/truchet-tiles",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "truchet-tiles.js",
				"bootpath" : "~/Code/max9/Projects/visual-playground/visual-playground/truchet-tiles",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
