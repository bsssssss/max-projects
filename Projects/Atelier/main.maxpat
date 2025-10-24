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
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 169.0, 390.0, 73.0, 22.0 ],
					"text" : "loadmess 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 9,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 130.0, 49.0, 22.0 ],
									"text" : "$1 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 50.0, 160.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 39.0, 22.0 ],
									"text" : "dbtoa"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 242.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 169.0, 450.0, 32.0, 22.0 ],
					"text" : "p db"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 169.0, 420.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 135.0, 480.0, 53.0, 22.0 ],
					"text" : "mc.*~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"markers" : [ -60, -48, -36, -24, -12, -6, 0, 6 ],
					"markersused" : 8,
					"maxclass" : "levelmeter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 573.0, 128.0, 64.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.631372549019608, 0.317647058823529, 0.317647058823529, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 105.0, 64.0, 22.0 ],
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
					"patching_rect" : [ 167.0, 75.0, 104.0, 22.0 ],
					"text" : "gamepad-router 1"
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
					"patching_rect" : [ 135.0, 525.0, 120.0, 22.0 ],
					"text" : "mc.gen~ @t mainout",
					"wrapper_uniquekey" : "u095001305"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 615.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.247058823529412, 0.36078431372549, 0.686274509803922, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 105.0, 64.0, 22.0 ],
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
					"patching_rect" : [ 45.0, 30.0, 104.0, 22.0 ],
					"text" : "udpreceive 57130"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 54.5, 69.0, 176.5, 69.0 ],
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
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-15", 0 ]
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
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
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
				"name" : "leak-level-selector.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis/ui",
				"patcherrelativepath" : "./feedback_integrator_synthesis/ui",
				"type" : "TEXT",
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
				"name" : "noise-level-selector.js",
				"bootpath" : "~/dev/personal/max9/Projects/Atelier/feedback_integrator_synthesis/ui",
				"patcherrelativepath" : "./feedback_integrator_synthesis/ui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
