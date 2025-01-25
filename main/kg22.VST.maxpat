{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 485.0, 252.0, 927.0, 653.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Courier",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "cassiel",
		"subpatcher_template" : "cassiel",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-33",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 450.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 140.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 705.0, 270.0, 161.0, 35.0 ],
					"style" : "c.comment",
					"text" : "The closest we have to a null VST."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 675.0, 245.0, 131.0, 23.0 ],
					"text" : "studiomux_effect"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 615.0, 210.0, 62.0, 23.0 ],
					"text" : "sel 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 245.0, 47.0, 23.0 ],
					"text" : "#1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 615.0, 180.0, 70.0, 23.0 ],
					"text" : "change 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 615.0, 140.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 270.0, 92.0, 23.0 ],
					"text" : "prepend get"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 235.0, 100.0, 23.0 ],
					"style" : "cassiel.abstraction",
					"text" : "kg22.Strip-_"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 325.0, 77.0, 23.0 ],
					"text" : "pack x 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 280.0, 100.0, 23.0 ],
					"style" : "cassiel.abstraction",
					"text" : "kg22.Strip-_"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"patching_rect" : [ 285.0, 235.0, 92.0, 23.0 ],
					"text" : "unpack x 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-5",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 22.0, 222.0, 78.0 ],
					"style" : "c.comment",
					"text" : "\"note\", \"param\", \"get\" and \"plugged\" are interpreted (partly to deal with \"_\" in pnames); everything else goes straight through."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 510.0, 161.0, 23.0 ],
					"text" : "prepend pvalue #1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 240.0, 510.0, 176.0, 23.0 ],
					"text" : "sprintf pname #1 %s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-48",
					"items" : [ "wclose", ",", "open" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 207.0, 75.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "1/0: open/close VST window",
					"id" : "obj-14",
					"index" : 3,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 22.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 135.0, 105.0, 222.0, 23.0 ],
					"text" : "route note param get plugged"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 135.0, 350.0, 87.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 320.0, 39.0, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 135.0, 260.0, 100.0, 23.0 ],
					"text" : "unpack 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 135.0, 290.0, 123.0, 23.0 ],
					"text" : "makenote 64 100"
				}

			}
, 			{
				"box" : 				{
					"comment" : "commands to VST",
					"id" : "obj-3",
					"index" : 2,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 360.0, 131.0, 23.0 ],
					"text" : "prepend plug_vst"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 320.0, 100.0, 23.0 ],
					"style" : "cassiel.abstraction",
					"text" : "kg22.Strip-_"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 35.0, 85.0, 23.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 45.0, 175.0, 85.0, 23.0 ],
					"style" : "cassiel.abstraction",
					"text" : "kg22.Break"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 45.0, 495.0, 85.0, 23.0 ],
					"text" : "mc.pack~ 2"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"fontname" : "InputMono",
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 45.0, 460.0, 98.0, 23.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "prefer", "VST", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[7]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0,
						"valuemode" : 2
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Basic.vstinfo",
							"plugindisplayname" : "Basic",
							"pluginsavedname" : "C74_VST:/Basic",
							"pluginsaveduniqueid" : 1095000673,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "272.CMlaKA....fQPMDZ....ADDQhEF...P.....v.SLfLUX2Q2auQGZfLUcxAmboMWY...............0vDCHSE1cz81azgFHSUmbvIWZyUF.x.SL....+zLyL4C...3OtdT.+zLyL4C.....T35I+.....PyLyjO.........9C.....T35I+Lb8n5C.....Ydjy9LR8V6C...3O...f+.........................3O.....PJb86CtdTzO...........RgqmO.....DtdT3SllIzO.....7Qgq6C.....MWYx9.........................................3O.....3NBm0C"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Basic",
									"origin" : "Basic.vstinfo",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Basic.vstinfo",
										"plugindisplayname" : "Basic",
										"pluginsavedname" : "C74_VST:/Basic",
										"pluginsaveduniqueid" : 1095000673,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "272.CMlaKA....fQPMDZ....ADDQhEF...P.....v.SLfLUX2Q2auQGZfLUcxAmboMWY...............0vDCHSE1cz81azgFHSUmbvIWZyUF.x.SL....+zLyL4C...3OtdT.+zLyL4C.....T35I+.....PyLyjO.........9C.....T35I+Lb8n5C.....Ydjy9LR8V6C...3O...f+.........................3O.....PJb86CtdTzO...........RgqmO.....DtdT3SllIzO.....7Qgq6C.....MWYx9.........................................3O.....3NBm0C"
									}
,
									"fileref" : 									{
										"name" : "Basic",
										"filename" : "Basic.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "17852904b078aac29734e095b2dcb988"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"comment" : "[mc 2] audio in",
					"id" : "obj-59",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "param names out",
					"id" : "obj-61",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 545.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "[mc 2] audio out",
					"id" : "obj-62",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 545.0, 30.0, 30.0 ]
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
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 624.5, 417.0, 54.5, 417.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-16", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-28", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"styles" : [ 			{
				"name" : "c.comment",
				"default" : 				{
					"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
					"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel",
				"default" : 				{
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"fontname" : [ "InputMono" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel-1",
				"default" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontname" : [ "Courier" ],
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel-1-1",
				"default" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : [ 0 ],
					"fontname" : [ "Courier" ],
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel.abstraction",
				"default" : 				{
					"fontname" : [ "InputMono" ],
					"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel.attrui",
				"default" : 				{
					"accentcolor" : [ 0.996078431372549, 0.8, 0.8, 1.0 ],
					"bgcolor" : [ 0.614285, 0.654518, 0.758022, 1.0 ],
					"textcolor_inverse" : [ 0.221674, 0.25681, 0.29304, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "laura-ashley",
				"default" : 				{
					"accentcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"bgcolor" : [ 0.997536, 0.883331, 0.611546, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "slight-danger",
				"multi" : 0
			}
 ],
		"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
	}

}
