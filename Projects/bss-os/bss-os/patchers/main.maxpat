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
        "rect": [ 0.0, 66.0, 1728.0, 1051.0 ],
        "default_fontname": "CommitMono",
        "gridsnaponopen": 2,
        "toolbars_unpinned_last_save": 15,
        "subpatcher_template": "no_borders_gridlock_monospace",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 476.0, 260.0, 666.0, 636.0 ],
                        "gridsnaponopen": 2,
                        "toolbars_unpinned_last_save": 15,
                        "style": "monospace",
                        "subpatcher_template": "no_borders_gridlock_monospace",
                        "integercoordinates": 1,
                        "boxes": [],
                        "lines": [],
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
                    "patching_rect": [ 45.0, 1305.0, 80.0, 25.0 ],
                    "saved_object_attributes": {
                        "style": "monospace"
                    },
                    "text": "p research"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 43.0, 116.0, 25.0 ],
                    "text": "r main.loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 60.0, 134.0, 783.0, 669.0 ],
                        "gridsnaponopen": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders_gridlock",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
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
                                        "rect": [ 60.0, 134.0, 783.0, 669.0 ],
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "no_borders",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 155.0, 175.0, 96.0, 22.0 ],
                                                    "text": "prepend stored1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 175.0, 94.0, 22.0 ],
                                                    "text": "prepend active1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-38",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 155.0, 145.0, 63.0, 22.0 ],
                                                    "text": "array.tolist"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 145.0, 63.0, 22.0 ],
                                                    "text": "array.tolist"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 50.0, 100.0, 113.0, 22.0 ],
                                                    "text": "route normal muted"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-49",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-52",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 96.5, 257.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-38", 0 ],
                                                    "source": [ "obj-23", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-41", 0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-38", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 160.0, 65.0, 22.0 ],
                                    "text": "p preset-ui"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
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
                                        "rect": [ 60.0, 134.0, 783.0, 669.0 ],
                                        "toolbars_unpinned_last_save": 15,
                                        "subpatcher_template": "no_borders",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 230.0, 263.0, 89.0, 22.0 ],
                                                    "text": "prepend muted"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 65.0, 263.0, 93.0, 22.0 ],
                                                    "text": "prepend normal"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-31",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "", "" ],
                                                    "patching_rect": [ 65.0, 190.0, 349.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacy": 0
                                                    },
                                                    "text": "dict.unpack normal: muted:"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 65.0, 160.0, 75.0, 22.0 ],
                                                    "text": "route accent"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 100.0, 64.0, 22.0 ],
                                                    "text": "get accent"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 5,
                                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                                    "patching_rect": [ 50.0, 130.0, 79.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "legacy": 0,
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0
                                                    },
                                                    "text": "dict os.colors"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-51",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-52",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 65.0, 318.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-31", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 0 ],
                                                    "source": [ "obj-30", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-31", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-31", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-25", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 50.0, 130.0, 71.0, 22.0 ],
                                    "text": "p get-colors"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 100.0, 104.0, 22.0 ],
                                    "text": "r os.colors.update"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-17",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 242.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1245.0, 45.0, 66.0, 25.0 ],
                    "text": "p colors"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 60.0, 134.0, 783.0, 669.0 ],
                        "gridsnaponopen": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders_gridlock",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 102.0, 594.0, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 727.0, 386.0, 30.0, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 727.0, 326.0, 40.0, 22.0 ],
                                    "text": "* 0.66"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 727.0, 354.0, 109.0, 22.0 ],
                                    "text": "prepend replace -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 727.0, 294.0, 62.0, 22.0 ],
                                    "text": "array.at -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 727.0, 446.0, 40.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "array"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 131.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 607.0, 386.0, 30.0, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 607.0, 326.0, 33.0, 22.0 ],
                                    "text": "* 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 607.0, 354.0, 109.0, 22.0 ],
                                    "text": "prepend replace -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 607.0, 294.0, 62.0, 22.0 ],
                                    "text": "array.at -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 607.0, 446.0, 40.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "array"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "dictionary" ],
                                    "patching_rect": [ 487.0, 474.0, 379.0, 22.0 ],
                                    "text": "dict.pack normal: muted: soft:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 487.0, 506.0, 95.0, 22.0 ],
                                    "text": "prepend set text"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 487.0, 251.0, 40.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "array"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "list", "bang" ],
                                    "patching_rect": [ 487.0, 220.0, 172.0, 22.0 ],
                                    "text": "themecolor \"Object Text Color\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "list", "bang" ],
                                    "patching_rect": [ 53.0, 100.0, 68.0, 22.0 ],
                                    "text": "themecolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 102.0, 174.0, 32.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 102.0, 626.0, 106.0, 22.0 ],
                                    "text": "s os.colors.update"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 142.0, 132.0, 95.0, 22.0 ],
                                    "text": "r main.loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 290.0, 386.0, 30.0, 22.0 ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 290.0, 326.0, 33.0, 22.0 ],
                                    "text": "* 0.3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 290.0, 354.0, 109.0, 22.0 ],
                                    "text": "prepend replace -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 290.0, 294.0, 62.0, 22.0 ],
                                    "text": "array.at -1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 290.0, 446.0, 40.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "array"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "dictionary" ],
                                    "patching_rect": [ 170.0, 474.0, 259.0, 22.0 ],
                                    "text": "dict.pack normal: muted:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 170.0, 506.0, 111.0, 22.0 ],
                                    "text": "prepend set accent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-32",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 170.0, 251.0, 40.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "array"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "dictionary", "", "", "", "" ],
                                    "patching_rect": [ 170.0, 594.0, 79.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 0,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict os.colors"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "list", "bang" ],
                                    "patching_rect": [ 170.0, 220.0, 222.0, 22.0 ],
                                    "text": "themecolor \"Syntax Object Name Color\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-32", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-23", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "order": 2,
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 1 ],
                                    "midpoints": [ 179.5, 425.00390625, 320.5, 425.00390625 ],
                                    "order": 0,
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "midpoints": [ 179.5, 286.8046875, 299.5, 286.8046875 ],
                                    "order": 1,
                                    "source": [ "obj-32", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 1 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-44", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 2 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "midpoints": [ 124.5, 206.0, 179.5, 206.0 ],
                                    "order": 1,
                                    "source": [ "obj-55", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "midpoints": [ 111.5, 581.0, 111.5, 581.0 ],
                                    "order": 1,
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 111.5, 581.0, 179.5, 581.0 ],
                                    "order": 0,
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "midpoints": [ 124.5, 206.0, 496.5, 206.0 ],
                                    "order": 0,
                                    "source": [ "obj-55", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-56", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-57", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "midpoints": [ 496.5, 581.0, 179.5, 581.0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "midpoints": [ 496.5, 286.23046875, 736.5, 286.23046875 ],
                                    "order": 1,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 1 ],
                                    "midpoints": [ 496.5, 431.0, 757.5, 431.0 ],
                                    "order": 0,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "midpoints": [ 496.5, 286.8046875, 616.5, 286.8046875 ],
                                    "order": 3,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 1 ],
                                    "midpoints": [ 496.5, 431.0, 637.5, 431.0 ],
                                    "order": 2,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "order": 4,
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 180.0, 795.0, 102.0, 25.0 ],
                    "text": "p colorscheme"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 60.0, 134.0, 783.0, 669.0 ],
                        "gridsnaponopen": 2,
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders_gridlock",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 97.0, 219.0, 71.0, 22.0 ],
                                    "text": "fromsymbol"
                                }
                            },
                            {
                                "box": {
                                    "filename": "pattrstorage-filter-subs.js",
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 97.0, 190.0, 157.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0
                                    },
                                    "text": "v8 pattrstorage-filter-subs.js",
                                    "textfile": {
                                        "filename": "pattrstorage-filter-subs.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 130.0, 66.0, 22.0 ],
                                    "text": "route done"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 97.0, 159.0, 107.0, 22.0 ],
                                    "text": "prepend subscribe"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 100.0, 82.0, 22.0 ],
                                    "text": "route clientlist"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-7",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 97.0, 301.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-28", 0 ],
                                    "source": [ "obj-29", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1770.0, 402.0, 160.0, 25.0 ],
                    "text": "p subscription_filter"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 0.0 ],
                    "bgcolor2": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 0.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 0.0 ],
                    "bgfillcolor_color1": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 0.0 ],
                    "bgfillcolor_color2": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 1.0 ],
                    "bgfillcolor_proportion": 0.5,
                    "bgfillcolor_type": "color",
                    "fontname": "JetBrainsMono Nerd Font Mono",
                    "gradient": 1,
                    "id": "obj-75",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 43.0, 44.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1098.0, 1023.0, 44.0, 24.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.228866807292567, 0.20370887929535, 0.187557713055579, 1.0 ],
                    "fontface": 0,
                    "fontname": "JetBrainsMono Nerd Font Mono",
                    "fontsize": 12.0,
                    "id": "obj-80",
                    "maxclass": "messageview",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 496.0, 75.0, 420.0, 615.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1098.0, 722.0, 627.0, 296.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_stripecolor"
                        },
                        "stripe2": {
                            "expression": "themecolor.theme_bgcolor"
                        }
                    },
                    "stripe2": [ 0.205, 0.173, 0.152, 1.0 ],
                    "textcolor": [ 0.7607843137254902, 0.7607843137254902, 0.7607843137254902, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "patching_rect": [ 476.0, 43.0, 59.0, 25.0 ],
                    "text": "console"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 45.0, 43.0, 66.0, 25.0 ],
                    "text": "savebang"
                }
            },
            {
                "box": {
                    "code": "{\n    \"sequencers\": {\n        \"default\": \"seq.default\",\r\n        \"directions\": \"seq.directions\"\n    },\n    \"sounds\": {\n        \"default\": \"snd.default\",\n        \"surge-vst\": \"snd.surge-vst\",\n        \"midi-out\": \"snd.midi-out\"\n    }\n}",
                    "editlocked": 1,
                    "fontface": 0,
                    "fontname": "<Monospaced>",
                    "fontsize": 14.0,
                    "id": "obj-52",
                    "linenumbers": 0,
                    "maxclass": "dict.codebox",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 45.0, 75.0, 421.0, 615.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 315.0, 1052.0, 500.0, 500.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 705.0, 131.0, 25.0 ],
                    "text": "s os.patchers.get"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 101.0, 267.0, 783.0, 669.0 ],
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 35.0, 109.0, 22.0 ],
                                    "text": "set \"update library\""
                                }
                            },
                            {
                                "box": {
                                    "filename": "text-button.js",
                                    "id": "obj-8",
                                    "maxclass": "v8ui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 65.0, 120.0, 30.0 ],
                                    "textfile": {
                                        "filename": "text-button.js",
                                        "flags": 0,
                                        "embed": 0,
                                        "autowatch": 1
                                    }
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 45.0, 1335.0, 102.0, 25.0 ],
                    "text": "p js-research"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.205, 0.173, 0.152, 1.0 ],
                    "id": "obj-16",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2338.0, 1335.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1098.0, 105.0, 627.0, 615.0 ],
                    "proportion": 0.39,
                    "rounded": 0,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.205, 0.173, 0.152, 1.0 ],
                    "id": "obj-13",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2323.0, 1319.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 317.0, 304.0, 779.0, 746.0 ],
                    "proportion": 0.39,
                    "rounded": 0,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1635.0, 285.0, 116.0, 25.0 ],
                    "text": "r main.loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1815.0, 327.0, 145.0, 25.0 ],
                    "text": "getsubscriptionlist"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 996.0, 635.0, 322.0, 444.0 ],
                        "toolbars_unpinned_last_save": 15,
                        "subpatcher_template": "no_borders",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 105.0, 105.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 210.0, 166.0, 22.0 ],
                                    "text": "getclientlist, subscribemode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 137.0, 240.0, 100.0, 22.0 ],
                                    "text": "subscribemode 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 75.0, 150.0, 81.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 180.0, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-23",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 60.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 75.0, 294.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1635.0, 315.0, 66.0, 25.0 ],
                    "text": "p config"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 45.0, 765.0, 66.0, 25.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 45.0, 795.0, 116.0, 25.0 ],
                    "text": "s main.loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1792.0, 297.0, 102.0, 25.0 ],
                    "text": "storagewindow"
                }
            },
            {
                "box": {
                    "active1": [ 0.956590352327427, 0.76614891786161, 0.452834090916593, 1.0 ],
                    "bubblesize": 15,
                    "dirty": 1,
                    "embed": 0,
                    "emptycolor": [ 0.297, 0.261, 0.238, 1.0 ],
                    "id": "obj-3",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 1245.0, 75.0, 315.0, 615.0 ],
                    "pattrstorage": "pattrstorage-main",
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 105.0, 315.0, 615.0 ],
                    "saved_attribute_attributes": {
                        "bgcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        },
                        "emptycolor": {
                            "expression": "themecolor.theme_editing_bgcolor"
                        }
                    },
                    "stored1": [ 0.956590352327427, 0.76614891786161, 0.452834090916593, 0.3 ]
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1770.0, 372.0, 642.0, 25.0 ],
                    "saved_object_attributes": {
                        "client_rect": [ 100, 172, 482, 579 ],
                        "parameter_enable": 0,
                        "parameter_mappable": 0,
                        "storage_rect": [ 1315, 606, 1727, 1083 ]
                    },
                    "subscribe": [ "main.track1::gain", "main.transport::bpm", "main.track2::instrument_parameters", "main.track3::instrument_parameters", "main.track4::instrument_parameters", "main.track1::sequencer_parameters", "main.track2::instrument_slot", "main.track3::instrument_slot", "main.track4::instrument_slot", "main.track1::sequencer_slot", "main.track2::gain", "main.track3::gain", "main.track4::gain", "main.track1::instrument_parameters", "main.track2::sequencer_parameters", "main.track3::sequencer_parameters", "main.track4::sequencer_parameters", "main.track1::instrument_slot", "main.track2::sequencer_slot", "main.track3::sequencer_slot", "main.track4::sequencer_slot" ],
                    "text": "pattrstorage pattrstorage-main @savemode 0 @autorestore 0 @subscribemode 1 @changemode 1",
                    "varname": "pattrstorage-main"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-27",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.options.maxpat",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 46.0, 855.0, 870.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 1725.0, 30.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 4 ],
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-20",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.track.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 721.0, 990.0, 195.0, 165.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 902.0, 137.0, 194.0, 165.0 ],
                    "varname": "main.track4",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 3 ],
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-19",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.track.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 496.0, 990.0, 195.0, 165.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 707.0, 137.0, 194.0, 165.0 ],
                    "varname": "main.track3",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 2 ],
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-18",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.track.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 271.0, 990.0, 195.0, 165.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 512.0, 137.0, 194.0, 165.0 ],
                    "varname": "main.track2",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.transport.maxpat",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "offset": [ 0.0, 0.0 ],
                    "patching_rect": [ 46.0, 900.0, 870.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 317.0, 105.0, 779.0, 30.0 ],
                    "varname": "main.transport",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ 1 ],
                    "bgmode": 1,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "main.track.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 46.0, 990.0, 195.0, 165.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 317.0, 137.0, 194.0, 165.0 ],
                    "varname": "main.track1",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 46.0, 1185.0, 59.0, 25.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1770.0, 267.0, 95.0, 25.0 ],
                    "text": "clientwindow"
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.205, 0.173, 0.152, 1.0 ],
                    "id": "obj-81",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 2358.0, 1350.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1098.0, 1020.0, 627.0, 30.0 ],
                    "proportion": 0.39,
                    "rounded": 0,
                    "saved_attribute_attributes": {
                        "bgfillcolor": {
                            "expression": "themecolor.theme_bgcolor"
                        }
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 1779.5, 432.7578125, 1756.0, 432.7578125, 1756.0, 369.0, 1779.5, 369.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 280.5, 1170.0, 55.5, 1170.0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 505.5, 1170.0, 55.5, 1170.0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 730.5, 1170.0, 55.5, 1170.0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 129.5, 69.0, 54.5, 69.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-5", 0 ]
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
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-71", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-18::obj-23": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-18::obj-42": [ "live.text[21]", "live.text[18]", 0 ],
            "obj-19::obj-23": [ "live.numbox[5]", "live.numbox", 0 ],
            "obj-19::obj-42": [ "live.text[20]", "live.text[18]", 0 ],
            "obj-20::obj-23": [ "live.numbox[4]", "live.numbox", 0 ],
            "obj-20::obj-42": [ "live.text[19]", "live.text[18]", 0 ],
            "obj-27::obj-10": [ "live.text[15]", "live.text", 0 ],
            "obj-27::obj-41": [ "live.text[2]", "live.text", 0 ],
            "obj-27::obj-7": [ "live.text[4]", "live.text", 0 ],
            "obj-2::obj-14": [ "live.text", "live.text", 0 ],
            "obj-2::obj-16": [ "live.text[1]", "live.text", 0 ],
            "obj-2::obj-43": [ "live.text[17]", "live.text", 0 ],
            "obj-31::obj-23": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-31::obj-42": [ "live.text[18]", "live.text[18]", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-18::obj-23": {
                    "parameter_longname": "live.numbox[6]"
                },
                "obj-18::obj-42": {
                    "parameter_longname": "live.text[21]"
                },
                "obj-19::obj-23": {
                    "parameter_longname": "live.numbox[5]"
                },
                "obj-19::obj-42": {
                    "parameter_longname": "live.text[20]"
                },
                "obj-20::obj-23": {
                    "parameter_longname": "live.numbox[4]"
                },
                "obj-20::obj-42": {
                    "parameter_longname": "live.text[19]"
                },
                "obj-27::obj-10": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.text[15]",
                    "parameter_modmode": 0,
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-2::obj-14": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.text",
                    "parameter_modmode": 0,
                    "parameter_shortname": "live.text",
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-2::obj-16": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.text[1]",
                    "parameter_modmode": 0,
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-2::obj-43": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.text[17]",
                    "parameter_modmode": 0,
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                },
                "obj-31::obj-23": {
                    "parameter_longname": "live.numbox[3]"
                },
                "obj-31::obj-42": {
                    "parameter_invisible": 0,
                    "parameter_longname": "live.text[18]",
                    "parameter_modmode": 0,
                    "parameter_shortname": "live.text[18]",
                    "parameter_type": 2,
                    "parameter_unitstyle": 10
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "saved_attribute_attributes": {
            "bgcolor": {
                "expression": "themecolor.theme_bgcolor"
            }
        }
    }
}