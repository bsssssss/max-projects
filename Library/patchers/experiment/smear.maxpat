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
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 180.0, 645.0, 52.0, 25.0 ],
                    "text": "*~ 0.2"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 180.0, 780.0, 59.0, 25.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 180.0, 750.0, 102.0, 25.0 ],
                    "text": "mc.clip~ -1 1"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 180.0, 720.0, 80.0, 25.0 ],
                    "text": "mc.stereo~"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 180.0, 690.0, 94.0, 25.0 ],
                    "text": "mc.pack~ 2"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 222.0, 300.0, 52.0, 25.0 ],
                    "text": "$1 10."
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "bang" ],
                    "patching_rect": [ 222.0, 330.0, 44.0, 25.0 ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 255.0, 645.0, 52.0, 25.0 ],
                    "text": "*~ 0.2"
                }
            },
            {
                "box": {
                    "automatic": 1,
                    "id": "obj-14",
                    "maxclass": "scope~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 708.0, 645.0, 135.0, 100.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 180.0, 45.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 180.0, 75.0, 145.0, 25.0 ],
                    "text": "metro 200 @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 180.0, 105.0, 52.0, 25.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-5",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 375.0, 300.0, 64.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 375.0, 330.0, 37.0, 25.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 396.0, 645.0, 300.0, 100.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-6",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": -1.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 222.0, 270.0, 107.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 345.0, 105.0, 52.0, 25.0 ],
                    "text": "*~ 0.2"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 345.0, 75.0, 52.0, 25.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "obj-1",
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
                        "rect": [ 810.0, 100.0, 884.0, 983.0 ],
                        "gridsnaponopen": 2,
                        "style": "monospace",
                        "subpatcher_template": "borders_gridlock_monospace",
                        "integercoordinates": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-143",
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
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 741.0, 423.0, 839.0, 512.0 ],
                                        "gridsnaponopen": 2,
                                        "style": "monospace",
                                        "subpatcher_template": "borders_gridlock_monospace",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "code": "sigmoid(x, k) {\r\n    return (x - (k * x)) / (k - (2 * k * abs(x)) + 1);\r\n}\r\n\r\nout1 = sigmoid(in1, -0.6);",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 16.0,
                                                    "id": "obj-140",
                                                    "maxclass": "codebox",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 75.0, 630.0, 225.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-141",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 45.0, 37.0, 25.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-142",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 390.0, 44.0, 25.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-142", 0 ],
                                                    "source": [ "obj-140", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-140", 0 ],
                                                    "source": [ "obj-141", 0 ]
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
                                    "patching_rect": [ 293.0, 420.0, 95.0, 25.0 ],
                                    "text": "gen @t shape"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
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
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 34.0, 100.0, 1660.0, 983.0 ],
                                        "gridsnaponopen": 2,
                                        "style": "monospace",
                                        "subpatcher_template": "borders_gridlock_monospace",
                                        "integercoordinates": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-103",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 1080.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-104",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 1050.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-105",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 1020.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-106",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 990.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-107",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 960.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-108",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 930.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-109",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 900.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-110",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 870.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-111",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 825.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-112",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 795.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-113",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 765.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 735.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-115",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 705.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-116",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 675.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-117",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 645.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-118",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 615.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-119",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 570.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-120",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 540.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-121",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 510.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-122",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 480.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-123",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 450.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-124",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 420.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-125",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 390.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-126",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 360.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-128",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 315.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-129",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 285.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-130",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 255.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-131",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 225.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-132",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 195.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-133",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 165.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-134",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 135.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-135",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 379.0, 105.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-70",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 1080.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 1050.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 1020.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-73",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 990.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 960.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-75",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 930.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 900.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-77",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 870.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-78",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 825.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-79",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 795.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-80",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 765.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 735.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-82",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 705.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-83",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 675.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-84",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 645.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-85",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 615.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 570.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-87",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 540.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-88",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 510.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 480.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-90",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 450.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-91",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 420.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 390.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-93",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 360.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-95",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 315.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-96",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 285.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-97",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 255.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 225.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-99",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 195.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-100",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 165.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-101",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 135.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-102",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 214.0, 105.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 1080.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 1050.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-62",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 1020.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-63",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 990.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-64",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 960.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 930.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 900.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-67",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 870.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-52",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 825.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-53",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 795.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 765.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-55",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 735.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-56",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 705.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-57",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 675.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-58",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 645.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-59",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 615.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-44",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 570.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 540.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-46",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 510.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-47",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 480.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-48",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 450.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-49",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 420.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-50",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 390.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 360.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 315.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 285.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 255.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 225.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 195.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-10",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 165.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 135.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 105.0, 80.0, 25.0 ],
                                                    "text": "go.allpass"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-136",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 60.0, 37.0, 25.0 ],
                                                    "text": "in 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-137",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 675.0, 690.0, 160.0, 25.0 ],
                                                    "text": "in 2 g @min -1 @max 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-138",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 379.0, 1140.0, 44.0, 25.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-10", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-99", 0 ],
                                                    "source": [ "obj-100", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-100", 0 ],
                                                    "source": [ "obj-101", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-101", 0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-138", 0 ],
                                                    "source": [ "obj-103", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-103", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-105", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-105", 0 ],
                                                    "source": [ "obj-106", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-106", 0 ],
                                                    "source": [ "obj-107", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-107", 0 ],
                                                    "source": [ "obj-108", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-108", 0 ],
                                                    "source": [ "obj-109", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-51", 0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-109", 0 ],
                                                    "source": [ "obj-110", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-110", 0 ],
                                                    "source": [ "obj-111", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-111", 0 ],
                                                    "source": [ "obj-112", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-112", 0 ],
                                                    "source": [ "obj-113", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-113", 0 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 0 ],
                                                    "source": [ "obj-115", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-115", 0 ],
                                                    "source": [ "obj-116", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-116", 0 ],
                                                    "source": [ "obj-117", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-117", 0 ],
                                                    "source": [ "obj-118", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-118", 0 ],
                                                    "source": [ "obj-119", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-119", 0 ],
                                                    "source": [ "obj-120", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-120", 0 ],
                                                    "source": [ "obj-121", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-121", 0 ],
                                                    "source": [ "obj-122", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-122", 0 ],
                                                    "source": [ "obj-123", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-123", 0 ],
                                                    "source": [ "obj-124", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-124", 0 ],
                                                    "source": [ "obj-125", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-125", 0 ],
                                                    "source": [ "obj-126", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-126", 0 ],
                                                    "source": [ "obj-128", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-128", 0 ],
                                                    "source": [ "obj-129", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-129", 0 ],
                                                    "source": [ "obj-130", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-130", 0 ],
                                                    "source": [ "obj-131", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-131", 0 ],
                                                    "source": [ "obj-132", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-132", 0 ],
                                                    "source": [ "obj-133", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-133", 0 ],
                                                    "source": [ "obj-134", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-134", 0 ],
                                                    "source": [ "obj-135", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-136", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-10", 1 ],
                                                    "order": 93,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-100", 1 ],
                                                    "order": 61,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-101", 1 ],
                                                    "order": 62,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-102", 1 ],
                                                    "order": 63,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-103", 1 ],
                                                    "order": 0,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-104", 1 ],
                                                    "order": 1,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-105", 1 ],
                                                    "order": 2,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-106", 1 ],
                                                    "order": 3,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-107", 1 ],
                                                    "order": 4,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-108", 1 ],
                                                    "order": 5,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-109", 1 ],
                                                    "order": 6,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-11", 1 ],
                                                    "order": 88,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-110", 1 ],
                                                    "order": 7,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-111", 1 ],
                                                    "order": 8,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-112", 1 ],
                                                    "order": 9,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-113", 1 ],
                                                    "order": 10,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-114", 1 ],
                                                    "order": 11,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-115", 1 ],
                                                    "order": 12,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-116", 1 ],
                                                    "order": 13,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-117", 1 ],
                                                    "order": 14,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-118", 1 ],
                                                    "order": 15,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-119", 1 ],
                                                    "order": 16,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-12", 1 ],
                                                    "order": 89,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-120", 1 ],
                                                    "order": 17,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-121", 1 ],
                                                    "order": 18,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-122", 1 ],
                                                    "order": 19,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-123", 1 ],
                                                    "order": 20,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-124", 1 ],
                                                    "order": 21,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-125", 1 ],
                                                    "order": 22,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-126", 1 ],
                                                    "order": 23,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-128", 1 ],
                                                    "order": 24,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-129", 1 ],
                                                    "order": 25,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-13", 1 ],
                                                    "order": 90,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-130", 1 ],
                                                    "order": 26,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-131", 1 ],
                                                    "order": 27,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-132", 1 ],
                                                    "order": 28,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-133", 1 ],
                                                    "order": 29,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-134", 1 ],
                                                    "order": 30,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-135", 1 ],
                                                    "order": 31,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-14", 1 ],
                                                    "order": 91,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-2", 1 ],
                                                    "order": 95,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-3", 1 ],
                                                    "order": 94,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-44", 1 ],
                                                    "order": 80,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-45", 1 ],
                                                    "order": 81,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-46", 1 ],
                                                    "order": 82,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-47", 1 ],
                                                    "order": 83,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-48", 1 ],
                                                    "order": 84,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-49", 1 ],
                                                    "order": 85,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-50", 1 ],
                                                    "order": 86,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-51", 1 ],
                                                    "order": 87,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-52", 1 ],
                                                    "order": 72,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-53", 1 ],
                                                    "order": 73,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-54", 1 ],
                                                    "order": 74,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-55", 1 ],
                                                    "order": 75,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-56", 1 ],
                                                    "order": 76,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-57", 1 ],
                                                    "order": 77,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-58", 1 ],
                                                    "order": 78,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-59", 1 ],
                                                    "order": 79,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-60", 1 ],
                                                    "order": 64,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-61", 1 ],
                                                    "order": 65,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-62", 1 ],
                                                    "order": 66,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-63", 1 ],
                                                    "order": 67,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-64", 1 ],
                                                    "order": 68,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-65", 1 ],
                                                    "order": 69,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-66", 1 ],
                                                    "order": 70,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-67", 1 ],
                                                    "order": 71,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-70", 1 ],
                                                    "order": 32,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-71", 1 ],
                                                    "order": 33,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-72", 1 ],
                                                    "order": 34,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-73", 1 ],
                                                    "order": 35,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-74", 1 ],
                                                    "order": 36,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-75", 1 ],
                                                    "order": 37,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-76", 1 ],
                                                    "order": 38,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-77", 1 ],
                                                    "order": 39,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-78", 1 ],
                                                    "order": 40,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-79", 1 ],
                                                    "order": 41,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-80", 1 ],
                                                    "order": 42,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-81", 1 ],
                                                    "order": 43,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-82", 1 ],
                                                    "order": 44,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-83", 1 ],
                                                    "order": 45,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-84", 1 ],
                                                    "order": 46,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-85", 1 ],
                                                    "order": 47,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-86", 1 ],
                                                    "order": 48,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-87", 1 ],
                                                    "order": 49,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-88", 1 ],
                                                    "order": 50,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-89", 1 ],
                                                    "order": 51,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-9", 1 ],
                                                    "order": 92,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-90", 1 ],
                                                    "order": 52,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-91", 1 ],
                                                    "order": 53,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-92", 1 ],
                                                    "order": 54,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-93", 1 ],
                                                    "order": 55,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-95", 1 ],
                                                    "order": 56,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-96", 1 ],
                                                    "order": 57,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-97", 1 ],
                                                    "order": 58,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-98", 1 ],
                                                    "order": 59,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "color": [ 0.438625166187593, 0.438625058064006, 0.438625086318427, 0.0 ],
                                                    "destination": [ "obj-99", 1 ],
                                                    "order": 60,
                                                    "source": [ "obj-137", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-59", 0 ],
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-44", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-46", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-46", 0 ],
                                                    "source": [ "obj-47", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-47", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-49", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-49", 0 ],
                                                    "source": [ "obj-50", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-50", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-67", 0 ],
                                                    "source": [ "obj-52", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-52", 0 ],
                                                    "source": [ "obj-53", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-53", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-55", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-55", 0 ],
                                                    "source": [ "obj-56", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-56", 0 ],
                                                    "source": [ "obj-57", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-57", 0 ],
                                                    "source": [ "obj-58", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-58", 0 ],
                                                    "source": [ "obj-59", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-102", 0 ],
                                                    "midpoints": [ 59.5, 1116.0, 199.0, 1116.0, 199.0, 102.0, 223.5, 102.0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-62", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-62", 0 ],
                                                    "source": [ "obj-63", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-63", 0 ],
                                                    "source": [ "obj-64", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-64", 0 ],
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "source": [ "obj-67", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-135", 0 ],
                                                    "midpoints": [ 223.5, 1116.0, 364.0, 1116.0, 364.0, 102.0, 388.5, 102.0 ],
                                                    "source": [ "obj-70", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-70", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-73", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-73", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-75", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-75", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-77", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-77", 0 ],
                                                    "source": [ "obj-78", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-78", 0 ],
                                                    "source": [ "obj-79", 0 ]
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
                                                    "destination": [ "obj-80", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-83", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-83", 0 ],
                                                    "source": [ "obj-84", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-84", 0 ],
                                                    "source": [ "obj-85", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-85", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-87", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-87", 0 ],
                                                    "source": [ "obj-88", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-88", 0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-90", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-90", 0 ],
                                                    "source": [ "obj-91", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-91", 0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-93", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-93", 0 ],
                                                    "source": [ "obj-95", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-95", 0 ],
                                                    "source": [ "obj-96", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-96", 0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-97", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "source": [ "obj-99", 0 ]
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
                                    "patching_rect": [ 210.0, 450.0, 102.0, 25.0 ],
                                    "text": "gen @t stages"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 326.0, 300.0, 188.0, 25.0 ],
                                    "text": "scale -1 1 -0.9998 0.9998"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 525.0, 59.0, 25.0 ],
                                    "text": "dcblock"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.5372549019607843, 0.3058823529411765, 0.3058823529411765, 1.0 ],
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 268.0, 300.0, 44.0, 25.0 ],
                                    "text": "r fbk"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.5372549019607843, 0.3058823529411765, 0.3058823529411765, 1.0 ],
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 585.0, 44.0, 25.0 ],
                                    "text": "s fbk"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 555.0, 59.0, 25.0 ],
                                    "text": "history"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 326.0, 270.0, 167.0, 25.0 ],
                                    "text": "in 3 fb @min -1 @max 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 330.0, 135.0, 25.0 ],
                                    "text": "mix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 293.0, 390.0, 52.0, 25.0 ],
                                    "text": "in 2 g"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 187.0, 480.0, 42.0, 25.0 ],
                                    "text": "+"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 187.0, 285.0, 37.0, 25.0 ],
                                    "text": "in 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 187.0, 690.0, 44.0, 25.0 ],
                                    "text": "out 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 1 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 1 ],
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 2 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-143", 0 ],
                                    "source": [ "obj-7", 0 ]
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
                    "patching_rect": [ 181.0, 390.0, 102.0, 25.0 ],
                    "text": "gen~ @t smear"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 2 ],
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