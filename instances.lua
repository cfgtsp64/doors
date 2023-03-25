local u2_new =        UDim2.new;
local u2_fromScale =  UDim2.fromScale;
local u2_fromOffset = UDim2.fromOffset;
local c3_fromRGB =    Color3.fromRGB;
local httpService =   game:GetService("HttpService");

return {
	mainframe = {
		Type =                   "Frame",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "g",
		Position =               u2_fromScale(0, 0),
		Size =                   u2_fromOffset(g.AbsoluteSize.X, g.AbsoluteSize.Y),
		BackgroundTransparency = 1,
		Visible =                true,
	};

	main = {
		Type =             "Frame",
		Name =             httpService:GenerateGUID(false),
		Parent =           "mainframe",
		Position =         position or scaleToOffset(g, u2_fromScale(0.25, 0.25)),
		Size =             u2_fromOffset(525, 261),
		BackgroundColor3 = c3_fromRGB(6, 13, 26),
		BorderSizePixel =  0,
		Visible =          visible,
	};
	
	sbl = {
		Type =                   "Frame",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "main",
		Size =                   u2_fromOffset(7, 7),
		Position =               u2_fromOffset(0, 243),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
	};
	
	sbr = {
		Type =                   "Frame",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "main",
		Size =                   u2_fromOffset(7, 7),
		Position =               u2_fromOffset(518, 243),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
	};

	topbar = {
		Type =             "Frame",
		Name =             httpService:GenerateGUID(false),
		Parent =           "main",
		Size =             u2_fromOffset(525, 27),
		BackgroundColor3 = c3_fromRGB(18, 41, 85),
		BorderSizePixel =  0,
	};

	ui = {
		Type =                   "Frame",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "main",
		Size =                   u2_fromOffset(525, 233),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
	};

	title = {
		Type =                   "TextBox",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "topbar",
		Position =               u2_fromOffset(10, 0),
		Size =                   u2_fromOffset(488, 27),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
		Font =                   Enum.Font.Roboto,
		Text =                   title,
		TextSize =               24,
		TextColor3 =             c3_fromRGB(255, 255, 255),
		TextXAlignment =         Enum.TextXAlignment.Left,
	};

	closeButton = {
		Type =                   "ImageButton",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "topbar",
		Position =               u2_fromOffset(497, 0),
		Size =                   u2_fromOffset(27, 27),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
		Image =                  "rbxassetid://10002373478",
		ImageColor3 =            c3_fromRGB(255, 0, 0),
	};

	dragButton = {
		Type =                   "TextButton",
		Name =                   httpService:GenerateGUID(false),
		Parent =                 "topbar",
		Position =               u2_fromOffset(0, 0),
		Size =                   u2_fromOffset(493, 27),
		BackgroundTransparency = 1,
		BorderSizePixel =        0,
		Text =                   "",
	};
}
