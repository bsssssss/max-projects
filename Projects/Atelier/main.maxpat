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
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 238.0, 60.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 150.0, 64.0, 22.0 ],
					"text" : "s player_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.0, 120.0, 104.0, 22.0 ],
					"text" : "gamepad-router 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 585.0, 459.0, 59.0, 22.0 ],
					"text" : "sfrecord~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 525.0, 345.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 525.0, 315.0, 55.0, 22.0 ],
					"text" : "adc~ 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 135.0, 315.0, 194.0, 22.0 ],
					"text" : "feedback_integrator_network_3CH"
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
										"id" : "obj-6",
										"numinlets" : 1,
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "dcblock",
										"patching_rect" : [ 45.0, 75.0, 49.0, 22.0 ],
										"id" : "obj-5",
										"numinlets" : 1,
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 45.0, 45.0, 28.0, 22.0 ],
										"id" : "obj-1",
										"numinlets" : 0,
										"numoutlets" : 1,
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 45.0, 135.0, 35.0, 22.0 ],
										"id" : "obj-4",
										"numinlets" : 1,
										"numoutlets" : 0
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-6", 0 ]
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
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-5", 0 ]
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
					"patching_rect" : [ 135.0, 420.0, 120.0, 22.0 ],
					"text" : "mc.gen~ @t mainout",
					"wrapper_uniquekey" : "u904001080"
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
					"patching_rect" : [ 135.0, 450.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 150.0, 64.0, 22.0 ],
					"text" : "s player_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 120.0, 104.0, 22.0 ],
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
					"patching_rect" : [ 45.0, 30.0, 104.0, 22.0 ],
					"text" : "udpreceive 57130"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
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
			"obj-6" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
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
				"name" : "bell-params.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "biquad.bell.gendsp",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "biquad.low-shelf.gendsp",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "dial-matrix.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/ui",
				"patcherrelativepath" : "./ui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "dial-single.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/ui",
				"patcherrelativepath" : "./ui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "equalizer.gendsp",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "feedback_integrator_network_3CH.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "feedback_integrator_network_engine_3ch.gendsp",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "function-to-controls.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/code",
				"patcherrelativepath" : "./code",
				"type" : "TEXT",
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
				"name" : "go.biquad.ap.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.biquad.bp.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.biquad.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.biquad.hs.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.biquad.lp.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.biquad.ls.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "go.line.ms.gendsp",
				"bootpath" : "~/Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"patcherrelativepath" : "../../../../../Documents/Max 9/Packages/GeneratingSoundAndOrganizingTime/patchers",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "joystick-move-in-2d-space.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/code",
				"patcherrelativepath" : "./code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "joystick-travel.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/gamepad",
				"patcherrelativepath" : "./gamepad",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "leaky-integrator.gendsp",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "low-shelf-params.maxpat",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis",
				"patcherrelativepath" : "./feedback_integrator_synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "xy_projection.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/code",
				"patcherrelativepath" : "./code",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
