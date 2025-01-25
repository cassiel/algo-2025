{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 630.0, 787.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Courier",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
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
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"fontsize" : 18.0,
					"gradient" : 1,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 85.0, 41.0, 26.0 ],
					"presentation_linecount" : 2,
					"text" : "RWD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 255.0, 210.0, 81.0, 20.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-25",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 195.0, 45.0, 30.0, 26.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-23",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 165.0, 45.0, 30.0, 26.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 465.0, 10.0, 30.0, 20.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
					"bgoncolor" : [ 0.764705882352941, 0.764705882352941, 0.764705882352941, 1.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"fontname" : "Courier",
					"fontsize" : 18.0,
					"id" : "obj-10",
					"ignoreclick" : 1,
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 300.0, 45.0, 105.0, 25.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4" ],
							"parameter_type" : 2,
							"parameter_unitstyle" : 0,
							"parameter_longname" : "live.tab",
							"parameter_invisible" : 2,
							"parameter_mmax" : 3,
							"parameter_shortname" : "live.tab"
						}

					}
,
					"spacing_x" : 3.0,
					"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 0.5 ],
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 525.0, 40.0, 88.0, 20.0 ],
					"text" : "mc.adc~ 3 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 803.0, 337.0, 365.0, 403.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Anonymous Pro",
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 55.0, 61.0, 20.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 153.0, 92.0 ],
									"text" : "setdirection up, setalignment right, setsize 5, clear, append IO, append Basic, append Enso, append Mini-Filter, append Replika_XT"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 252.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "cassiel",
								"default" : 								{
									"fontname" : [ "InputMono" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
					}
,
					"patching_rect" : [ 510.0, 580.0, 30.0, 20.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "setdirection", "up" ], [ "setalignment", "right" ], [ "setfont", "Monaco", 9 ], [ "nativeFRGB", 0, 0, 0 ], [ "nativeBRGB", 1, 1, 1 ] ],
					"filename" : "cassiel.textbrick.js",
					"id" : "obj-28",
					"jsarguments" : [ "IO", "Basic", "Enso", "Mini-Filter", "Replika_XT" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 500.0, 180.0, 70.0 ],
					"varname" : "cassiel.textbrick"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-29",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 225.0, 45.0, 75.0, 26.0 ],
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 270.0, 15.0, 81.0, 20.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "cassiel.krellmixer.js",
					"id" : "obj-31",
					"jsarguments" : [ 5, 5 ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 320.0, 180.0, 180.0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 2,
					"id" : "obj-17",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 435.0, 70.0, 45.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_shortname" : "mc.live.gain~"
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 748.0, 261.0, 518.0, 532.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Anonymous Pro",
						"gridonopen" : 2,
						"gridsize" : [ 15.0, 5.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
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
						"style" : "c.comment",
						"subpatcher_template" : "cassiel",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 480.0, 29.5, 20.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 360.0, 435.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 360.0, 405.0, 74.0, 20.0 ],
									"text" : "route done"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 90.0, 170.0, 29.5, 20.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.0, 115.0, 29.5, 20.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 110.0, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"maximum" : 6,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 180.0, 115.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 45.0, 65.0, 41.0, 20.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "beat counter in ",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 45.0, 20.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"clipheight" : 27.333333333333332,
									"data" : 									{
										"clips" : [ 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/mermaid-test.wav",
												"filename" : "mermaid-test.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
, 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/shama-2.wav",
												"filename" : "shama-2.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
, 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/shama-3.aif",
												"filename" : "shama-3.aif",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
, 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/shama-4.wav",
												"filename" : "shama-4.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
, 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/shama-5.wav",
												"filename" : "shama-5.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
, 											{
												"absolutepath" : "/Users/nick/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings/shama-6.wav",
												"filename" : "shama-6.wav",
												"filekind" : "audiofile",
												"loop" : 0,
												"content_state" : 												{
													"originallengthms" : [ 0.0 ],
													"timestretch" : [ 0 ],
													"formantcorrection" : [ 0 ],
													"play" : [ 0 ],
													"speed" : [ 1.0 ],
													"slurtime" : [ 0.0 ],
													"originallength" : [ 0.0, "ticks" ],
													"quality" : [ "basic" ],
													"formant" : [ 1.0 ],
													"mode" : [ "basic" ],
													"originaltempo" : [ 120.0 ],
													"basictuning" : [ 440 ],
													"pitchshift" : [ 1.0 ],
													"pitchcorrection" : [ 0 ],
													"followglobaltempo" : [ 0 ]
												}

											}
 ]
									}
,
									"id" : "obj-12",
									"maxclass" : "playlist~",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"patching_rect" : [ 30.0, 215.0, 375.0, 170.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 400.0, 150.0, 30.0 ],
									"text" : "Left channel only present!"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 30.0, 415.0, 74.0, 20.0 ],
									"text" : "mc.pack~ 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "[2 mc] audio out",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 465.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-12", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 369.5, 510.0, 469.0, 510.0, 469.0, 99.0, 54.5, 99.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-9", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "c.comment",
								"default" : 								{
									"fontname" : [ "Courier" ],
									"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
									"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel",
								"default" : 								{
									"fontname" : [ "InputMono" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
					}
,
					"patching_rect" : [ 435.0, 40.0, 66.0, 20.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "c.comment",
						"tags" : ""
					}
,
					"text" : "p Player"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 555.0, 235.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 235.0, 37.0, 20.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 450.0, 280.0, 167.0, 20.0 ],
					"text" : "mc.sfrecord~ @nchans 2"
				}

			}
, 			{
				"box" : 				{
					"channels" : 2,
					"id" : "obj-24",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 525.0, 70.0, 45.0, 90.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_shortname" : "mc.live.gain~"
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 120.0, 385.0, 88.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 120.0, 360.0, 45.0, 20.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 120.0, 330.0, 45.0, 20.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 15.0, 35.199999999999989, 35.199999999999989 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"items" : [ "script", "stop", ",", "script", "start" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 60.0, 120.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 720.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "multichannelsignal", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 165.0, 157.0, 863.0, 608.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Anonymous Pro",
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 267.0, 151.0, 585.0, 527.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Anonymous Pro",
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-29",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.0, 95.0, 54.0, 54.0 ],
													"style" : "c.comment",
													"text" : "col * row * val * secs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 465.0, 240.0, 61.0, 20.0 ],
													"text" : "f9.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 390.0, 240.0, 61.0, 20.0 ],
													"text" : "f9.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 315.0, 240.0, 61.0, 20.0 ],
													"text" : "f9.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 240.0, 240.0, 61.0, 20.0 ],
													"text" : "f9.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 165.0, 325.0, 61.0, 20.0 ],
													"text" : "funnel 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 165.0, 240.0, 61.0, 20.0 ],
													"text" : "f9.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 480.0, 185.0, 54.0, 42.0 ],
													"style" : "c.comment",
													"text" : "row * val * secs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ],
													"patching_rect" : [ 165.0, 165.0, 81.0, 20.0 ],
													"text" : "spray 5 0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 375.0, 81.0, 20.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 30.0, 85.0, 67.0, 20.0 ],
													"text" : "route set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 30.0, 430.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 30.0, 20.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 1 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 2 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 3 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 4 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-9", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-9", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-9", 4 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "c.comment",
												"default" : 												{
													"fontname" : [ "Courier" ],
													"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
													"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "cassiel",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39
													}
,
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
									}
,
									"patching_rect" : [ 720.0, 390.0, 94.0, 20.0 ],
									"saved_object_attributes" : 									{
										"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"fontname" : "Anonymous Pro",
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"style" : "cassiel",
										"tags" : ""
									}
,
									"text" : "p Mixer_Ramps"
								}

							}
, 							{
								"box" : 								{
									"comment" : "from matrix UI",
									"id" : "obj-7",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 705.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "to matrix UI",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 505.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 165.0, 210.0, 87.0, 20.0 ],
									"text" : "f9.VST Basic"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 360.0, 210.0, 126.0, 20.0 ],
									"text" : "f9.VST Mini-Filter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 495.0, 210.0, 120.0, 20.0 ],
									"text" : "f9.VST Replika_XT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 270.0, 210.0, 81.0, 20.0 ],
									"text" : "f9.VST Enso"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 311.0, 289.0, 566.0, 472.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Anonymous Pro",
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
										"boxes" : [ 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-33",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 405.0, 130.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 405.0, 100.0, 54.0, 20.0 ],
													"text" : "f9.Peak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 5",
													"id" : "obj-35",
													"index" : 5,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 375.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-30",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 330.0, 130.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 330.0, 100.0, 54.0, 20.0 ],
													"text" : "f9.Peak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 4",
													"id" : "obj-32",
													"index" : 4,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 300.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "[list[ peaks out",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 105.0, 220.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 5,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 105.0, 175.0, 133.0, 20.0 ],
													"text" : "pack 0. 0. 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-25",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 255.0, 130.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 255.0, 100.0, 54.0, 20.0 ],
													"text" : "f9.Peak"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-23",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 180.0, 130.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 180.0, 100.0, 54.0, 20.0 ],
													"text" : "f9.Peak"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-22",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 105.0, 130.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 105.0, 100.0, 54.0, 20.0 ],
													"text" : "f9.Peak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 3",
													"id" : "obj-4",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 225.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 2",
													"id" : "obj-3",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 165.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 1",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 105.0, 50.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 1 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 2 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 3 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 4 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "cassiel",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39
													}
,
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
									}
,
									"patching_rect" : [ 585.0, 390.0, 54.0, 20.0 ],
									"saved_object_attributes" : 									{
										"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"description" : "",
										"digest" : "",
										"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"fontname" : "Anonymous Pro",
										"globalpatchername" : "",
										"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"style" : "cassiel",
										"tags" : ""
									}
,
									"text" : "p Peaks"
								}

							}
, 							{
								"box" : 								{
									"comment" : "External audio (2 ch)",
									"id" : "obj-35",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 195.0, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "setvalue", "int" ],
									"patching_rect" : [ 540.0, 320.0, 153.0, 20.0 ],
									"text" : "mc.targetlist @chans 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 7,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "", "" ],
									"patching_rect" : [ 150.0, 385.0, 179.0, 20.0 ],
									"text" : "mc.matrix~ 5 5 1. @chans 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 106.0, 150.0, 18.0 ],
									"style" : "c.comment",
									"text" : "Token \"empty\" VST"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 130.0, 185.0, 20.0 ],
									"text" : "plug_vst \"studiomux effect\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 170.0, 94.0, 20.0 ],
									"text" : "plug_vst Enso"
								}

							}
, 							{
								"box" : 								{
									"comment" : "To node process",
									"id" : "obj-22",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"items" : [ "wclose", ",", "front" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 180.0, 75.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 225.0, 81.0, 20.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 30.0, 87.0, 303.0, 20.0 ],
									"text" : "route audio Basic Enso Mini-Filter Replika_XT"
								}

							}
, 							{
								"box" : 								{
									"comment" : "(mc) stereo out",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 375.0, 55.0, 290.0, 20.0 ],
									"text" : "route mix Basic Enso Mini-Filter Replika_XT"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Output from sequencer",
									"id" : "obj-4",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "[name] 0/1: open/close named window",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 10.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-17", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-17", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-64", 2 ],
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-65", 2 ],
									"source" : [ "obj-25", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-66", 2 ],
									"source" : [ "obj-25", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-67", 2 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.254749, 0.632064, 0.682652, 1.0 ],
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"source" : [ "obj-5", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-5", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"source" : [ "obj-5", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 1 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 2 ],
									"order" : 1,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 2 ],
									"order" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 4 ],
									"order" : 1,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 4 ],
									"order" : 0,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 3 ],
									"order" : 1,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-66", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 3 ],
									"order" : 0,
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 1,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"order" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 1 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "c.comment",
								"default" : 								{
									"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
									"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel",
								"default" : 								{
									"fontname" : [ "InputMono" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel-1",
								"default" : 								{
									"fontname" : [ "Courier" ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
										"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel-1-1",
								"default" : 								{
									"fontname" : [ "Courier" ],
									"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
									"fontface" : [ 0 ],
									"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
										"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "laura-ashley",
								"default" : 								{
									"accentcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.997536, 0.883331, 0.611546, 1.0 ]
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
,
					"patching_rect" : [ 225.0, 305.0, 59.0, 20.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel",
						"tags" : ""
					}
,
					"text" : "p Audio",
					"textcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 60.0, 230.0, 109.0, 20.0 ],
					"text" : "route seq main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 630.0, 787.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Anonymous Pro",
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 110.0, 29.5, 20.0 ],
									"text" : "0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 570.0, 70.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "bang; rewind",
									"id" : "obj-56",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 25.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "time, mm * ss",
									"id" : "obj-53",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 585.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 564.25, 625.0, 41.0, 20.0 ],
									"text" : "$2 $3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 510.0, 98.0, 20.0 ],
									"text" : "0 8 14 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 454.0, 113.0, 32.0 ],
									"text" : "translate ticks hh:mm:ss"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 250.0, 61.0, 20.0 ],
									"text" : "pack 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-25",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 125.0, 52.0, 22.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 518.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 225.0, 275.0, 48.0, 20.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 660.0, 67.0, 20.0 ],
									"text" : "print SEQ"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"items" : [ "wclose", ",", "front" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 70.0, 100.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Window messages",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 25.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 110.0, 81.0, 20.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Messages into node",
									"id" : "obj-14",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 720.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 685.0, 74.0, 20.0 ],
									"text" : "request $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 15.0, 445.0, 41.0, 20.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 370.0, 120.0, 18.0 ],
									"style" : "c.comment",
									"text" : "Beat to replace:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 387.0, 660.0, 74.0, 20.0 ],
									"text" : "print DUMP"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 375.0, 60.0, 20.0 ],
									"style" : "c.comment",
									"text" : "play $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 540.0, 95.0, 42.0 ],
									"style" : "c.comment",
									"text" : "Locator 1.0 to 5.0 (if 4/4)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 460.0, 45.0, 20.0 ],
									"style" : "c.comment",
									"text" : "+~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 430.0, 45.0, 20.0 ],
									"style" : "c.comment",
									"text" : "*~ 4."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 540.0, 73.0, 32.0 ],
									"style" : "c.comment",
									"text" : "loadmess seq main"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.394356, 0.149215, 0.067687, 1.0 ],
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 225.0, 585.0, 55.0, 20.0 ],
									"style" : "c.comment",
									"text" : "seq~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 160.0, 102.0, 54.0 ],
									"style" : "c.comment",
									"text" : "Some of this lifted from Gibberwocky sequencer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 575.0, 131.0, 20.0 ],
									"style" : "c.comment",
									"text" : "delete main $1 $2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 510.0, 30.0, 20.0 ],
									"style" : "c.comment",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 545.0, 81.0, 20.0 ],
									"style" : "c.comment",
									"text" : "pack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 135.0, 370.0, 52.0, 22.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 135.0, 340.0, 30.0, 20.0 ],
									"style" : "c.comment",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 135.0, 310.0, 30.0, 20.0 ],
									"style" : "c.comment",
									"text" : "% 4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-35",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 170.0, 125.0, 52.0, 22.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 300.0, 108.0, 32.0 ],
									"style" : "c.comment",
									"text" : "sprintf frequency %dn"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 225.0, 250.0, 29.5, 20.0 ],
									"style" : "c.comment",
									"text" : "/ 4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-24",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 115.0, 162.0, 22.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 435.0, 340.0, 24.0, 24.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"format" : 6,
									"id" : "obj-18",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 400.0, 580.0, 73.0, 22.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 400.0, 540.0, 74.0, 32.0 ],
									"style" : "c.comment",
									"text" : "snapshot~ 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 225.0, 185.0, 49.0, 20.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 225.0, 155.0, 81.0, 20.0 ],
									"style" : "c.comment",
									"text" : "unpack 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 390.0, 126.0, 20.0 ],
									"style" : "c.comment",
									"text" : "phasor~ 1n @lock 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 9,
									"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
									"patching_rect" : [ 170.0, 80.0, 94.0, 20.0 ],
									"style" : "c.comment",
									"text" : "transport"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 170.0, 50.0, 334.0, 20.0 ],
									"style" : "c.comment",
									"text" : "metro 4n @quantize 480 @autostart 1 @active 1"
								}

							}
, 							{
								"box" : 								{
									"attr" : "frequency",
									"id" : "obj-27",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"orientation" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 263.0, 342.0, 88.0, 40.0 ],
									"style" : "cassiel.attrui"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.0, 25.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Timestamped messages into patcher",
									"id" : "obj-51",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 660.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-10", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 235.75, 146.5, 444.5, 146.5 ],
									"source" : [ "obj-10", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-10", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"order" : 2,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"midpoints" : [ 234.5, 237.0, 384.0, 237.0, 384.0, 417.0, 260.5, 417.0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"order" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-47", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "c.comment",
								"default" : 								{
									"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
									"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel",
								"default" : 								{
									"fontname" : [ "InputMono" ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39
									}
,
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel.attrui",
								"default" : 								{
									"accentcolor" : [ 0.996078431372549, 0.8, 0.8, 1.0 ],
									"textcolor_inverse" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
									"bgcolor" : [ 0.614285, 0.654518, 0.758022, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel.number",
								"default" : 								{
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ],
						"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
					}
,
					"patching_rect" : [ 60.0, 275.0, 88.0, 20.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"description" : "",
						"digest" : "",
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel",
						"tags" : ""
					}
,
					"text" : "p Sequencer",
					"textcolor" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 15.0, 175.0, 285.0, 20.0 ],
					"text" : "route show win seq now"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 410.0, 400.0, 125.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 255.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 15.0, 310.0, 52.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict X"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 545.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 145.0, 145.0, 20.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}
,
					"text" : "node.script main.js"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.815686274509804, 0.858823529411765, 0.349019607843137, 1.0 ],
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-11", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 254.5, 348.0, 405.5, 348.0, 405.5, 134.0, 24.5, 134.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 3 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 2 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 69.5, 360.5, 423.5, 360.5, 423.5, 122.0, 24.5, 122.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-4", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.941176, 0.690196, 0.196078, 1.0 ],
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 2 ],
					"source" : [ "obj-9", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13::obj-67::obj-28" : [ "vst~[7]", "vst~[1]", 0 ],
			"obj-17" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"obj-13::obj-64::obj-28" : [ "vst~[4]", "vst~[1]", 0 ],
			"obj-13::obj-66::obj-28" : [ "vst~[6]", "vst~[1]", 0 ],
			"obj-13::obj-65::obj-28" : [ "vst~[5]", "vst~[1]", 0 ],
			"obj-24" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-10" : [ "live.tab", "live.tab", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "main.js",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "f9.Peak.maxpat",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "f9.VST.maxpat",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Enso_20190722.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "f9.Break.maxpat",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "f9.Strip-_.maxpat",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Basic.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "f9.Ramps.maxpat",
				"bootpath" : "~/CASSIEL/farm-2019/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mermaid-test.wav",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "shama-2.wav",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "shama-3.aif",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "shama-4.wav",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "shama-5.wav",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "shama-6.wav",
				"bootpath" : "~/cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"patcherrelativepath" : "../../../cassiel.com@gmail.com/SHARED OUT/Khyal Geometries/scratch recordings",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.krellmixer.js",
				"bootpath" : "~/Documents/Max 8/Packages/cassiel.ui-candy-2006/jsui",
				"patcherrelativepath" : "../../../Documents/Max 8/Packages/cassiel.ui-candy-2006/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick.js",
				"bootpath" : "~/Documents/Max 8/Packages/cassiel.ui-candy-2006/jsui",
				"patcherrelativepath" : "../../../Documents/Max 8/Packages/cassiel.ui-candy-2006/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
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
					"fontname" : [ "InputMono" ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39
					}
,
					"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel-1",
				"default" : 				{
					"fontname" : [ "Courier" ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel-1-1",
				"default" : 				{
					"fontname" : [ "Courier" ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"fontface" : [ 0 ],
					"selectioncolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patchlinecolor" : [ 0.960784, 0.827451, 0.156863, 0.9 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.486435, 0.462784, 0.5, 1.0 ],
						"color2" : [ 0.19771, 0.188048, 0.201856, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "laura-ashley",
				"default" : 				{
					"accentcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.997536, 0.883331, 0.611546, 1.0 ]
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
