ScenariosConfig = {
	    --[[
		["CentralBank"] = {
			fires = {
				{ coords = vec3(x, y, z), scale = 1.0, difficultyMultiplier = 5.0 },
			},
			vehicles = {
				{ model = "model", coords = vec4(x, y, z, h) },
			},
			peds = {
				{ model = "model", coords = vec4(x, y, z, h), animation = { upper, dict, anim, loop } },
			},
		}
	]]

    ["CentralBank"] = {
        coords = vector3(223.79, 209.62, 105.53),
		onlyManually = true,
        fires = {
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 232.02481079101562,
				["y"] = 215.34483337402344,
				["z"] = 105.94973754882812
			},
			{
				difficultyMultiplier = 10,
				scale = 2.25,
				["x"] = 235.5568084716797,
				["y"] = 210.38987731933594,
				["z"] = 108.21776580810547
			},
			{
				difficultyMultiplier = 10,
				scale = 2.5,
				["x"] = 231.02645874023438,
				["y"] = 221.25997924804688,
				["z"] = 111.82795715332031
			},
			{
				difficultyMultiplier = 5,
				scale = 2,
				["x"] = 230.7657012939453,
				["y"] = 214.8112030029297,
				["z"] = 115.8279037475586
			},
			{
				difficultyMultiplier = 4,
				scale = 2,
				["x"] = 246.29751586914062,
				["y"] = 206.09481811523438,
				["z"] = 104.19886779785156
			},
			{
				difficultyMultiplier = 7,
				scale = 2,
				["x"] = 240.671630859375,
				["y"] = 207.7877655029297,
				["z"] = 104.29531860351562
			},
			{
				difficultyMultiplier = 5,
				scale = 2,
				["x"] = 259.4308776855469,
				["y"] = 203.61471557617188,
				["z"] = 105.4544448852539
			},
			{
				difficultyMultiplier = 3,
				scale = 1.5,
				["x"] = 266.6182861328125,
				["y"] = 215.77520751953125,
				["z"] = 105.62088012695312
			},
			{
				difficultyMultiplier = 4,
				scale = 1,
				["x"] = 265.873291015625,
				["y"] = 213.19236755371094,
				["z"] = 106.09588623046875
			},
			{
				difficultyMultiplier = 1,
				scale = 1,
				["x"] = 264.9903564453125,
				["y"] = 210.76663208007812,
				["z"] = 106.15897369384766
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 259.6228942871094,
				["y"] = 214.18478393554688,
				["z"] = 105.60736083984375
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 239.23863220214844,
				["y"] = 225.95440673828125,
				["z"] = 105.64684295654297
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 238.93045043945312,
				["y"] = 218.65829467773438,
				["z"] = 105.68951416015625
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 244.73838806152344,
				["y"] = 219.32432556152344,
				["z"] = 106.7884292602539
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 260.1782531738281,
				["y"] = 218.2815399169922,
				["z"] = 105.50863647460938
			},
			{
				difficultyMultiplier = 1,
				scale = 2,
				["x"] = 254.26971435546875,
				["y"] = 209.70867919921875,
				["z"] = 105.97605895996094
			}
		}
    },
	["Banco Praça"] = {
		coords = vector3(152.15,-1035.7,29.45),
		onlyManually = true,
        fires = {
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 153.38,
				["y"] = -1036.97,
				["z"] = 29.28
			},
			
		}
	},
	["TREINO"] = {
		coords = vector3(180.43,-1651.45,29.81),
		onlyManually = true,
		fires = {
			{
				difficultyMultiplier = 25,
				scale = 5,
				["x"] = 179.79,
				["y"] = -1648.39,
				["z"] = 29.81
			},
			{
				difficultyMultiplier = 25,
				scale = 5,
				["x"] = 181.8,
				["y"] = -1650.71,
				["z"] = 29.81
			},
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 180.85,
				["y"] = -1666.66,
				["z"] = 29.82
			},
			{
				difficultyMultiplier = 25,
				scale = 5,
				["x"] = 177.3,
				["y"] = -1650.97,
				["z"] = 29.81
			},
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 178.51,
				["y"] = -1665.04,
				["z"] = 29.82
			},
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 176.27,
				["y"] = -1663.18,
				["z"] = 29.82
			},
			{
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 174.08,
				["y"] = -1661.43,
				["z"] = 29.81
			},
		}
	},
	["Vanilla"] = {
		coords = vector3(127.67,-1297.81,37.59),
		onlyManually = true,
		fires = {
			{
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 117.8,
                ["y"] = -1305.48,
                ["z"] = 29.23
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 124.22,
                ["y"] = -1301.85,
                ["z"] = 29.23
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 133.75,
                ["y"] = -1296.23,
                ["z"] = 29.23
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 139.32,
                ["y"] = -1293.49,
                ["z"] = 29.23
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 123.47,
                ["y"] = -1305.98,
                ["z"] = 35.27
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 138.14,
                ["y"] = 1297.6,
                ["z"] = 35.27
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 132.1,
                ["y"] = -1304.28,
                ["z"] = 33.08
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 94.96,
                ["y"] = 1284.26,
                ["z"] = 29.27
            },
			{
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 128.77,
                ["y"] = -1298.5,
                ["z"] = 29.23
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 128.09,
                ["y"] = -1297.56,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 129.1,
                ["y"] = -1295.4,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 129.35,
                ["y"] = -1294.73,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 129.58,
                ["y"] = -1292.29,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 127.84,
                ["y"] = -1292.08,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 127.19,
                ["y"] = -1289.55,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 125.78,
                ["y"] = -1283.84,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 121.85,
                ["y"] = -1290.84,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 119.93,
                ["y"] = -1291.89,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 115.02,
                ["y"] = -1285.68,
                ["z"] = 28.26
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 112.58,
                ["y"] = -1292.09,
                ["z"] = 28.26
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 116.85,
                ["y"] = -1294.89,
                ["z"] = 29.27
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = 130.22,
                ["y"] = -1293.65,
                ["z"] = 30.82
            },
			{
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 102.62,
				["y"] = -1292.86,
				["z"] = 29.25
			},
            {
				difficultyMultiplier = 3,
				scale = 2,
				["x"] = 100.63,
				["y"] = -1295.03,
				["z"] = 29.27
			},
            {
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 99.91,
				["y"] = -1293.83,
				["z"] = 29.27
			},
            {
				difficultyMultiplier = 2,
				scale = 3,
				["x"] = 96.27,
				["y"] = -1288.35,
				["z"] = 29.27
			},
            {
				difficultyMultiplier = 2,
				scale = 3,
				["x"] = 97.14,
				["y"] = -1287.67,
				["z"] = 29.27
			},
            {
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 96.16,
				["y"] = -1286.42,
				["z"] = 29.27
			},
            {
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 97.3,
				["y"] = -1291.18,
				["z"] = 29.27
			},
			{
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 93.8,
				["y"] = -1283.22,
				["z"] = 29.25
			},
			{
				difficultyMultiplier = 2,
				scale = 5,
				["x"] = 115.6,
				["y"] = -1296.3,
				["z"] = 29.27
			},
		}
    },
	["Police Departament"] = {
        coords = vector3(447.42, -986.72, 49.5),
		onlyManually = true,
		fires = {
			{
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 418.24,
                ["y"] = -988.5,
                ["z"] = 29.37
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 424.28,
                ["y"] = -995.41,
                ["z"] = 30.72
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 410.91,
                ["y"] = -1024.23,
                ["z"] = 29.45
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 457.31,
                ["y"] = -1008.6,
                ["z"] = 28.31
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 448.13,
                ["y"] = -1000.15,
                ["z"] = 30.72
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 435.21,
                ["y"] = -976.29,
                ["z"] = 30.72
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 473.19,
                ["y"] = -969.91,
                ["z"] = 27.73
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 474.51,
                ["y"] = -978.22,
                ["z"] = 27.99
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 485.93,
                ["y"] = -980.53,
                ["z"] = 27.97
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 489.79,
                ["y"] = -1010.17,
                ["z"] = 27.94
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 447.43,
                ["y"] = -969.69,
                ["z"] = 30.36
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 419.12,
                ["y"] = -1010.29,
                ["z"] = 29.25
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 473.17,
                ["y"] = -1021.79,
                ["z"] = 28.12
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 427.15,
                ["y"] = -1001.27,
                ["z"] = 30.7
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = 458.56,
                ["y"] = -1018.02,
                ["z"] = 32.69
            },
			{
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 435.58,
                ["y"] = -981.98,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 437.91,
                ["y"] = -980.33,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 438.62,
                ["y"] = -983.03,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.05,
                ["y"] = -985.46,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.16,
                ["y"] = -978.83,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.05,
                ["y"] = -987.69,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.2,
                ["y"] = -990.36,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 441.99,
                ["y"] = -994.85,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = 441.79,
                ["y"] = -997.91,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 435.35,
                ["y"] = -995.12,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 447.09,
                ["y"] = -990.15,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 447.31,
                ["y"] = -979.3,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.21,
                ["y"] = -975.46,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 2,
                ["x"] = 457.1,
                ["y"] = -972.77,
                ["z"] = 30.7
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 455.4,
                ["y"] = -994.0,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 452.18,
                ["y"] = -983.77,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 456.65,
                ["y"] = -980.36,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 480.99,
                ["y"] = -995.84,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 480.89,
                ["y"] = -986.57,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 475.02,
                ["y"] = -985.95,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 477.74,
                ["y"] = -994.98,
                ["z"] = 26.27
            },
			{
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 478.24,
                ["y"] = -998.42,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2, 
                scale = 3,
                ["x"] = 480.88,
                ["y"] = -998.5,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 478.19,
                ["y"] = -995.55,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 477.53,
                ["y"] = -994.21,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 479.02,
                ["y"] = -992.4,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 477.25,
                ["y"] = -988.72,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 471.72,
                ["y"] = -988.32,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 470.7,
                ["y"] = -986.13,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 474.32,
                ["y"] = -983.76,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 479.95,
                ["y"] = -1001.44,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 475.39,
                ["y"] = -1001.65,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 473.46,
                ["y"] = -1001.64,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.51,
                ["y"] = -986.36,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 466.8,
                ["y"] = -988.03,
                ["z"] = 30.68
            },           
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.46,
                ["y"] = -991.75,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 466.69,
                ["y"] = -980.51,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.5,
                ["y"] = -976.2,
                ["z"] = 30.68
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 481.5,
                ["y"] = -1004.67,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 480.53,
                ["y"] = -1006.85,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 483.71,
                ["y"] = -1010.34,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 479.56,
                ["y"] = -1010.2,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 472.41,
                ["y"] = -1009.17,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 469.07,
                ["y"] = -1013.59,
                ["z"] = 26.39
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.15,
                ["y"] = -1013.65,
                ["z"] = 26.39
            },            
            {
                difficultyMultiplier = 15, 
                scale = 3,
                ["x"] = 468.57,
                ["y"] = -1016.04,
                ["z"] = 26.39
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.88,
                ["y"] = -1006.39,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 467.93,
                ["y"] = -1005.03,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 469.76,
                ["y"] = -1003.42,
                ["z"] = 26.27

            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.76,
                ["y"] = -1001.15,
                ["z"] = 26.27
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 470.29,
                ["y"] = -983.63,
                ["z"] = 37.17
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 463.5,
                ["y"] = -983.67,
                ["z"] = 43.69
            },            
            {
                difficultyMultiplier = 1,
                scale = 3,
                ["x"] = 465.39,
                ["y"] = -983.56,
                ["z"] = 39.39
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.62,
                ["y"] = -974.95,
                ["z"] = 34.96
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.87,
                ["y"] = -977.26,
                ["z"] = 34.96
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 463.96,
                ["y"] = -974.88,
                ["z"] = 34.96
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 461.35,
                ["y"] = -979.18,
                ["z"] = 34.96
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 459.2,
                ["y"] = -976.03,
                ["z"] = 34.96
            },                 
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 455.52,
                ["y"] = -977.57,
                ["z"] = 34.96
            },           
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 450.66,
                ["y"] = -980.8,
                ["z"] = 34.96
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 449.45,
                ["y"] = -982.11,
                ["z"] = 35.06
            },            
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.78,
                ["y"] = -987.09,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 443.27,
                ["y"] = -982.1,
                ["z"] = 34.96

            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 448.86,
                ["y"] = -982.69,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 452.5,
                ["y"] = -986.38,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 453.49,
                ["y"] = -991.58,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 449.78,
                ["y"] = -995.24,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 448.3,
                ["y"] = -997.08,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 446.01,
                ["y"] = -992.7,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.37,
                ["y"] = -990.93,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 466.11,
                ["y"] = -992.32,
                ["z"] = 34.96
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 470.48,
                ["y"] = -993.5,
                ["z"] = 32.91
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 480.66,
                ["y"] = -999.49,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 479.95,
                ["y"] = -1002.83,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 481.51,
                ["y"] = -1003.34,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.28,
                ["y"] = -993.17,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 465.2,
                ["y"] = -996.59,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.69,
                ["y"] = -997.78,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 468.68,
                ["y"] = -999.52,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 470.34,
                ["y"] = -993.37,
                ["z"] = 28.48
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 463.1,
                ["y"] = -994.54, 
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 453.3,
                ["y"] = -999.79,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 451.19,
                ["y"] = -999.57,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 452.56,
                ["y"] = -992.53,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 447.61,
                ["y"] = -999.87,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 444.48,
                ["y"] = -999.12,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 439.1,
                ["y"] = -998.98,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 436.16,
                ["y"] = -999.28,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 432.41,
                ["y"] = -999.78,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 430.48,
                ["y"] = -999.61,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 427.65,
                ["y"] = -999.38,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 424.77,
                ["y"] = -994.0, 
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 25,
                scale = 3,
                ["x"] = 424.37,
                ["y"] = -990.03,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 463.02,
                ["y"] = -977.34,
                ["z"] = 25.7
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 463.15,
                ["y"] = -975.27,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 466.08,
                ["y"] = -975.57,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 466.19,
                ["y"] = -973.26,
                ["z"] = 26.27
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 470.48,
                ["y"] = -974.01,
                ["z"] = 28.48
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 441.1,
                ["y"] = -986.36,
                ["z"] = 30.78
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 440.73,
                ["y"] = -978.55,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 437.87,
                ["y"] = -983.67,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 435.93,
                ["y"] = -982.32,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 435.68,
                ["y"] = -981.13,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 438.28,
                ["y"] = -979.43,
                ["z"] = 30.68
            },
		}
	},
	["LS Custom"] = {
		coords = vector3(-326.62,-137.86,40.24),
		onlyManually = true,
		fires = {
			{
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -349.71,
                ["y"] = -112.0,
                ["z"] = 39.43
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -358.33,
                ["y"] = -137.12,
                ["z"] = 39.43
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -354.6,
                ["y"] = -146.96,
                ["z"] = 38.25
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -363.41,
                ["y"] = -160.7,
                ["z"] = 38.16
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -355.51,
                ["y"] = -109.33,
                ["z"] = 38.7
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -352.29,
                ["y"] = -122.2,
                ["z"] = 49.57
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -355.47,
                ["y"] = -130.73,
                ["z"] = 49.57
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -351.7,
                ["y"] = -120.55,
                ["z"] = 39.43
            },
            {
                difficultyMultiplier = 30,
                scale = 5,
                ["x"] = -367.87,
                ["y"] = -101.72,
                ["z"] = 39.55
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -343.92,
                ["y"] = -128.91,
                ["z"] = 41.42
            },
			{
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = 435.58,
                ["y"] = -981.98,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 437.91,
                ["y"] = -980.33,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 438.62,
                ["y"] = -983.03,
                ["z"] = 30.68
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -324.67,
                ["y"] = -108.72,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -326.69,
                ["y"] = -113.85,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -322.85,
                ["y"] = -121.04,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -316.76,
                ["y"] = -123.53,
                ["z"] = 39.06
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -310.94,
                ["y"] = -127.23,
                ["z"] = 39.16
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -311.56,
                ["y"] = -135.29,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -318.14,
                ["y"] = -133.19,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -322.28,
                ["y"] = -143.48,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -327.23,
                ["y"] = -153.65,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -329.44,
                ["y"] = -164.95,
                ["z"] = 39.01
            },
			{
                difficultyMultiplier = 3,
                scale = 4,
                ["x"] = -344.41,
                ["y"] = -124.29,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 4,
                ["x"] = -346.2,
                ["y"] = -126.56,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = -346.86,
                ["y"] = -128.92,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = -348.03,
                ["y"] = -132.5,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = -352.29,
                ["y"] = -131.53,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -350.99,
                ["y"] = -126.42,
                ["z"] = 42.04
            },
            {
                difficultyMultiplier = 3,
                scale = 4,
                ["x"] = -349.14,
                ["y"] = -122.62,
                ["z"] = 42.04
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -345.03,
                ["y"] = -133.64,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -343.14,
                ["y"] = -129.7,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -342.35,
                ["y"] = -125.69,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 3,
                scale = 4,
                ["x"] = -334.07,
                ["y"] = -125.3,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -334.64,
                ["y"] = -130.86,
                ["z"] = 39.11
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -347.9,
                ["y"] = -137.93,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -351.25,
                ["y"] = -140.26,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -353.26,
                ["y"] = -142.07,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -354.75,
                ["y"] = -136.36,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -354.11,
                ["y"] = -134.14,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -348.4,
                ["y"] = -119.35,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -348.21,
                ["y"] = -116.8,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -345.32,
                ["y"] = -113.43,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -341.67,
                ["y"] = -115.52,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -342.51,
                ["y"] = -119.35,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -343.04,
                ["y"] = -122.1,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 20,
                scale = 5,
                ["x"] = -325.26,
                ["y"] = -127.97,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -328.87,
                ["y"] = -145.25,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -326.18,
                ["y"] = -134.98,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -333.2,
                ["y"] = -153.77,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -342.0,
                ["y"] = -148.32,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -344.8,
                ["y"] = -153.01,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -347.49,
                ["y"] = -152.79,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -339.21,
                ["y"] = -155.6,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -337.02,
                ["y"] = -156.31,
                ["z"] = 39.01
            },
            {
                difficultyMultiplier = 1,
                scale = 2,
                ["x"] = -368.14,
                ["y"] = -99.73,
                ["z"] = 39.55
            },
            {
                difficultyMultiplier = 3,
                scale = 3,
                ["x"] = -363.56,
                ["y"] = -100.77,
                ["z"] = 39.55
            },
            {
                difficultyMultiplier = 10,
                scale = 5,
                ["x"] = -363.11,
                ["y"] = -96.01,
                ["z"] = 39.55 
            },
            {
                difficultyMultiplier = 10,
                scale = 5,
                ["x"] = -365.69,
                ["y"] = -93.5,
                ["z"] = 39.55
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -371.51,
                ["y"] = -98.61,
                ["z"] = 39.55
            },
            {
                difficultyMultiplier = 15,
                scale = 5,
                ["x"] = -374.13,
                ["y"] = -94.23,
                ["z"] = 39.55
            },
		}
	},



	
	["Pearls"] = {
		coords = vector3(-1827.81,-1193.3,14.56),
		onlyManually = true,
		fires = {
			{
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1809.94,
                ["y"] = -1202.51,
                ["z"] = 13.01
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1818.81,
                ["y"] = -1186.89,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1826.22,
                ["y"] = -1181.6,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1841.06,
                ["y"] = -1199.94,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1847.51,
                ["y"] = -1189.23,
                ["z"] = 15.28
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1844.42,
                ["y"] = -1197.83,
                ["z"] = 23.42
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1832.14,
                ["y"] = -1175.44,
                ["z"] = 23.39
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = -1823.41,
                ["y"] = -1184.58,
                ["z"] = 24.03
            },
			{
                difficultyMultiplier = 1,
                scale = 3,
                ["x"] = -1830.19,
                ["y"] = -1195.88,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 1,
                scale = 3,
                ["x"] = -1827.24,
                ["y"] = -1191.32,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1837.19,
                ["y"] = -1195.78,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 1,
                scale = 3,
                ["x"] = -1833.34,
                ["y"] = -1200.46,
                ["z"] = 14.31
            },
			{
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = -1841.22,
                ["y"] = -1195.17,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1840.68,
                ["y"] = -1192.29,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1843.67,
                ["y"] = -1196.66,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1847.56,
                ["y"] = -1198.16,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1846.62,
                ["y"] = -1195.47,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = -1845.45,
                ["y"] = -1192.31,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1846.25,
                ["y"] = -1189.74,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1841.85,
                ["y"] = -1188.15,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1844.16,
                ["y"] = -1186.18,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1841.9,
                ["y"] = -1183.02,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1840.6,
                ["y"] = -1188.97,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 3,
                ["x"] = -1837.17,
                ["y"] = -1192.03,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = -1834.94,
                ["y"] = -1189.76,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = -1833.92,
                ["y"] = -1182.63,
                ["z"] = 14.31
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = -1836.11,
                ["y"] = -1181.3,
                ["z"] = 14.31
            },
		}
    },


	["Hospital"] = {
		coords = vector3(1140.27,-1541.01,53.5),
		onlyManually = true,
		fires = {
			{
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1146.95,
                ["y"] = -1525.89,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1140.37,
                ["y"] = -1494.96,
                ["z"] = 34.78
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1131.43,
                ["y"] = -1520.29,
                ["z"] = 34.83
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1113.31,
                ["y"] = -1518.35,
                ["z"] = 34.69
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1125.31,
                ["y"] = -1479.62,
                ["z"] = 34.69
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1119.53,
                ["y"] = -1475.48,
                ["z"] = 34.83
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1171.13,
                ["y"] = -1491.92,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1167.43,
                ["y"] = -1528.94,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1168.36,
                ["y"] = -1581.37,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1150.59,
                ["y"] = -1598.82,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1111.42,
                ["y"] = -1549.1,
                ["z"] = 35.27
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1113.16,
                ["y"] = -1566.61,
                ["z"] = 34.9
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1121.27,
                ["y"] = -1622.05,
                ["z"] = 34.88
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1167.67,
                ["y"] = -1604.25,
                ["z"] = 34.69
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1163.33,
                ["y"] = -1553.03,
                ["z"] = 34.74
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1139.94,
                ["y"] = -1514.86,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1183.96,
                ["y"] = -1549.39,
                ["z"] = 34.79
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1189.51,
                ["y"] = -1565.55,
                ["z"] = 34.69
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1211.24,
                ["y"] = -1500.26,
                ["z"] = 34.69
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1189.59,
                ["y"] = -1499.63,
                ["z"] = 34.85
            },
            {
                difficultyMultiplier = 25,
                scale = 5,
                ["x"] = 1211.68,
                ["y"] = -1528.78,
                ["z"] = 34.71
            },
			{
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 1139.46,
                ["y"] = -1535.39,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = 1122.8,
                ["y"] = -1525.31,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 1131.31,
                ["y"] = -1535.61,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 3,
                scale = 5,
                ["x"] = 1131.28,
                ["y"] = -1544.43,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = 1134.61,
                ["y"] = -1548.44,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1141.28,
                ["y"] = -1548.4,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = 1149.97,
                ["y"] = -1547.01,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1147.57,
                ["y"] = -1540.69,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 2,
                ["x"] = 1148.06,
                ["y"] = -1533.91,
                ["z"] = 35.38
            },
			{
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1146.16,
                ["y"] = -1561.49,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1147.24,
                ["y"] = -1561.26,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1144.79,
                ["y"] = -1564.54,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1139.97,
                ["y"] = -1562.47,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1134.7,
                ["y"] = -1564.24,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1134.76,
                ["y"] = -1563.0,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1132.77,
                ["y"] = -1563.59,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1130.85,
                ["y"] = -1551.05,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1132.17,
                ["y"] = -1551.41,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1130.68,
                ["y"] = -1556.59,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 4,
                ["x"] = 1128.51,
                ["y"] = -1560.34,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1131.33,
                ["y"] = -1566.67,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1129.63,
                ["y"] = -1570.36,
                ["z"] = 35.03          
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1131.91,
                ["y"] = -1570.2,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1132.71,
                ["y"] = -1573.97,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1132.0,
                ["y"] = -1578.25,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1131.16,
                ["y"] = -1578.4,
                ["z"] = 35.03
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1127.45,
                ["y"] = -1585.31,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1127.53,
                ["y"] = -1589.47,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1135.8,
                ["y"] = -1595.02,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1140.98,
                ["y"] = -1594.89,
                ["z"] = 34.71 
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1147.76,
                ["y"] = -1594.4,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1149.71,
                ["y"] = -1590.39,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1150.25,
                ["y"] = -1584.48,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 2,
                scale = 5,
                ["x"] = 1142.14,
                ["y"] = -1580.33,
                ["z"] = 34.71
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1130.95,
                ["y"] = -1546.93,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1147.92,
                ["y"] = -1565.8,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1146.36,
                ["y"] = -1561.3,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1141.14,
                ["y"] = -1565.38,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1134.95,
                ["y"] = -1563.54,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1132.0,
                ["y"] = -1558.74,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1132.01,
                ["y"] = -1540.14,
                ["z"] = 39.5
            },          
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1132.96,
                ["y"] = -1548.68,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1136.44,
                ["y"] = -1535.03,
                ["z"] = 39.5
            },            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1141.06,
                ["y"] = -1529.88,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1137.62,
                ["y"] = -1530.0,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1138.98,
                ["y"] = -1527.71,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1144.16,
                ["y"] = -1534.6,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1144.15,
                ["y"] = -1537.85,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1146.27,
                ["y"] = -1539.94,
                ["z"] = 39.5
            },            
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1150.04,
                ["y"] = -1536.97,
                ["z"] = 39.33
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1149.84,
                ["y"] = -1535.76,
                ["z"] = 39.33
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1127.11,
                ["y"] = -1563.52,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1123.39,
                ["y"] = -1563.4,
                ["z"] = 39.5
            },
            {
                difficultyMultiplier = 1,
                scale = 5,
                ["x"] = 1127.28,
                ["y"] = -1567.99,
                ["z"] = 39.5
            },
            
		}
	},
    ["teste P"] = {
        coords = vector3(407.11,-993.92,31.39),
		onlyManually = true,
        fires = {
			{
				difficultyMultiplier = 6,
				scale = 4,
				["x"] = 406.55,
				["y"] = -983.41,
				["z"] = 28.49
			},
            
        },
    },

}
