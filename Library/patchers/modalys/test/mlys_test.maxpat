{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 1261.0, 983.0 ],
        "gridsnaponopen": 2,
        "subpatcher_template": "no_borders_gridlock",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 540.0, 330.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 375.0, 278.0, 22.0 ],
                    "saved_object_attributes": {
                        "dimension": -1,
                        "name": "my_lua",
                        "pathtofile": "mlys_test.lua",
                        "script": "require(\"tools\")\n",
                        "target-attribute": "none",
                        "update": 0.009999999776482582
                    },
                    "text": "mlys.lua @name my_lua @pathtofile mlys_test.lua"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 540.0, 510.0, 65.0, 22.0 ],
                    "saved_object_attributes": {
                        "angle-mode": "degree",
                        "multi": 0,
                        "precision": "double"
                    },
                    "text": "mlys.script"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 540.0, 540.0, 80.0, 22.0 ],
                    "saved_object_attributes": {
                        "precision": ""
                    },
                    "text": "modalys~ 1 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}