-- Title: TouchAndReact
-- Name: Clara Mackay
-- Course: ICS2O/3C
-- This program displays a button tha twhen I click on it 
-- changes colour and displays text and another object.

-- set background colour
display.setDefault ("background", 0/255, 120/255, 254/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2 
redButton.isVisible = false

--create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (223/255, 31/255, 19/255)
textObject.isVisible = false

local checkmark = display.newImageRect("Images/checkmark.png", 198, 96)
checkmark.x = display.contentWidth/4
checkmark.y = display.contentHeight/2
checkmark.isVisible = false

-- Fuction: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: whern blue button is clicked, it will make the text appear with the 
--red button, and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true 
		textObject.isVisible = true
		checkmark.isVisible = true
	end	

	if (touch.phase == "ended") then 
		blueButton.isVisible = true 
		redButton.isVisible = false 
		textObject.isVisible = false
		checkmark.isVisible = false
	end	
end	

-- Fuction: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: whern blue button is clicked, it will make the text appear with the 
--red button, and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = false
		blueButton.isVisible = true 
		textObject.isVisible = false
		checkmark.isVisible = false

	end	

	if (touch.phase == "ended") then 
		redButton.isVisible = true 
		blueButton.isVisible = false 
		textObject.isVisible = true
		checkmark.isVisible = true
	end	
end	

-- add the respective listeners to each object 
blueButton:addEventListener("touch", BlueButtonListener)












