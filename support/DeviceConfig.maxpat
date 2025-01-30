{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1083.0, 1821.0, 520.0, 665.0 ],
		"default_fontname" : "Input Mono",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"subpatcher_template" : "Untitled1_template",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-40",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 115.0, 154.0, 64.0 ],
					"text" : "Microtonic: select pattern (but note that some are chained)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "number",
					"maximum" : 71,
					"minimum" : 60,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.0, 115.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "number",
					"maximum" : 128,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 255.0, 180.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 400.0, 123.0, 23.0 ],
					"text" : "plug Microtonic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 290.0, 215.0, 23.0 ],
					"text" : "setsnapshotname 0 Note_Ctrl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 615.0, 360.0, 70.0, 23.0 ],
					"text" : "snapshot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 25.0, 225.0, 78.0 ],
					"text" : "Enso BUG: first Stop is not quantised (though if it subsequently quantizes, we can only work round this once)."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"items" : [ "ClearLoop", ",", "Record", ",", "Overdub", ",", "Play", ",", "Stop" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 45.0, 25.0, 100.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 365.0, 54.0, 23.0 ],
					"text" : "unplug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 445.0, 77.0, 23.0 ],
					"text" : "restore 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 445.0, 54.0, 23.0 ],
					"text" : "wclose"
				}

			}
, 			{
				"box" : 				{
					"format" : 4,
					"id" : "obj-15",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 180.0, 50.0, 23.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 255.0, 39.0, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 60.0, 215.0, 131.0, 23.0 ],
					"text" : "makenote 60 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 60.0, 295.0, 85.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 445.0, 39.0, 23.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.0, 365.0, 77.0, 23.0 ],
					"text" : "plug Enso"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 0,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 360.0, 500.0, 230.0, 23.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "@prefer", "VST3", "@autosave", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"autosave" : 0,
						"parameter_enable" : 1,
						"parameter_mappable" : 0,
						"prefer" : "VST3"
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
							"pluginname" : "Enso.vst3info",
							"plugindisplayname" : "Enso",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 247196479,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2865.VMjLgfxB...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.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."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Note_Ctrl",
									"origin" : "Enso.vst3info",
									"type" : "VST3",
									"subtype" : "MidiEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "Note_Ctrl",
										"filename" : "Note_Ctrl.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "a966c5e0e7d559363e9a04555cda20ec"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ @prefer VST3 @autosave 0",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 3 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"originid" : "pat-165",
		"parameters" : 		{
			"obj-1" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Note_Ctrl.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.490196078431373, 0.490196078431373, 0.490196078431373, 1.0 ],
		"editing_bgcolor" : [ 0.376187, 0.409384, 0.445165, 1.0 ]
	}

}
