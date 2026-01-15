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
        "rect": [ 34.0, 100.0, 1660.0, 983.0 ],
        "gridsnaponopen": 2,
        "style": "monospace",
        "subpatcher_template": "borders_gridlock_monospace",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 45.0, 300.0, 44.0, 25.0 ],
                    "text": "track"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 165.0, 780.0, 102.0, 25.0 ],
                    "text": "mc.clip~ -1 1"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 165.0, 750.0, 188.0, 25.0 ],
                    "text": "mc.stereo~ @activechans 2"
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 810.0, 59.0, 25.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 495.0, 49.0, 102.0, 25.0 ],
                    "text": "wavetable-osc"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 94.0, 76.0, 48.0, 23.0 ],
                    "text": "cps"
                }
            },
            {
                "box": {
                    "id": "obj-160",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 95.0, 50.0, 48.0, 23.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 45.0, 49.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 71.0, 49.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 150.0, 90.0, 52.0, 25.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-7",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 45.0, 75.0, 50.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 3,
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
                        "rect": [ 476.0, 228.0, 818.0, 581.0 ],
                        "default_fontname": "CommitMono",
                        "gridsnaponopen": 2,
                        "style": "monospace",
                        "subpatcher_template": "borders_gridlock_monospace",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 15.0, 88.0, 25.0 ],
                                    "text": "in 1 toggle"
                                }
                            },
                            {
                                "box": {
                                    "code": "toggle = in1;\r\ncps    = in2; // rate in cycles per seconds\r\nreset  = in3;\r\nslope  = 0;\r\n\r\nif (toggle) {\r\n    slope = cps / samplerate;\r\n}\r\n\r\nout1 = accum(slope, reset);",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 14.0,
                                    "id": "obj-5",
                                    "maxclass": "codebox",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 45.0, 780.0, 480.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 396.0, 15.0, 66.0, 25.0 ],
                                    "text": "in 2 cps"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 715.0, 15.0, 80.0, 25.0 ],
                                    "text": "in 3 reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 540.0, 44.0, 25.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 2 ],
                                    "midpoints": [ 724.5, 42.0, 785.5, 42.0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            }
                        ],
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
                    },
                    "patching_rect": [ 45.0, 120.0, 124.0, 25.0 ],
                    "text": "gen~ @t timeline"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 2 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
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