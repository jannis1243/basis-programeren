--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

sleuteljezus = false;

function story(aName)
	if(aName == "start") then
		CLS()
		setBackground("voorkant.JPG")
		createButton("church", "Ga naar de kerk")
		createTextfield("Wat is dit? een afgelegen kerk?")
	end
	if(aName == "church")then	
		playSound("foeties.wav")
		setBackground("kerktour.JPG")
		CLS()
		createTextfield("Je bent naar binnen gegaan maar waar ga je nu naartoe")
		createButton("mafkamer","slaapkamers")
	    createButton("heilig","gebed ruimte")
	end
	if(aName == "heilig")then
		CLS()
		createTextfield("Het is wel heel leeg hier,je ziet wel een grafksist aan het einde van de gang")
		createButton("church", "Ga weer terug naar het begin")
		createButton("kist","Naar de kist toe")
	end
	if(aName == "kist") then
		CLS()
		if(sleuteljezus == true) then
			setBackground("kist dicht.JPG")
			createTextfield("Er zit een slot op de kist wat nu?")
			createButton("church", "Terug naar het begin")
			createButton("open", "Kist open maken")
		else
			setBackground("kist dicht.JPG")
			createTextfield("Er zit een slot op de kist wat nu?")
			createButton("church", "Terug naar het begin")
			createButton("kannietopen", "Kist open maken")
		end
	end
	if(aName == "open") then
		CLS()
		setBackground("einde.PNG")
		createTextfield("Het is je gelukt! Jezus is bevrijd.")
		createButton("exit", "Ga naar de hemel met Jezus")
	end
	if(aName == "kannietopen") then
		CLS()
		createTextfield("hm.. hij gaat niet open, Zo te zien heeft het een sluetel nodig.")
		createButton("church", "terug naar het begin")
		createButton("boe", "verder proberen open te maken")
	end
	if(aName == "boe")then
		CLS()
		setBackground("holle gijs.JPG")
		createTextfield("oei toen was je dood door holle bolle gijs")
		createButton("exit", "doei doei")
	end

	if(aName == "mafkamer") then
		CLS()
		setBackground("mafkamer.JPG")
		createTextfield("Het lijkt erop dat er een lijk op een bed ligt...")
		createButton("church", "Ga weer terug naar het begin.")
		createButton("mafkamers", "Naar het lijk toe")
	end 
	if(aName == "mafkamers") then
		CLS()
		createTextfield("Hij heeft een ketting met een sleutel om zijn nek.")
		createButton("church", "Ga terug naar het begin")
		createButton("leik", "Pak de sleutel van zijn nek.")
	end
	if(aName == "leik") then
		CLS()
		setBackground("sleutels.JPG")
		createTextfield("Je hebt de sleutel gepakt")
		sleuteljezus = true;
		createButton("church", "Ga weer terug naar het begin")
	end

	if(aName == "exit") then
		exitGame();
	end
end