{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 1275.0, 983.0 ],
        "gridsnaponopen": 2,
        "style": "monospace",
        "subpatcher_template": "no_borders_gridlock",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 109.0, 555.0, 44.0, 25.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 816.0, 289.0, 783.0, 669.0 ],
                        "gridsnaponopen": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders_gridlock",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 75.0, 555.0, 35.0, 22.0 ],
                                    "text": "out 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 60.0, 48.0, 22.0 ],
                                    "text": "in 1 trig"
                                }
                            },
                            {
                                "box": {
                                    "code": "Param contactMs(3);\nParam asymmetry(0.35);\n\nHistory phase(0);\nHistory running(0);\n\n// Trigger detection\ntrigger = in1 > 0.5;\nnewTrig = trigger && !running;\n\n// Convert contact time to samples\ncontactSamples = contactMs * samplerate / 1000;\n\n// Phase increment\nphaseInc = 1 / contactSamples;\n\n// Reset or advance phase\nphase = newTrig ? 0 : (running ? phase + phaseInc : 0);\n\n// Are we currently generating?\nrunning = newTrig ? 1 : (phase >= 1 ? 0 : running);\n\n// Asymmetric shaping\n// Remap phase through a power curve for asymmetry\nshapedPhase = pow(phase, asymmetry / (1 - asymmetry + 0.001));\n\n// Output: half-sine pulse\nout1 = running ? sin(shapedPhase * 3.14159) : 0;",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 90.0, 570.0, 450.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 165.0, 330.0, 116.0, 25.0 ],
                    "text": "gen~ @t exciter"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "outlettype": [ "int", "float" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 84.0, 144.0, 1029.0, 734.0 ],
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "float" ],
                                    "patching_rect": [ 301.0, 100.0, 49.0, 22.0 ],
                                    "text": "t 17 0.7"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "float" ],
                                    "patching_rect": [ 225.0, 100.0, 42.0, 22.0 ],
                                    "text": "t 7 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "float" ],
                                    "patching_rect": [ 143.0, 100.0, 42.0, 22.0 ],
                                    "text": "t 3 0.4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 50.0, 100.0, 59.0, 22.0 ],
                                    "text": "t 2.5 0.35"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-86",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-87",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 143.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-88",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 225.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-90",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 301.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-92",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 173.75, 182.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-93",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 208.75, 182.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-26", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-27", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-28", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-50", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "ABL Effect Modules", "browsegendsp" ]
                    },
                    "patching_rect": [ 165.0, 240.0, 174.0, 25.0 ],
                    "text": "p exciter_presets"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 84.0, 349.0, 1029.0, 734.0 ],
                        "integercoordinates": 1,
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 277.0, 148.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 50.0, 126.0, 41.0, 22.0 ],
                                    "text": "sel 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "int", "int", "int" ],
                                    "patching_rect": [ 50.0, 100.0, 50.5, 22.0 ],
                                    "text": "key 32"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 167.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 139.0, 306.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 84.0, 306.0, 51.0, 22.0 ],
                                    "text": "fetch $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 84.0, 256.0, 75.0, 22.0 ],
                                    "text": "counter 1 16"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-92",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 50.0, 211.0, 119.0, 22.0 ],
                                    "text": "metro 200 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-69",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 347.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-70",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 84.0, 347.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 1 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-92", 0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "order": 1,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "order": 0,
                                    "source": [ "obj-92", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 0,
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "order": 1,
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "Data Knot", "ABL Effect Modules", "browsegendsp" ]
                    },
                    "patching_rect": [ 105.0, 118.0, 439.0, 25.0 ],
                    "text": "p hit_spacebar_to_play"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 165.0, 375.0, 29.5, 25.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 313.0, 175.0, 54.0, 39.0 ],
                    "text": "soft mallet",
                    "textcolor": [ 0.18823529411764706, 0.1843137254901961, 0.1843137254901961, 0.8 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 320.0, 211.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 153.0, 175.0, 45.0, 39.0 ],
                    "text": "hard stick",
                    "textcolor": [ 0.18823529411764706, 0.1843137254901961, 0.1843137254901961, 0.8 ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-46",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 257.0, 175.0, 54.0, 39.0 ],
                    "text": "hard mallet",
                    "textcolor": [ 0.18823529411764706, 0.1843137254901961, 0.1843137254901961, 0.8 ]
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 205.0, 189.0, 45.0, 23.0 ],
                    "text": "stick",
                    "textcolor": [ 0.18823529411764706, 0.1843137254901961, 0.1843137254901961, 0.8 ]
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 269.0, 211.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 217.0, 211.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 165.0, 211.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 105.0, 330.0, 52.0, 25.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "attr": "contactMs",
                    "id": "obj-10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 165.0, 272.0, 150.0, 25.0 ]
                }
            },
            {
                "box": {
                    "attr": "asymmetry",
                    "id": "obj-33",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 320.0, 272.0, 150.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 705.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 165.0, 645.0, 123.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [ 34.0, 100.0, 1146.0, 983.0 ],
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 10,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 795.0, 90.0, 345.0, 141.0 ],
                                    "text": "This codebox is the implementation of a patch made by @Ersatz_Ben.\n\nYou can donwload that original patch here: https://www.youtube.com/watch?v=pYGNKY_SFyE\n\nPhilip Meyer inspired me to implement it in Gen~ in this video: \nhttps://www.youtube.com/watch?v=biG_DlZTc8o&t=3502s\n\nThanks to both!"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 763.0, 1035.0, 47.0, 22.0 ],
                                    "text": "out 2 R"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 36.0, 1035.0, 45.0, 22.0 ],
                                    "text": "out 1 L"
                                }
                            },
                            {
                                "box": {
                                    "code": "// === 16-VOICE SVF FILTERBANK WITH STEREO ===\n\n// === PARAMS ===\nParam angle(0.25, min=0, max=0.5);\nParam pitch_env_amt(0.5, min=0, max=12);       // Semitones up at hit\nParam pitch_env_decay(0.05, min=0.001, max=1); // Decay time in seconds\nParam reset(0, min=0, max=1);                  // Reset filters when > 0.5\n\n// === INPUTS ===\n// in1 = excitation (audio)\n// in2-17 = frequencies (16 values)\n// in18-33 = Q values (16 values)\n\n// === FILTER STATES (32 History variables) ===\n\n// Modes 0-3 (n=0, symmetric)\nHistory lp0(0); History bp0(0);\nHistory lp1(0); History bp1(0);\nHistory lp2(0); History bp2(0);\nHistory lp3(0); History bp3(0);\n\n// Modes 4-7 (n=1)\nHistory lp4(0); History bp4(0);\nHistory lp5(0); History bp5(0);\nHistory lp6(0); History bp6(0);\nHistory lp7(0); History bp7(0);\n\n// Modes 8-11 (n=2)\nHistory lp8(0);  History bp8(0);\nHistory lp9(0);  History bp9(0);\nHistory lp10(0); History bp10(0);\nHistory lp11(0); History bp11(0);\n\n// Modes 12-15 (n=3)\nHistory lp12(0); History bp12(0);\nHistory lp13(0); History bp13(0);\nHistory lp14(0); History bp14(0);\nHistory lp15(0); History bp15(0);\n\n// === PITCH ENVELOPE STATE ===\nHistory env_value(0);\nHistory env_target(0);\nHistory prev_excitation(0);\n\n// === RESET FILTERS ===\nif (reset > 0.5) {\n    lp0 = 0; bp0 = 0;\n    lp1 = 0; bp1 = 0;\n    lp2 = 0; bp2 = 0;\n    lp3 = 0; bp3 = 0;\n    lp4 = 0; bp4 = 0;\n    lp5 = 0; bp5 = 0;\n    lp6 = 0; bp6 = 0;\n    lp7 = 0; bp7 = 0;\n    lp8 = 0; bp8 = 0;\n    lp9 = 0; bp9 = 0;\n    lp10 = 0; bp10 = 0;\n    lp11 = 0; bp11 = 0;\n    lp12 = 0; bp12 = 0;\n    lp13 = 0; bp13 = 0;\n    lp14 = 0; bp14 = 0;\n    lp15 = 0; bp15 = 0;\n    env_value = 0;\n    env_target = 0;\n}\n\n// === EXCITATION INPUT ===\nexcitation = in1;\n\n// === PITCH ENVELOPE ===\n\n// Detect hit (rising edge of excitation)\nhit_detected = (excitation > 0.1) && (prev_excitation <= 0.1);\n\n// On hit, set target to 1 (envelope will rise smoothly)\nif (hit_detected) {\n    env_target = 1;\n}\n\n// Fast rise coefficient (2ms attack)\nrise_coeff = 1 - exp(-1 / (0.002 * samplerate));\n\n// Decay coefficient from parameter\ndecay_coeff = exp(-1 / (pitch_env_decay * samplerate));\n\n// Smooth rise toward target, then decay target\nenv_value = env_value + (env_target - env_value) * rise_coeff;\nenv_target = env_target * decay_coeff;\n\n// Store for next sample\nprev_excitation = excitation;\n\n// Calculate pitch multiplier (semitones to ratio)\npitch_mult = pow(2, (pitch_env_amt * env_value) / 12);\n\n// === STEREO COEFFICIENTS ===\npan_l = cos(angle * TWOPI);\npan_r = sin(angle * TWOPI);\n\n// === MAX SAFE FREQUENCY ===\nmax_freq = samplerate * 0.4;  // Safe limit below Nyquist\n\n// === MODE 0 (symmetric) ===\nfreq0     = clip(in2 * pitch_mult, 20, max_freq);\nf0        = 2 * sin(PI * freq0 / samplerate);\nres0_fold = 1 - abs(1 - in18);\nres0      = clip(res0_fold, 0, 0.999);\nd0        = 2 * pow(1 - res0, 2);\nhp0       = excitation - lp0 - (bp0 * d0);\nbp0       = fixdenorm(bp0 + (f0 * hp0));\nlp0       = fixdenorm(lp0 + (f0 * bp0));\nout0      = bp0;\n\n// === MODE 1 (symmetric) ===\nfreq1     = clip(in3 * pitch_mult, 20, max_freq);\nf1        = 2 * sin(PI * freq1 / samplerate);\nres1_fold = 1 - abs(1 - in19);\nres1      = clip(res1_fold, 0, 0.999);\nd1        = 2 * pow(1 - res1, 2);\nhp1       = excitation - lp1 - (bp1 * d1);\nbp1       = fixdenorm(bp1 + (f1 * hp1));\nlp1       = fixdenorm(lp1 + (f1 * bp1));\nout1_temp = bp1;\n\n// === MODE 2 (symmetric) ===\nfreq2     = clip(in4 * pitch_mult, 20, max_freq);\nf2        = 2 * sin(PI * freq2 / samplerate);\nres2_fold = 1 - abs(1 - in20);\nres2      = clip(res2_fold, 0, 0.999);\nd2        = 2 * pow(1 - res2, 2);\nhp2       = excitation - lp2 - (bp2 * d2);\nbp2       = fixdenorm(bp2 + (f2 * hp2));\nlp2       = fixdenorm(lp2 + (f2 * bp2));\nout2_temp = bp2;\n\n// === MODE 3 (symmetric) ===\nfreq3     = clip(in5 * pitch_mult, 20, max_freq);\nf3        = 2 * sin(PI * freq3 / samplerate);\nres3_fold = 1 - abs(1 - in21);\nres3      = clip(res3_fold, 0, 0.999);\nd3        = 2 * pow(1 - res3, 2);\nhp3       = excitation - lp3 - (bp3 * d3);\nbp3       = fixdenorm(bp3 + (f3 * hp3));\nlp3       = fixdenorm(lp3 + (f3 * bp3));\nout3_temp = bp3;\n\n// === MODE 4 (asymmetric) ===\nfreq4     = clip(in6 * pitch_mult, 20, max_freq);\nf4        = 2 * sin(PI * freq4 / samplerate);\nres4_fold = 1 - abs(1 - in22);\nres4      = clip(res4_fold, 0, 0.999);\nd4        = 2 * pow(1 - res4, 2);\nhp4       = excitation - lp4 - (bp4 * d4);\nbp4       = fixdenorm(bp4 + (f4 * hp4));\nlp4       = fixdenorm(lp4 + (f4 * bp4));\nout4_temp = bp4;\n\n// === MODE 5 (asymmetric) ===\nfreq5     = clip(in7 * pitch_mult, 20, max_freq);\nf5        = 2 * sin(PI * freq5 / samplerate);\nres5_fold = 1 - abs(1 - in23);\nres5      = clip(res5_fold, 0, 0.999);\nd5        = 2 * pow(1 - res5, 2);\nhp5       = excitation - lp5 - (bp5 * d5);\nbp5       = fixdenorm(bp5 + (f5 * hp5));\nlp5       = fixdenorm(lp5 + (f5 * bp5));\nout5_temp = bp5;\n\n// === MODE 6 (asymmetric) ===\nfreq6     = clip(in8 * pitch_mult, 20, max_freq);\nf6        = 2 * sin(PI * freq6 / samplerate);\nres6_fold = 1 - abs(1 - in24);\nres6      = clip(res6_fold, 0, 0.999);\nd6        = 2 * pow(1 - res6, 2);\nhp6       = excitation - lp6 - (bp6 * d6);\nbp6       = fixdenorm(bp6 + (f6 * hp6));\nlp6       = fixdenorm(lp6 + (f6 * bp6));\nout6_temp = bp6;\n\n// === MODE 7 (asymmetric) ===\nfreq7     = clip(in9 * pitch_mult, 20, max_freq);\nf7        = 2 * sin(PI * freq7 / samplerate);\nres7_fold = 1 - abs(1 - in25);\nres7      = clip(res7_fold, 0, 0.999);\nd7        = 2 * pow(1 - res7, 2);\nhp7       = excitation - lp7 - (bp7 * d7);\nbp7       = fixdenorm(bp7 + (f7 * hp7));\nlp7       = fixdenorm(lp7 + (f7 * bp7));\nout7_temp = bp7;\n\n// === MODE 8 (asymmetric) ===\nfreq8     = clip(in10 * pitch_mult, 20, max_freq);\nf8        = 2 * sin(PI * freq8 / samplerate);\nres8_fold = 1 - abs(1 - in26);\nres8      = clip(res8_fold, 0, 0.999);\nd8        = 2 * pow(1 - res8, 2);\nhp8       = excitation - lp8 - (bp8 * d8);\nbp8       = fixdenorm(bp8 + (f8 * hp8));\nlp8       = fixdenorm(lp8 + (f8 * bp8));\nout8_temp = bp8;\n\n// === MODE 9 (asymmetric) ===\nfreq9     = clip(in11 * pitch_mult, 20, max_freq);\nf9        = 2 * sin(PI * freq9 / samplerate);\nres9_fold = 1 - abs(1 - in27);\nres9      = clip(res9_fold, 0, 0.999);\nd9        = 2 * pow(1 - res9, 2);\nhp9       = excitation - lp9 - (bp9 * d9);\nbp9       = fixdenorm(bp9 + (f9 * hp9));\nlp9       = fixdenorm(lp9 + (f9 * bp9));\nout9_temp = bp9;\n\n// === MODE 10 (asymmetric) ===\nfreq10     = clip(in12 * pitch_mult, 20, max_freq);\nf10        = 2 * sin(PI * freq10 / samplerate);\nres10_fold = 1 - abs(1 - in28);\nres10      = clip(res10_fold, 0, 0.999);\nd10        = 2 * pow(1 - res10, 2);\nhp10       = excitation - lp10 - (bp10 * d10);\nbp10       = fixdenorm(bp10 + (f10 * hp10));\nlp10       = fixdenorm(lp10 + (f10 * bp10));\nout10_temp = bp10;\n\n// === MODE 11 (asymmetric) ===\nfreq11     = clip(in13 * pitch_mult, 20, max_freq);\nf11        = 2 * sin(PI * freq11 / samplerate);\nres11_fold = 1 - abs(1 - in29);\nres11      = clip(res11_fold, 0, 0.999);\nd11        = 2 * pow(1 - res11, 2);\nhp11       = excitation - lp11 - (bp11 * d11);\nbp11       = fixdenorm(bp11 + (f11 * hp11));\nlp11       = fixdenorm(lp11 + (f11 * bp11));\nout11_temp = bp11;\n\n// === MODE 12 (asymmetric) ===\nfreq12     = clip(in14 * pitch_mult, 20, max_freq);\nf12        = 2 * sin(PI * freq12 / samplerate);\nres12_fold = 1 - abs(1 - in30);\nres12      = clip(res12_fold, 0, 0.999);\nd12        = 2 * pow(1 - res12, 2);\nhp12       = excitation - lp12 - (bp12 * d12);\nbp12       = fixdenorm(bp12 + (f12 * hp12));\nlp12       = fixdenorm(lp12 + (f12 * bp12));\nout12_temp = bp12;\n\n// === MODE 13 (asymmetric) ===\nfreq13     = clip(in15 * pitch_mult, 20, max_freq);\nf13        = 2 * sin(PI * freq13 / samplerate);\nres13_fold = 1 - abs(1 - in31);\nres13      = clip(res13_fold, 0, 0.999);\nd13        = 2 * pow(1 - res13, 2);\nhp13       = excitation - lp13 - (bp13 * d13);\nbp13       = fixdenorm(bp13 + (f13 * hp13));\nlp13       = fixdenorm(lp13 + (f13 * bp13));\nout13_temp = bp13;\n\n// === MODE 14 (asymmetric) ===\nfreq14     = clip(in16 * pitch_mult, 20, max_freq);\nf14        = 2 * sin(PI * freq14 / samplerate);\nres14_fold = 1 - abs(1 - in32);\nres14      = clip(res14_fold, 0, 0.999);\nd14        = 2 * pow(1 - res14, 2);\nhp14       = excitation - lp14 - (bp14 * d14);\nbp14       = fixdenorm(bp14 + (f14 * hp14));\nlp14       = fixdenorm(lp14 + (f14 * bp14));\nout14_temp = bp14;\n\n// === MODE 15 (asymmetric) ===\nfreq15     = clip(in17 * pitch_mult, 20, max_freq);\nf15        = 2 * sin(PI * freq15 / samplerate);\nres15_fold = 1 - abs(1 - in33);\nres15      = clip(res15_fold, 0, 0.999);\nd15        = 2 * pow(1 - res15, 2);\nhp15       = excitation - lp15 - (bp15 * d15);\nbp15       = fixdenorm(bp15 + (f15 * hp15));\nlp15       = fixdenorm(lp15 + (f15 * bp15));\nout15_temp = bp15;\n\n// === SUM SYMMETRIC MODES (0-3) ===\nsymmetric_sum = out0 + out1_temp + out2_temp + out3_temp;\n\n// === SUM ASYMMETRIC MODES (4-15) ===\nasymmetric_sum = out4_temp + out5_temp + out6_temp + out7_temp + \n                 out8_temp + out9_temp + out10_temp + out11_temp + \n                 out12_temp + out13_temp + out14_temp + out15_temp;\n\n// === STEREO OUTPUT ===\nout1 = symmetric_sum + (asymmetric_sum * pan_l);  // Left\nout2 = symmetric_sum + (asymmetric_sum * pan_r);  // Right",
                                    "fontface": 0,
                                    "fontname": "JetBrainsMono Nerd Font Mono",
                                    "fontsize": 14.0,
                                    "id": "obj-37",
                                    "maxclass": "codebox",
                                    "numinlets": 33,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 36.0, 512.0, 746.0, 510.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 36.0, 60.0, 63.0, 22.0 ],
                                    "text": "in 1 excite"
                                }
                            },
                            {
                                "box": {
                                    "code": "// === BESSEL FUNCTIONS ===\n\nbesselj0(x) {\n    sum  = 1;\n    term = 1;\n    \n    term = term * (-1) * (x*x) / (4 * 1 * 1);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 2 * 2);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 3 * 3);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 4 * 4);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 5 * 5);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 6 * 6);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 7 * 7);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 8 * 8);\n    sum  = sum + term;\n    \n    return sum;\n}\n\nbesselj1(x) {\n    sum  = x / 2;\n    term = x / 2;\n    \n    term = term * (-1) * (x*x) / (4 * 1 * 2);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 2 * 3);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 3 * 4);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 4 * 5);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 5 * 6);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 6 * 7);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 7 * 8);\n    sum  = sum + term;\r\n    \n    term = term * (-1) * (x*x) / (4 * 8 * 9);\n    sum  = sum + term;\n    \n    return sum;\n}\n\nbesselj(n, x) {\n    j0 = besselj0(x);\n    j1 = besselj1(x);\n    \n    result = j0;\n    \n    if (n == 1) {\n        result = j1;\n    }\n    \n    if (n >= 2) {\n        if (x == 0) {\n            result = 0;\n        } else {\n            jnm2 = j0;\n            jnm1 = j1;\n            jn   = 0;\n            \n            jn   = (2 * 1 / x) * jnm1 - jnm2;\n            jnm2 = jnm1;\n            jnm1 = jn;\n            \n            if (n >= 3) {\n                jn   = (2 * 2 / x) * jnm1 - jnm2;\n                jnm2 = jnm1;\n                jnm1 = jn;\n            }\n            \n            result = jnm1;\n        }\n    }\n    \n    return result;\n}\n\n// === PARAMS ===\n\nParam hit_position(0.6, min=0.3, max=2);\nParam tuning(100, min=50, max=500);\nParam size(0.5, min=0.2, max=5);\nParam damping(1.06, min=0.5, max=17);\nParam overtones(0.1, min=0.1, max=0.97);\n\n// === DATA BUFFERS ===\n\nData bessel_zeros(16);\nData bessel_weights(16);\nData mode_n(16);\n\nHistory prev_hit(-1);\nHistory calc_index(16);\n\n// === STARTUP: FILL ZEROS ===\n\nif (elapsed == 0) {\r\n    \n    // n=0\n    poke(bessel_zeros, 2.4048,  0); poke(mode_n, 0, 0);\n    poke(bessel_zeros, 5.5201,  1); poke(mode_n, 0, 1);\n    poke(bessel_zeros, 8.6537,  2); poke(mode_n, 0, 2);\n    poke(bessel_zeros, 11.7915, 3); poke(mode_n, 0, 3);\r\n    \n    // n=1\n    poke(bessel_zeros, 3.8317,  4); poke(mode_n, 1, 4);\n    poke(bessel_zeros, 7.0156,  5); poke(mode_n, 1, 5);\n    poke(bessel_zeros, 10.1735, 6); poke(mode_n, 1, 6);\n    poke(bessel_zeros, 13.3237, 7); poke(mode_n, 1, 7);\r\n    \n    // n=2\n    poke(bessel_zeros, 5.1356,  8 ); poke(mode_n, 2, 8);\n    poke(bessel_zeros, 8.4172,  9 ); poke(mode_n, 2, 9);\n    poke(bessel_zeros, 11.6198, 10); poke(mode_n, 2, 10);\n    poke(bessel_zeros, 14.7959, 11); poke(mode_n, 2, 11);\r\n    \n    // n=3\n    poke(bessel_zeros, 6.3802,  12); poke(mode_n, 3, 12);\n    poke(bessel_zeros, 9.761,   13); poke(mode_n, 3, 13);\n    poke(bessel_zeros, 13.0152, 14); poke(mode_n, 3, 14);\n    poke(bessel_zeros, 16.2235, 15); poke(mode_n, 3, 15);\n}\n\n// === WEIGHT CALCULATION ===\n\nidx = calc_index;\n\nchanged = hit_position != prev_hit;\n\nif (changed) {\n    idx = 0;\n}\n\nif (idx < 16) {\n    alpha  = peek(bessel_zeros, idx);\n    n      = peek(mode_n, idx);\n    x      = alpha * hit_position;\n    weight = besselj(n, x);\r\n    \n    poke(bessel_weights, weight, idx);\n    idx = idx + 1;\n}\n\ncalc_index = idx;\nprev_hit   = hit_position;\n\n// === OUTPUTS: 16 FREQUENCIES (out1-16) ===\n\nout1  = tuning * peek(bessel_zeros, 0 ) / (TWOPI * size);\nout2  = tuning * peek(bessel_zeros, 1 ) / (TWOPI * size);\nout3  = tuning * peek(bessel_zeros, 2 ) / (TWOPI * size);\nout4  = tuning * peek(bessel_zeros, 3 ) / (TWOPI * size);\nout5  = tuning * peek(bessel_zeros, 4 ) / (TWOPI * size);\nout6  = tuning * peek(bessel_zeros, 5 ) / (TWOPI * size);\nout7  = tuning * peek(bessel_zeros, 6 ) / (TWOPI * size);\nout8  = tuning * peek(bessel_zeros, 7 ) / (TWOPI * size);\nout9  = tuning * peek(bessel_zeros, 8 ) / (TWOPI * size);\nout10 = tuning * peek(bessel_zeros, 9 ) / (TWOPI * size);\nout11 = tuning * peek(bessel_zeros, 10) / (TWOPI * size);\nout12 = tuning * peek(bessel_zeros, 11) / (TWOPI * size);\nout13 = tuning * peek(bessel_zeros, 12) / (TWOPI * size);\nout14 = tuning * peek(bessel_zeros, 13) / (TWOPI * size);\nout15 = tuning * peek(bessel_zeros, 14) / (TWOPI * size);\nout16 = tuning * peek(bessel_zeros, 15) / (TWOPI * size);\n\n// === OUTPUTS: 16 Q VALUES (out17-32) ===\n\nout17 = scale(peek(bessel_weights, 0 ), 0, 1, overtones, 0.99999, damping);\nout18 = scale(peek(bessel_weights, 1 ), 0, 1, overtones, 0.99999, damping);\nout19 = scale(peek(bessel_weights, 2 ), 0, 1, overtones, 0.99999, damping);\nout20 = scale(peek(bessel_weights, 3 ), 0, 1, overtones, 0.99999, damping);\nout21 = scale(peek(bessel_weights, 4 ), 0, 1, overtones, 0.99999, damping);\nout22 = scale(peek(bessel_weights, 5 ), 0, 1, overtones, 0.99999, damping);\nout23 = scale(peek(bessel_weights, 6 ), 0, 1, overtones, 0.99999, damping);\nout24 = scale(peek(bessel_weights, 7 ), 0, 1, overtones, 0.99999, damping);\nout25 = scale(peek(bessel_weights, 8 ), 0, 1, overtones, 0.99999, damping);\nout26 = scale(peek(bessel_weights, 9 ), 0, 1, overtones, 0.99999, damping);\nout27 = scale(peek(bessel_weights, 10), 0, 1, overtones, 0.99999, damping);\nout28 = scale(peek(bessel_weights, 11), 0, 1, overtones, 0.99999, damping);\nout29 = scale(peek(bessel_weights, 12), 0, 1, overtones, 0.99999, damping);\nout30 = scale(peek(bessel_weights, 13), 0, 1, overtones, 0.99999, damping);\nout31 = scale(peek(bessel_weights, 14), 0, 1, overtones, 0.99999, damping);\nout32 = scale(peek(bessel_weights, 15), 0, 1, overtones, 0.99999, damping);",
                                    "fontface": 0,
                                    "fontname": "JetBrainsMono Nerd Font Mono",
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 32,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 58.0, 90.0, 724.0, 420.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 32 ],
                                    "source": [ "obj-3", 31 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 31 ],
                                    "source": [ "obj-3", 30 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 30 ],
                                    "source": [ "obj-3", 29 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 29 ],
                                    "source": [ "obj-3", 28 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 28 ],
                                    "source": [ "obj-3", 27 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 27 ],
                                    "source": [ "obj-3", 26 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 26 ],
                                    "source": [ "obj-3", 25 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 25 ],
                                    "source": [ "obj-3", 24 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 24 ],
                                    "source": [ "obj-3", 23 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 23 ],
                                    "source": [ "obj-3", 22 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 22 ],
                                    "source": [ "obj-3", 21 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 21 ],
                                    "source": [ "obj-3", 20 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 20 ],
                                    "source": [ "obj-3", 19 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 19 ],
                                    "source": [ "obj-3", 18 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 18 ],
                                    "source": [ "obj-3", 17 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 17 ],
                                    "source": [ "obj-3", 16 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 16 ],
                                    "source": [ "obj-3", 15 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 15 ],
                                    "source": [ "obj-3", 14 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 14 ],
                                    "source": [ "obj-3", 13 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 13 ],
                                    "source": [ "obj-3", 12 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 12 ],
                                    "source": [ "obj-3", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 11 ],
                                    "source": [ "obj-3", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 10 ],
                                    "source": [ "obj-3", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 9 ],
                                    "source": [ "obj-3", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 8 ],
                                    "source": [ "obj-3", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 7 ],
                                    "source": [ "obj-3", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 6 ],
                                    "source": [ "obj-3", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 5 ],
                                    "source": [ "obj-3", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 4 ],
                                    "source": [ "obj-3", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 3 ],
                                    "source": [ "obj-3", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 2 ],
                                    "source": [ "obj-3", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-37", 1 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 165.0, 600.0, 288.0, 25.0 ],
                    "text": "gen~ @title Membrane_Bessel_Functions",
                    "varname": "gen~_AC"
                }
            },
            {
                "box": {
                    "attr": "tuning",
                    "id": "obj-32",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 435.0, 225.0, 25.0 ]
                }
            },
            {
                "box": {
                    "attr": "damping",
                    "id": "obj-81",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 465.0, 225.0, 25.0 ]
                }
            },
            {
                "box": {
                    "attr": "overtones",
                    "id": "obj-82",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 495.0, 225.0, 25.0 ]
                }
            },
            {
                "box": {
                    "attr": "size",
                    "id": "obj-89",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 525.0, 225.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 793.0, 330.0, 37.0, 25.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "candycane": 4,
                    "id": "obj-91",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 525.0, 150.0, 287.0, 172.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "multislider",
                            "parameter_modmode": 0,
                            "parameter_shortname": "multislider",
                            "parameter_type": 3
                        }
                    },
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 1,
                    "size": 16,
                    "varname": "multislider"
                }
            },
            {
                "box": {
                    "attr": "pitch_env_decay",
                    "id": "obj-12",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 205.0, 555.0, 225.0, 25.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 1 ],
                    "midpoints": [ 802.5, 372.0, 185.0, 372.0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 1 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 2 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 1 ],
                    "midpoints": [ 443.5, 639.0, 278.5, 639.0 ],
                    "source": [ "obj-48", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 3 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 1 ],
                    "source": [ "obj-80", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 1 ],
                    "order": 0,
                    "source": [ "obj-91", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "order": 1,
                    "source": [ "obj-91", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-94", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-80": [ "live.gain~[2]", "live.gain~", 0 ],
            "obj-91": [ "multislider", "multislider", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "styles": [
            {
                "name": "monospace",
                "default": {
                    "fontname": [ "CommitMono" ]
                },
                "parentstyle": "",
                "multi": 0
            }
        ]
    }
}