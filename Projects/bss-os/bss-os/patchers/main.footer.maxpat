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
        "rect": [ 0.0, 66.0, 1309.0, 1051.0 ],
        "openinpresentation": 1,
        "gridsnaponopen": 2,
        "toolbars_unpinned_last_save": 11,
        "subpatcher_template": "no_borders",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 152.0, 255.0, 33.0, 22.0 ],
                    "text": "front"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 152.0, 285.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 450.0, 90.0, 61.0, 22.0 ],
                    "text": "savebang"
                }
            },
            {
                "box": {
                    "code": "{\n    \"sequencers\": {\n        \"default\": \"seq.default\",\n        \"test\": \"seq.test6\"\n    },\n    \"sounds\": {\n        \"default\": \"snd.default\",\n        \"surge-vst\": \"snd.surge-vst\",\n        \"midi-out\": \"snd.midi-out\"\n    }\n}",
                    "fontface": 0,
                    "fontname": "JetBrainsMono Nerd Font Mono",
                    "fontsize": 16.0,
                    "id": "obj-2",
                    "maxclass": "dict.codebox",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "dictionary", "", "", "", "" ],
                    "patching_rect": [ 450.0, 120.0, 465.0, 285.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 30.0, 780.0, 996.0 ],
                    "saved_object_attributes": {
                        "legacy": 0,
                        "parameter_enable": 0,
                        "parameter_mappable": 0
                    }
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 167.0, 150.0, 153.0, 22.0 ],
                    "text": "svg spiral.svg, setzoom 0.8"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "interactive-bang-icon.js",
                    "id": "obj-14",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 167.0, 180.0, 30.0, 30.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 750.0, 0.0, 30.0, 30.0 ],
                    "textfile": {
                        "filename": "interactive-bang-icon.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 152.0, 90.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 450.0, 420.0, 100.0, 22.0 ],
                    "text": "s os.patchers.get"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 152.0, 225.0, 22.0, 22.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
                    "bgcolor2": [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
                    "bgfillcolor_angle": 270.0,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.08, 0.13, 0.17, 0.0 ],
                    "bgfillcolor_color1": [ 0.376470588235294, 0.384313725490196, 0.4, 1.0 ],
                    "bgfillcolor_color2": [ 0.290196078431373, 0.309803921568627, 0.301960784313725, 1.0 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "color",
                    "fontface": 0,
                    "fontname": "Hasklug Nerd Font Mono",
                    "fontsize": 11.0,
                    "gradient": 1,
                    "id": "obj-40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 152.0, 120.0, 101.0, 22.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_textcolor_inverse"
                        }
                    },
                    "text": "update library",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "background": 1,
                    "bgcolor": [ 0.205, 0.173, 0.152, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 915.0, 120.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 1920.0, 30.0 ],
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
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 187.5, 213.0, 329.51171875, 213.0, 329.51171875, 147.0, 176.5, 147.0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-40", 0 ]
                }
            }
        ]
    }
}