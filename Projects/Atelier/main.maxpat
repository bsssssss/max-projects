{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 0.0, 60.0, 1728.0, 1023.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"toolbars_unpinned_last_save" : 7,
		"subpatcher_template" : "no_borders_gridlock",
		"integercoordinates" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 135.0, 315.0, 202.0, 22.0 ],
					"text" : "feedback_integrator_synthesis_3CH"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 9,
								"minor" : 0,
								"revision" : 9,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 394.0, 385.0, 449.0, 418.0 ],
							"gridsize" : [ 15.0, 15.0 ],
							"gridsnaponopen" : 2,
							"toolbars_unpinned_last_save" : 15,
							"subpatcher_template" : "no_borders_gridlock",
							"integercoordinates" : 1,
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "tanh",
										"patching_rect" : [ 45.0, 105.0, 32.0, 22.0 ],
										"numinlets" : 1,
										"id" : "obj-6",
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "dcblock",
										"patching_rect" : [ 45.0, 75.0, 49.0, 22.0 ],
										"numinlets" : 1,
										"id" : "obj-5",
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 45.0, 45.0, 28.0, 22.0 ],
										"numinlets" : 0,
										"id" : "obj-1",
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 45.0, 135.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"id" : "obj-4",
										"numoutlets" : 0
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-5", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-6", 0 ],
										"destination" : [ "obj-4", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-6", 0 ]
									}

								}
 ]
						}

					}
,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 135.0, 423.0, 120.0, 22.0 ],
					"text" : "mc.gen~ @t mainout",
					"wrapper_uniquekey" : "u317000928"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 135.0, 363.0, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 453.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 105.0, 61.0, 22.0 ],
					"text" : "s gmpd_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 75.0, 104.0, 22.0 ],
					"text" : "gamepad-router 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 45.0, 104.0, 22.0 ],
					"text" : "udpreceive 57130"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-4" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-8::obj-15" : [ "Bell Freq", "Bell Freq", 0 ],
			"obj-8::obj-16" : [ "Bell Freq[1]", "Bell Q", 0 ],
			"obj-8::obj-17" : [ "Bell Freq[2]", "Bell Gain", 0 ],
			"obj-8::obj-32" : [ "Bell Freq[3]", "Bell Gain", 0 ],
			"obj-8::obj-33" : [ "Bell Freq[4]", "Bell Q", 0 ],
			"obj-8::obj-35" : [ "Bell Freq[5]", "Bell Freq", 0 ],
			"obj-8::obj-37" : [ "Bell Freq[6]", "Bell Gain", 0 ],
			"obj-8::obj-38" : [ "Bell Freq[7]", "Bell Q", 0 ],
			"obj-8::obj-40" : [ "Bell Freq[8]", "Bell Freq", 0 ],
			"parameter_overrides" : 			{
				"obj-8::obj-15" : 				{
					"parameter_exponent" : 3.33,
					"parameter_longname" : "Bell Freq",
					"parameter_range" : [ 0.0, 12000.0 ],
					"parameter_shortname" : "Bell Freq",
					"parameter_unitstyle" : 3
				}
,
				"obj-8::obj-16" : 				{
					"parameter_longname" : "Bell Freq[1]",
					"parameter_range" : [ 0.0, 10.0 ],
					"parameter_shortname" : "Bell Q",
					"parameter_unitstyle" : 1
				}
,
				"obj-8::obj-17" : 				{
					"parameter_longname" : "Bell Freq[2]",
					"parameter_shortname" : "Bell Gain"
				}
,
				"obj-8::obj-32" : 				{
					"parameter_longname" : "Bell Freq[3]"
				}
,
				"obj-8::obj-33" : 				{
					"parameter_longname" : "Bell Freq[4]"
				}
,
				"obj-8::obj-35" : 				{
					"parameter_longname" : "Bell Freq[5]"
				}
,
				"obj-8::obj-37" : 				{
					"parameter_longname" : "Bell Freq[6]"
				}
,
				"obj-8::obj-38" : 				{
					"parameter_longname" : "Bell Freq[7]"
				}
,
				"obj-8::obj-40" : 				{
					"parameter_longname" : "Bell Freq[8]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "feedback_integrator_synthesis_3CH.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "feedback_integrator_synthesis_engine_3ch.gendsp",
				"bootpath" : "~/dev/personal/max9/Library/gen",
				"patcherrelativepath" : "../../Library/gen",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "gamepad-router.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/utils/gamepad-router",
				"patcherrelativepath" : "./utils/gamepad-router",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "joystick-move-in-2d-space.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/code",
				"patcherrelativepath" : "./code",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
