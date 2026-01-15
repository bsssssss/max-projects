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
        "rect": [ 689.0, 610.0, 800.0, 350.0 ],
        "gridsnaponopen": 2,
        "style": "monospace",
        "subpatcher_template": "borders_gridlock_monospace",
        "integercoordinates": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 390.0, 165.0, 167.0, 25.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "R",
                        "c": "R"
                    },
                    "text": "out~ 2 @attr_comment R"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 165.0, 167.0, 25.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "L",
                        "c": "L"
                    },
                    "text": "out~ 1 @attr_comment L"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 390.0, 135.0, 160.0, 25.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "R",
                        "c": "R"
                    },
                    "text": "in~ 2 @attr_comment R"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 210.0, 135.0, 160.0, 25.0 ],
                    "saved_object_attributes": {
                        "attr_comment": "L",
                        "c": "L"
                    },
                    "text": "in~ 1 @attr_comment L"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
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
    }
}