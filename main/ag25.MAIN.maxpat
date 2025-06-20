{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 75.0, 194.0, 984.0, 819.0 ],
		"openinpresentation" : 1,
		"default_fontname" : "InputMono",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 5.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"style" : "cassiel",
		"subpatcher_template" : "cassiel",
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.164705882352941, 0.176470588235294, 0.172549019607843, 1.0 ],
					"dividercolor" : [ 0.545098039215686, 0.545098039215686, 0.545098039215686, 1.0 ],
					"dividers" : [ "in", 0 ],
					"fontface" : 0,
					"fontname" : "Input Mono Compressed",
					"fontsize" : 12.0,
					"gaincaption" : 1,
					"gainstyle" : 1,
					"id" : "obj-36",
					"ignoreclick" : 1,
					"incolormap" : "none",
					"inlabels" : [ "IO", "Microtonic", "Axon_2", "ODS.A", "ODS.B", "Enso.A", "Enso.B", "Discord4" ],
					"labelwidth" : 95.0,
					"linecolor" : [ 0.952941176470588, 0.941176470588235, 0.619607843137255, 1.0 ],
					"maxclass" : "crosspatch",
					"maxgain" : 2.0,
					"numinlets" : 1,
					"numins" : 8,
					"numoutlets" : 2,
					"numouts" : 8,
					"outcolormap" : "none",
					"outlabels" : [ "IO", "Microtonic", "Axon_2", "ODS.A", "ODS.B", "Enso.A", "Enso.B", "Discord4" ],
					"outlettype" : [ "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 900.0, 260.0, 330.0, 220.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 430.0, 540.0, 220.0 ],
					"showgain" : 2
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-65",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 855.0, 70.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"id" : "obj-46",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 780.0, 175.0, 100.0, 50.0 ],
					"pic" : "the-printer-jam.jpeg",
					"presentation" : 1,
					"presentation_rect" : [ 600.000008940696716, 84.800001263618469, 150.0, 150.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 180.0, 60.0, 47.0, 23.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.078431, 0.321569, 0.0 ],
					"fontname" : "Microgramma D",
					"fontsize" : 24.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 975.0, 545.0, 401.0, 38.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 615.200009167194366, 40.000000596046448, 150.0, 38.0 ],
					"text" : "CASSIEL",
					"textcolor" : [ 0.619607843137255, 0.745098039215686, 0.952941176470588, 0.8 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.078431, 0.321569, 0.0 ],
					"fontname" : "MicrogrammaDMedExt",
					"fontsize" : 24.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 975.0, 505.0, 363.0, 35.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 615.200009167194366, 15.20000022649765, 150.0, 35.0 ],
					"text" : "PROJECT",
					"textcolor" : [ 0.619607843137255, 0.745098039215686, 0.952941176470588, 0.8 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.618934978328545, 0.744701397656435, 0.953750108255376, 0.2 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-54",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1155.0, 600.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 600.000008940696716, 10.400000154972076, 180.0, 70.0 ],
					"proportion" : 0.39,
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 375.0, 120.0, 207.0, 23.0 ],
					"text" : "route dsp transport rewind"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 290.0, 169.0, 23.0 ],
					"text" : "script npm install ws"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 629.0, 94.0, 146.0, 23.0 ],
					"text" : "route clear append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 750.0, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 45.0, 75.0, 21.0 ],
					"text" : "DSP-ON>",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 675.0, 25.0, 70.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 630.0, 65.0, 123.0, 23.0 ],
					"text" : "adstatus switch"
				}

			}
, 			{
				"box" : 				{
					"htabcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 630.0, 145.0, 200.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 45.0, 200.0, 24.0 ],
					"tabs" : [ "OFF", "ON" ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 520.0, 31.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 100.0, 45.0, 23.0 ],
					"text" : "Clr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1287.0, 720.0, 485.0, 422.0 ],
						"default_fontname" : "Input Mono",
						"gridsize" : [ 15.0, 5.0 ],
						"subpatcher_template" : "cassiel",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 95.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 185.0, 115.0, 23.0 ],
									"text" : "prepend symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 150.0, 70.0, 23.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 60.0, 225.0, 161.0, 23.0 ],
									"text" : "dialog Alert @mode 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-2", 0 ]
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
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
 ],
						"editing_bgcolor" : [ 0.517647058823529, 0.517647058823529, 0.517647058823529, 1.0 ]
					}
,
					"patching_rect" : [ 270.0, 275.0, 62.0, 23.0 ],
					"saved_object_attributes" : 					{
						"editing_bgcolor" : [ 0.517647058823529, 0.517647058823529, 0.517647058823529, 1.0 ],
						"fontname" : "Input Mono"
					}
,
					"text" : "p Alert"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 15.0, 385.0, 31.0, 23.0 ],
					"text" : "b 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 350.0, 70.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 30.0, 510.0, 61.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict X"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 400.0, 62.0, 23.0 ],
					"text" : "clone X"
				}

			}
, 			{
				"box" : 				{
					"embed" : 0,
					"fontface" : 0,
					"fontname" : "<Monospaced>",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "dict.codebox",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 105.0, 640.0, 340.0, 200.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 180.0, 450.0, 400.0 ],
					"saved_object_attributes" : 					{
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 95.0, 197.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 40.0, 30.0, 30.0 ],
					"text" : ":"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 25.0, 115.0, 23.0 ],
					"text" : "loadmess set 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 735.0, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 75.0, 75.0, 21.0 ],
					"text" : "TRANSP>",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 300.0, 720.0, 150.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 75.0, 21.0 ],
					"text" : "NODEJS>",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"htabcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 75.0, 200.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 75.0, 200.0, 24.0 ],
					"tabs" : [ "STOP", "GO" ]
				}

			}
, 			{
				"box" : 				{
					"htabcolor" : [ 0.870588235294118, 0.415686274509804, 0.062745098039216, 1.0 ],
					"id" : "obj-44",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 10.0, 200.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 15.0, 200.0, 24.0 ],
					"tabs" : [ "DOWN", "UP" ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 9,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
					"patching_rect" : [ 1005.0, 645.0, 115.0, 23.0 ],
					"text" : "matrix~ 8 8 1."
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-37",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ -20.0, -20.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 139.0, 152.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "dB * secs",
									"id" : "obj-9",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 326.0, 70.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "[mc] master stereo out",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 123.0, 317.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "[mc] master stereo in",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 184.0, 52.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 422.0, 183.0, 78.0, 23.0 ],
									"text" : "* 1000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 392.0, 148.0, 129.0, 23.0 ],
									"text" : "unpack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 392.0, 218.0, 62.0, 23.0 ],
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"channels" : 2,
									"fontname" : "InputMono",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"lastchannelcount" : 2,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 20.0, 20.0, 69.0, 124.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "master",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "master",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "master"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
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
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel-1",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel-1-1",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "laura-ashley",
								"default" : 								{
									"accentcolor" : [ 0.862745, 0.741176, 0.137255, 1.0 ],
									"bgcolor" : [ 0.997536, 0.883331, 0.611546, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "slight-danger",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 465.0, 700.0, 75.0, 135.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 524.800007820129395, 15.20000022649765, 60.199992179870605, 124.800001859664917 ],
					"viewvisibility" : 1
				}

			}
, 			{
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
					"fontname" : "InputMono",
					"fontsize" : 18.0,
					"gradient" : 1,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 85.0, 43.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 130.0, 43.0, 30.0 ],
					"text" : "RWD"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 420.0, 490.0, 85.0, 23.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"fontsize" : 20.0,
					"id" : "obj-25",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 540.0, 34.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 40.0, 45.0, 32.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"fontsize" : 20.0,
					"id" : "obj-23",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 465.0, 540.0, 34.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 40.0, 49.0, 32.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 645.0, 515.0, 31.0, 23.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 0.0 ],
					"bordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"fontname" : "InputMono",
					"fontsize" : 20.0,
					"id" : "obj-10",
					"ignoreclick" : 1,
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 645.0, 545.0, 105.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 115.0, 105.0, 25.0 ],
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "1", "2", "3", "4" ],
							"parameter_invisible" : 2,
							"parameter_longname" : "live.tab",
							"parameter_mmax" : 3,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
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
					"fontname" : "InputMono",
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 525.0, 15.0, 92.0, 23.0 ],
					"text" : "mc.adc~ 1 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1226.0, 568.0, 927.0, 538.0 ],
						"default_fontname" : "Anonymous Pro",
						"gridonopen" : 2,
						"gridsize" : [ 15.0, 5.0 ],
						"gridsnaponopen" : 2,
						"style" : "cassiel",
						"subpatcher_template" : "cassiel",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 210.0, 161.0, 23.0 ],
									"text" : "setfont InputMono 12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 55.0, 70.0, 23.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 856.0, 37.0 ],
									"text" : "setdirection down, setalignment right, setsize 8, clear, append Discord4, append Enso.B, append Enso.A, append ODS.B, append ODS.A, append Axon_2, append Microtonic, append IO"
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
									"source" : [ "obj-3", 0 ]
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
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
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
 ],
						"default_bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ]
					}
,
					"patching_rect" : [ 645.0, 605.0, 70.0, 23.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel"
					}
,
					"text" : "p Labels"
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "setdirection", "down" ], [ "setalignment", "right" ], [ "setfont", "InputMono", 12 ], [ "nativeFRGB", 0, 0, 0 ], [ "nativeBRGB", 1, 1, 1 ] ],
					"filename" : "cassiel.textbrick.js",
					"id" : "obj-28",
					"jsarguments" : [ "IO", "Basic", "Enso", "Mini-Filter", "Replika_XT" ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 645.0, 225.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.0, 475.0, 225.0, 105.0 ],
					"varname" : "cassiel.textbrick"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"fontsize" : 20.0,
					"id" : "obj-29",
					"ignoreclick" : 1,
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.0, 540.0, 87.0, 32.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 80.0, 105.0, 32.0 ],
					"textcolor" : [ 1.0, 0.709803921568627, 0.196078431372549, 1.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 510.0, 420.0, 85.0, 23.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "cassiel.krellmixer.js",
					"id" : "obj-31",
					"jsarguments" : [ 8, 8 ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 260.0, 225.0, 220.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.0, 580.0, 225.0, 220.0 ]
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
					"patching_rect" : [ 555.0, 170.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 170.0, 39.0, 23.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 525.0, 210.0, 176.0, 23.0 ],
					"text" : "mc.sfrecord~ @nchans 2"
				}

			}
, 			{
				"box" : 				{
					"channels" : 2,
					"fontname" : "InputMono",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 525.0, 70.0, 75.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 15.0, 75.0, 125.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "in.level",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "in.level",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "in_level"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 180.0, 565.0, 92.0, 23.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 180.0, 540.0, 47.0, 23.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 180.0, 510.0, 47.0, 23.0 ],
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
					"fontname" : "InputMono",
					"id" : "obj-14",
					"items" : [ "script", "stop", ",", "script", "start" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 55.0, 120.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "mc.ezdac~",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 465.0, 855.0, 45.0, 45.0 ]
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
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 513.0, 302.0, 1429.0, 709.0 ],
						"default_fontname" : "Anonymous Pro",
						"gridonopen" : 2,
						"gridsize" : [ 15.0, 5.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"style" : "cassiel",
						"subpatcher_template" : "cassiel",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 915.0, 135.0, 207.0, 23.0 ],
									"text" : "mc.separate~ 2 2 2 2 2 2 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 345.0, 590.0, 108.0, 23.0 ],
									"text" : "mc.combine~ 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 1080.0, 280.0, 146.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 Discord4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 900.0, 280.0, 169.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 Enso.B Enso"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 780.0, 240.0, 169.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 Enso.A Enso"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 7,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 606.0, 339.0, 931.0, 512.0 ],
										"default_fontname" : "InputMono",
										"gridonopen" : 2,
										"gridsize" : [ 15.0, 5.0 ],
										"gridsnaponopen" : 2,
										"style" : "cassiel",
										"subpatcher_template" : "cassiel",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 795.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 705.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 615.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-29",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 180.0, 95.0, 59.0, 64.0 ],
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
													"patching_rect" : [ 525.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 435.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 345.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 255.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 8,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 165.0, 325.0, 92.5, 23.0 ],
													"text" : "funnel 8"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 165.0, 240.0, 85.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Ramps"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-22",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 480.0, 185.0, 59.0, 50.0 ],
													"style" : "c.comment",
													"text" : "row * val * secs"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 8,
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 165.0, 165.0, 92.5, 23.0 ],
													"text" : "spray 8 0 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.0, 375.0, 92.0, 23.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 30.0, 85.0, 77.0, 23.0 ],
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
													"destination" : [ "obj-24", 5 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
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
													"destination" : [ "obj-24", 6 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 7 ],
													"source" : [ "obj-5", 0 ]
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
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-9", 5 ]
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
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-9", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-9", 7 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "c.comment",
												"default" : 												{
													"clearcolor" : [ 0.221674, 0.25681, 0.29304, 1.0 ],
													"fontname" : [ "Courier" ],
													"textcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "cassiel",
												"default" : 												{
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgfillcolor" : 													{
														"angle" : 270.0,
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"proportion" : 0.39,
														"type" : "gradient"
													}
,
													"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
													"fontname" : [ "InputMono" ],
													"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "cassiel.abstraction",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "cassiel.subpatcher",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 1260.0, 395.0, 108.0, 23.0 ],
									"saved_object_attributes" : 									{
										"fontname" : "InputMono",
										"style" : "cassiel"
									}
,
									"style" : "cassiel.subpatcher",
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
									"patching_rect" : [ 1020.0, 20.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 1260.0, 510.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 90.0, 240.0, 161.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 Microtonic"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 375.0, 240.0, 276.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 ODS.A Other_Desert_Cities"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 600.0, 280.0, 276.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 ODS.B Other_Desert_Cities"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Input Mono",
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 255.0, 280.0, 131.0, 23.0 ],
									"style" : "cassiel.abstraction",
									"text" : "ag25.VST3 Axon_2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 7,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 723.0, 671.0, 977.0, 375.0 ],
										"default_fontname" : "Anonymous Pro",
										"gridonopen" : 2,
										"gridsize" : [ 15.0, 5.0 ],
										"gridsnaponopen" : 2,
										"style" : "cassiel",
										"subpatcher_template" : "cassiel",
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "[mc 2] channel 7",
													"id" : "obj-10",
													"index" : 8,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 735.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-11",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 735.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 735.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 7",
													"id" : "obj-9",
													"index" : 7,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 645.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-7",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 645.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 645.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-1",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 555.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 555.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "[mc 2] channel 6",
													"id" : "obj-6",
													"index" : 6,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 555.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-33",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 465.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 465.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
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
													"patching_rect" : [ 465.0, 50.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-30",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 375.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 375.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
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
													"patching_rect" : [ 375.0, 50.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 255.0, 275.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 8,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 255.0, 230.0, 222.0, 23.0 ],
													"text" : "pack 0. 0. 0. 0. 0. 0. 0. 0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-25",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 285.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 285.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-23",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 195.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 195.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "InputMono",
													"format" : 6,
													"id" : "obj-22",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 105.0, 130.0, 54.0, 23.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 105.0, 100.0, 77.0, 23.0 ],
													"style" : "cassiel.abstraction",
													"text" : "ag25.Peak"
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
													"patching_rect" : [ 285.0, 50.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 195.0, 50.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-27", 5 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 7 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
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
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 6 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "cassiel",
												"default" : 												{
													"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "cassiel.abstraction",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "cassiel.subpatcher",
												"default" : 												{
													"fontname" : [ "InputMono" ],
													"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
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
									"patching_rect" : [ 750.0, 470.0, 90.0, 23.0 ],
									"saved_object_attributes" : 									{
										"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
										"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
										"fontname" : "Anonymous Pro",
										"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
										"style" : "cassiel"
									}
,
									"style" : "cassiel.subpatcher",
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
									"fontname" : "InputMono",
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "setvalue", "int" ],
									"patching_rect" : [ 855.0, 570.0, 176.0, 23.0 ],
									"text" : "mc.targetlist @chans 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 10,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "multichannelsignal", "", "" ],
									"patching_rect" : [ 150.0, 385.0, 207.0, 23.0 ],
									"text" : "mc.matrix~ 8 8 1. @chans 2"
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
									"fontname" : "InputMono",
									"id" : "obj-27",
									"items" : [ "wclose", ",", "front" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 30.0, 315.0, 75.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 360.0, 92.0, 23.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 15.0, 130.0, 497.0, 23.0 ],
									"text" : "route audio Microtonic Axon_2 ODS.A ODS.B Enso.A Enso.B Discord4"
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
									"fontname" : "InputMono",
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 9,
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 390.0, 50.0, 482.0, 23.0 ],
									"text" : "route mix Microtonic Axon_2 ODS.A ODS.B Enso.A Enso.B Discord4"
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
									"color" : [ 1.0, 0.4, 0.3, 1.0 ],
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 354.5, 623.0, 1234.375, 623.0, 1234.375, 125.0, 924.5, 125.0 ],
									"saved_attribute_attributes" : 									{
										"patchlinecolor" : 										{
											"expression" : "themecolor.live_active_automation"
										}

									}
,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-16", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-16", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-16", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-16", 6 ]
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
									"destination" : [ "obj-15", 6 ],
									"source" : [ "obj-17", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 5 ],
									"source" : [ "obj-17", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 4 ],
									"source" : [ "obj-17", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 3 ],
									"source" : [ "obj-17", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 2 ],
									"source" : [ "obj-17", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 1 ]
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
									"destination" : [ "obj-6", 2 ],
									"source" : [ "obj-25", 5 ]
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
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"destination" : [ "obj-8", 2 ],
									"source" : [ "obj-25", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 1.0, 1.0, 1.0 ],
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-25", 7 ]
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
									"midpoints" : [ 399.5, 98.74609375, 1269.5, 98.74609375 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-5", 5 ]
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
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-5", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-5", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 5 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 5 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
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
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 6 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 6 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 7 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 7 ],
									"order" : 0,
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
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel-1",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel-1-1",
								"default" : 								{
									"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel.abstraction",
								"newobj" : 								{
									"textcolor_inverse" : [ 0.862745, 0.741176, 0.137255, 1.0 ]
								}
,
								"parentstyle" : "cassiel.subpatcher",
								"multi" : 1
							}
, 							{
								"name" : "cassiel.subpatcher",
								"default" : 								{
									"fontname" : [ "InputMono" ],
									"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
								}
,
								"newobj" : 								{
									"fontname" : [ "InputMono" ],
									"textcolor_inverse" : [ 1.0, 0.862745098039216, 0.592156862745098, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 1
							}
, 							{
								"name" : "laura-ashley",
								"default" : 								{
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
,
					"patching_rect" : [ 210.0, 425.0, 62.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 105.0, 62.0, 23.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Anonymous Pro",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel"
					}
,
					"style" : "cassiel.subpatcher-1",
					"text" : "p Audio"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 60.0, 230.0, 115.0, 23.0 ],
					"text" : "route seq main"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 307.0, 112.0, 781.0, 787.0 ],
						"default_fontname" : "Input Mono",
						"gridonopen" : 2,
						"gridsize" : [ 15.0, 5.0 ],
						"gridsnaponopen" : 2,
						"style" : "cassiel",
						"subpatcher_template" : "cassiel",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 660.0, 635.0, 100.0, 23.0 ],
									"text" : "snapshot~ 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-26",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 715.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 630.0, 90.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "0/1: transport",
									"id" : "obj-21",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 630.0, 20.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 130.0, 33.0, 23.0 ],
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
									"patching_rect" : [ 570.0, 90.0, 24.0, 24.0 ]
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
									"patching_rect" : [ 570.0, 20.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 585.0, 720.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 564.0, 645.0, 47.0, 23.0 ],
									"text" : "$2 $3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 530.0, 113.0, 23.0 ],
									"text" : "0 11 27 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 474.0, 115.0, 37.0 ],
									"text" : "translate ticks hh:mm:ss"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 270.0, 70.0, 23.0 ],
									"text" : "pack 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"fontsize" : 14.0,
									"id" : "obj-25",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.0, 145.0, 55.0, 25.0 ],
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
									"patching_rect" : [ 518.0, 720.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 225.0, 295.0, 54.0, 23.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.0, 680.0, 77.0, 23.0 ],
									"text" : "print SEQ"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-19",
									"items" : [ "wclose", ",", "front" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 15.0, 90.0, 100.0, 23.0 ]
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
									"patching_rect" : [ 15.0, 45.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 15.0, 130.0, 92.0, 23.0 ],
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
									"patching_rect" : [ 15.0, 740.0, 30.0, 30.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 670.0, 85.0, 23.0 ],
									"text" : "request $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 15.0, 465.0, 47.0, 23.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 390.0, 140.0, 21.0 ],
									"style" : "c.comment",
									"text" : "Beat to replace:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 387.0, 680.0, 85.0, 23.0 ],
									"text" : "print DUMP"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 435.0, 395.0, 69.0, 23.0 ],
									"style" : "c.comment",
									"text" : "play $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-54",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 475.0, 560.0, 110.0, 50.0 ],
									"style" : "c.comment",
									"text" : "Locator 1.0 to 5.0 (if 4/4)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 480.0, 52.0, 23.0 ],
									"style" : "c.comment",
									"text" : "+~ 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 450.0, 52.0, 23.0 ],
									"style" : "c.comment",
									"text" : "*~ 4."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-48",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 560.0, 84.0, 37.0 ],
									"style" : "c.comment",
									"text" : "loadmess seq main"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.394356, 0.149215, 0.067687, 1.0 ],
									"fontname" : "InputMono",
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 225.0, 605.0, 62.0, 23.0 ],
									"style" : "c.comment",
									"text" : "seq~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-46",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 180.0, 118.0, 64.0 ],
									"style" : "c.comment",
									"text" : "Some of this lifted from Gibberwocky sequencer"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 595.0, 151.0, 23.0 ],
									"style" : "c.comment",
									"text" : "delete main $1 $2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 530.0, 34.0, 23.0 ],
									"style" : "c.comment",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.0, 565.0, 94.0, 23.0 ],
									"style" : "c.comment",
									"text" : "pack 0. 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"fontsize" : 14.0,
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 135.0, 390.0, 55.0, 25.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 135.0, 360.0, 34.0, 23.0 ],
									"style" : "c.comment",
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 135.0, 330.0, 34.0, 23.0 ],
									"style" : "c.comment",
									"text" : "% 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"fontsize" : 14.0,
									"id" : "obj-35",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 170.0, 145.0, 55.0, 25.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 320.0, 125.0, 37.0 ],
									"style" : "c.comment",
									"text" : "sprintf frequency %dn"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 225.0, 270.0, 33.0, 23.0 ],
									"style" : "c.comment",
									"text" : "/ 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"fontsize" : 14.0,
									"id" : "obj-24",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 135.0, 169.0, 25.0 ],
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
									"patching_rect" : [ 435.0, 360.0, 24.0, 24.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"fontsize" : 14.0,
									"format" : 6,
									"id" : "obj-18",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 400.0, 600.0, 78.0, 25.0 ],
									"style" : "cassiel.number",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 400.0, 560.0, 70.0, 37.0 ],
									"style" : "c.comment",
									"text" : "snapshot~ 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 225.0, 205.0, 52.0, 23.0 ],
									"style" : "c.comment"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 225.0, 175.0, 94.0, 23.0 ],
									"style" : "c.comment",
									"text" : "unpack 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 410.0, 146.0, 23.0 ],
									"style" : "c.comment",
									"text" : "phasor~ 1n @lock 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 9,
									"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
									"patching_rect" : [ 170.0, 100.0, 109.0, 23.0 ],
									"style" : "c.comment",
									"text" : "transport"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "InputMono",
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 170.0, 70.0, 389.0, 23.0 ],
									"style" : "c.comment",
									"text" : "metro 4n @quantize 480 @autostart 1 @active 1"
								}

							}
, 							{
								"box" : 								{
									"attr" : "frequency",
									"fontname" : "InputMono",
									"id" : "obj-27",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"orientation" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 263.0, 362.0, 101.0, 46.0 ],
									"style" : "cassiel.attrui"
								}

							}
, 							{
								"box" : 								{
									"comment" : "feed straight into seq",
									"id" : "obj-45",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.0, 20.0, 30.0, 30.0 ],
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
									"patching_rect" : [ 305.0, 680.0, 30.0, 30.0 ],
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
									"midpoints" : [ 247.0, 166.5, 444.5, 166.5 ],
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
									"destination" : [ "obj-34", 0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 1,
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
									"midpoints" : [ 234.5, 257.0, 384.0, 257.0, 384.0, 437.0, 267.5, 437.0 ],
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
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-21", 0 ]
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
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-28", 0 ]
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
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-34", 0 ]
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
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 0,
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
									"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "cassiel.attrui",
								"default" : 								{
									"accentcolor" : [ 0.996078431372549, 0.8, 0.8, 1.0 ],
									"bgcolor" : [ 0.614285, 0.654518, 0.758022, 1.0 ],
									"textcolor_inverse" : [ 0.221674, 0.25681, 0.29304, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "cassiel.number",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.2 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"patching_rect" : [ 90.0, 315.0, 92.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.0, 105.0, 92.0, 23.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 0.163647, 0.174699, 0.17409, 1.0 ],
						"editing_bgcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
						"fontname" : "Input Mono",
						"locked_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
						"style" : "cassiel"
					}
,
					"style" : "cassiel.subpatcher-1",
					"text" : "p Sequencer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 15.0, 185.0, 329.0, 23.0 ],
					"text" : "route show win seq now master alert toggle"
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
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 15.0, 790.0, 400.0, 220.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.0, 255.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "InputMono",
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 145.0, 154.0, 23.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}
,
					"text" : "node.script main.js",
					"textfile" : 					{
						"filename" : "main.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 450.0, 47.0, 23.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "ag25.SpinDial.js",
					"id" : "obj-58",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 195.0, 70.0, 165.0, 165.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.0, 5.0, 165.0, 165.0 ],
					"textfile" : 					{
						"filename" : "ag25.SpinDial.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

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
					"color" : [ 0.109078, 0.481945, 0.537541, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 241.0, 469.0, 349.5, 469.0, 349.5, 134.0, 24.5, 134.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.113339, 0.606332, 0.609597, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-13", 0 ]
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-17", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
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
					"source" : [ "obj-2", 2 ]
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
					"destination" : [ "obj-20", 0 ],
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
					"color" : [ 0.113339, 0.606332, 0.609597, 1.0 ],
					"destination" : [ "obj-13", 3 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
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
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.109078, 0.481945, 0.537541, 1.0 ],
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 99.5, 486.5, 363.5, 486.5, 363.5, 122.0, 24.5, 122.0 ],
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
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-4", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 3 ],
					"source" : [ "obj-45", 0 ]
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
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 639.5, 186.5078125, 609.7578125, 186.5078125, 609.7578125, 49.05078125, 639.5, 49.05078125 ],
					"source" : [ "obj-8", 0 ]
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
					"color" : [ 0.720698, 0.16723, 0.080014, 1.0 ],
					"destination" : [ "obj-13", 2 ],
					"source" : [ "obj-9", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-9", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-9", 4 ]
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
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-9", 5 ]
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
			"obj-10" : [ "live.tab", "live.tab", 0 ],
			"obj-13::obj-64::obj-28" : [ "vst~[6]", "vst~[1]", 0 ],
			"obj-13::obj-65::obj-28" : [ "vst~[11]", "vst~[1]", 0 ],
			"obj-13::obj-66::obj-28" : [ "vst~[10]", "vst~[1]", 0 ],
			"obj-13::obj-67::obj-28" : [ "vst~[9]", "vst~[1]", 0 ],
			"obj-13::obj-6::obj-28" : [ "vst~[8]", "vst~[1]", 0 ],
			"obj-13::obj-8::obj-28" : [ "vst~[7]", "vst~[1]", 0 ],
			"obj-13::obj-9::obj-28" : [ "vst~[14]", "vst~[1]", 0 ],
			"obj-24" : [ "in.level", "in.level", 0 ],
			"obj-37::obj-34" : [ "master", "master", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ag25.Break.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.Peak.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.Ramps.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.SpinDial.js",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.Strip-DotDot.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.Strip-_.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ag25.VST3.maxpat",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.krellmixer.js",
				"bootpath" : "~/Documents/Max 9/Packages/ui-candy-2006/jsui",
				"patcherrelativepath" : "../../../../Documents/Max 9/Packages/ui-candy-2006/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cassiel.textbrick.js",
				"bootpath" : "~/Documents/Max 9/Packages/ui-candy-2006/jsui",
				"patcherrelativepath" : "../../../../Documents/Max 9/Packages/ui-candy-2006/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "main.js",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "the-printer-jam.jpeg",
				"bootpath" : "~/GITHUB/cassiel/algo-2025/main",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
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
				"name" : "cassiel.subpatcher",
				"default" : 				{
					"fontname" : [ "InputMono" ],
					"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cassiel.subpatcher-1",
				"default" : 				{
					"fontname" : [ "InputMono" ],
					"textcolor_inverse" : [ 0.941176, 0.690196, 0.196078, 1.0 ]
				}
,
				"newobj" : 				{
					"fontname" : [ "InputMono" ],
					"textcolor_inverse" : [ 1.0, 0.862745098039216, 0.592156862745098, 1.0 ]
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
