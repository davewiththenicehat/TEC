<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
	<TriggerPackage>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>generic_mapper</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName>generic_mapper</packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>onNewLine Trigger</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>raiseEvent("onNewLine")</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>4</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Tab Trigger</name>
				<script>local text = line
local pos = selectString("\t",1)
while pos ~= -1 do
	replace(string.rep(" ",8 - math.fmod(pos,8)))
	pos = selectString("\t",1)
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>\t</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>English Trigger Group</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>English Exits Trigger</name>
					<script>raiseEvent("onNewRoom",matches[2] or "")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\s*\[\s*[Ee]xits:\s*(.*)\]</string>
						<string>^\s*There (?:is|are) \w+ (?:visible|obvious) exit[s]?:\s*(.*)</string>
						<string>^\[?\s*(?:[Vv]isible|[Oo]bvious) (?:[Pp]ath|[Ee]xit)[s]?(?: is| are)?:?\s*(.*)\]?</string>
						<string>^\s*You see[\w\s]* exit[s]? leading (.*)</string>
						<string>Exits:\s*(.*)</string>
						<string>There are no obvious exits.</string>
						<string>^\s*The (?:only )?obvious exit[s]? (?:is|are):? (.*)</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>2</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>English Failed Move Trigger</name>
					<script>raiseEvent("onMoveFail")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(?:Alas, )?[Yy]ou can(?:no|')t (?:go|move) .*$</string>
						<string>^The .+ (?:is|seems to be) closed.$</string>
						<string>.+ (?:is not going to|will not) let you pass.$</string>
						<string>^That exit is blocked.$</string>
						<string>^You are blocked by .*$</string>
						<string>^There is no exit in that direction.$</string>
						<string>^The .* is locked.$</string>
						<string>^Alas, you cannot go that way\.\.\.$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>English Vision Fail Trigger</name>
					<script>raiseEvent("onVisionFail")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^It is pitch black...</string>
						<string>^It(?:'s| is) too dark</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>English Forced Move Trigger</name>
					<script>raiseEvent("onForcedMove",matches[2])</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^Carefully getting your bearings, you set off (\w+) toward your goal.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>English Multi-Line Exits Trigger</name>
					<script>map.prompt.exits = ""</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>1</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^Visible Exits:</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Exit Line Trigger</name>
						<script>map.prompt.exits = map.prompt.exits .. ", " .. string.trim(matches[2])
setTriggerStayOpen("Multi-Line Exits Trigger",1)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^([\w\s]+)\s+: [\w\s]+</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Russian Trigger Group</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Russian Exits Trigger</name>
					<script>raiseEvent("onNewRoom",matches[2] or "")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\s*\[\s*Выходы:\s*(.*)\]</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Russian Failed Move Trigger</name>
					<script>raiseEvent("onMoveFail")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Извини, но ты не можешь туда идти.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Russion Vision Fail Trigger</name>
					<script>raiseEvent("onVisionFail")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Здесь слишком темно ...</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Chinese Trigger Group</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Chinese Exits Trigger</name>
					<script>raiseEvent("onNewRoom",matches[2] or "")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\s*这里明显的方向有 (.*)。</string>
						<string>^\s*这里明显的出口有 (.*)。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Chinese Failed Movement Trigger</name>
					<script>raiseEvent("onMoveFail")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你又渴又饿，浑身无力，根本就走不动路。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>textfilters</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName>textfilters</packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Text Filters</name>
				<script>--!!!!!!!!!!!!!!!!!!READ BEFORE CHANGING FILTER CODE!!!!!!!!!!!!!!!!!!!!!
--Needed because TEC does not support GMCP or MSDP
--so TEC outputs health bar, compass and other gui elements
--over text with telnet...

--ORDER OF THESE ITEMS ARE IMPORTANT!!!
--These are intended to be in an order that will allow for
--optimal performance.
--I have placed items that delete the main line first
--This removes the number of color filter triggers that occurs.
--No we are never going to clean code enough to free up for the use of a mapping system.
--Let's try any way!</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>RemoveFromScreen</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>/parch2.jpg</string>
						<string>/alloff.jpg</string>
						<string>/macrobar.jpg</string>
						<string>Loading toolbar graphics; please wait...</string>
						<string>/IntroScreen.jpg</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Compass</name>
					<script>--Direction filters are:
--N /\/ImageAt:downbar:65:12:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--NE /\/ImageAt:downbar:93:23:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--E /\/ImageAt:downbar:103:48:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--SE /\/ImageAt:downbar:93:74:http://tec.skotos.net:80/unlit.jpg or lit.jgp
--S /\/ImageAt:downbar:65:82:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--SW /\/ImageAt:downbar:37:75:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--W /\/ImageAt:downbar:27:48:http://tec.skotos.net:80/unlit.jpg or lit.jpg
--NW /\/ImageAt:downbar:37:23:http://tec.skotos.net:80/unlit.jpg or lit.jpg

--/\/ImageAt:downbar: tells older clients this image should go in downbar.
--										Probably just a bar down at the botom of the window.
--:65:12: was most likely the pixel position of the compas on the client
--				when this was added to the game. I think the java client.
--http://tec.skotos.net:80 just showing the old client where the picture was
--lit.jpg at the end means there is a room in that direction, light the compass
--unlit.jgp at the end means there is NOT a room in that direction, do not light the compass</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>NortWest</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("nw") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("nw") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:37:23</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>West</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("w") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("w") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:27:48</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>SouthWest</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("sw") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("sw") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:37:75</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>South</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("s") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("s") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:65:82</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>SouthEast</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("se") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("se") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:93:74</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>East</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("e") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("e") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:103:48</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>NorthEast</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("ne") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("ne") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:93:23</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>North</name>
						<script>if string.ends(line, "unlit.jpg") then --if line ends in unlit nothing in that direction
	compass.unlit("n") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "lit.jpg") then--if line ends in lit room in that direction, show on compas
		compass.lit("n") --Change compas image in ("direction) function is in scripts/gui/compassbar/compass.resize
		deleteLine() --delete the current line so crap doesn't show on screen
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:65:12</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Status Bar</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Health bar</name>
						<script>if string.ends(line, "bar1_100.jpg") then
	hpbar:setValue(100,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_87.jpg") then
	hpbar:setValue(87,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_75.jpg") then
	hpbar:setValue(75,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_62.jpg") then
	hpbar:setValue(62,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_50.jpg") then
	hpbar:setValue(50,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_37.jpg") then
	hpbar:setValue(37,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_25.jpg") then
	hpbar:setValue(25,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_12.jpg") then
	hpbar:setValue(12,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar1_0.jpg") then
	hpbar:setValue(3,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
	elseif string.ends(line, "bar1_off.jpg") then
	hpbar:setValue(0,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
end --end if health is 100 check</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:415:12</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Fatigue bar</name>
						<script>if string.ends(line, "bar2_100.jpg") then
	fatiguebar:setValue(100,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_87.jpg") then
	fatiguebar:setValue(87,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_75.jpg") then
	fatiguebar:setValue(75,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_62.jpg") then
	fatiguebar:setValue(62,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_50.jpg") then
	fatiguebar:setValue(50,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_37.jpg") then
	fatiguebar:setValue(37,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_25.jpg") then
	fatiguebar:setValue(25,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_12.jpg") then
	fatiguebar:setValue(12,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_0.jpg") then
	fatiguebar:setValue(3,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar2_off.jpg") then
	fatiguebar:setValue(0,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
end --end if health is 100 check</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:436:12</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Encumbrance Bar</name>
						<script>if string.ends(line, "bar3_100.jpg") then
	encumbrancebar:setValue(100,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_87.jpg") then
	encumbrancebar:setValue(87,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_75.jpg") then
	encumbrancebar:setValue(75,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_62.jpg") then
	encumbrancebar:setValue(62,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_50.jpg") then
	encumbrancebar:setValue(50,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_37.jpg") then
	encumbrancebar:setValue(37,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_25.jpg") then
	encumbrancebar:setValue(25,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_12.jpg") then
	encumbrancebar:setValue(12,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_0.jpg") then
	encumbrancebar:setValue(3,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar3_off.jpg") then
	encumbrancebar:setValue(0,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
end --end if health is 100 check</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:457:12</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>Hunger bar</name>
						<script>if string.ends(line, "bar4_100.jpg") then
	hungerbar:setValue(100,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_87.jpg") then
	hungerbar:setValue(87,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_75.jpg") then
	hungerbar:setValue(75,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_62.jpg") then
	hungerbar:setValue(62,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_50.jpg") then
	hungerbar:setValue(50,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_37.jpg") then
	hungerbar:setValue(37,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_25.jpg") then
	hungerbar:setValue(25,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_12.jpg") then
	hungerbar:setValue(12,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_0.jpg") then
	hungerbar:setValue(3,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
elseif string.ends(line, "bar4_off.jpg") then
	hungerbar:setValue(0,100) --set bar on screen
	deleteLine() --delete the current line so crap doesn't show on screen
end --end if health is 100 check</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>/\/ImageAt:downbar:478:12</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>SideBar</name>
					<script>deleteLine()
--/\/TextAt:sidebar:5:17:Tip of the Day
--/\/TextAt:sidebar:5:29:
--/\/TextAt:sidebar:5:41:The Divortium Auxilii
--/\/TextAt:sidebar:5:53:greets and assists
--/\/TextAt:sidebar:5:65:newcomers to the City.
--/\/TextAt:sidebar:5:77:Members of the Auxilii
--/\/TextAt:sidebar:5:89:wear a triangular
--/\/TextAt:sidebar:5:101:copper medallion.
--/\/ImageAt:sidebar:0:0:http://tec.skotos.net:80/parch2.jpg
--/\/ImageAt:sidebar:0:300:http://tec.skotos.net:80/parch2.jpg

--/\/ImageAt:sidebar:0:0:http://tec.skotos.net:80/parch2.jpg
--/\/TextAt:sidebar:5:17:TEC Geography Tip
--/\/TextAt:sidebar:5:29: 
--/\/TextAt:sidebar:5:41:At night, the Iridine
--/\/TextAt:sidebar:5:53:alleys become unsafe,
--/\/TextAt:sidebar:5:65:as thugs and brutes 
--/\/TextAt:sidebar:5:77:can be found on the
--/\/TextAt:sidebar:5:89:prowl, stalking 
--/\/TextAt:sidebar:5:101:citizens</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>/\/TextAt:sidebar</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>2</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>sky</name>
					<script>--good way of telling time of day is old images box.
--These images were a skybox. Showed an image of
--a sunny day, cloudy day, night so on.

--in the future these will be used to convey time of day.
--Maybe a background color. For know delete know sky images
deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>/\/ImageAt:downbar:128:0:http://tec.skotos.net:80/e1100000.jpg</string>
						<string>/\/ImageAt:downbar:128:0:http://tec.skotos.net:80/e1111111.jpg</string>
						<string>/\/ImageAt:downbar:128:0:http://tec.skotos.net:80/e0001000.jpg</string>
						<string>/\/ImageAt:downbar:128:0:http://tec.skotos.net:80/e0001101.jpg</string>
						<string>/\/ImageAt:downbar:128:0:http://tec.skotos.net:80/e1000000.jpg</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
						<integer>3</integer>
						<integer>3</integer>
						<integer>3</integer>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>ColorFilter</name>
					<script>--code here for
--if background black ci=0,0,0 make it ci=255,255,255

--Code provided by s/Mud/Game on mudletdiscord. THANK YOU s/Mud/Game!!!!

--string.gsub referece: https://wiki.mudlet.org/w/Manual:String_Functions
--string.gsub('The whole string to modify', 'what to replace in the string', 'what to replace it with')
--%1 is whatever is inside of the ()
--if you get ci=100,0,100 %1 is 100,0,100
--so it's replacing ci=100,0,100 with &lt;100,0,100&gt;
local replacement = string.gsub(line, 'ci=(%d+,%d+,%d+)', '&lt;%1&gt;')
--So now all ci=#,#,# have turned into &lt;#,#,#&gt; in replacement this is a standard format lua can work with.

selectCurrentLine() --select the current 'main' line. Including line breaks
--So dreplace turns &lt;colorcode&gt; into colors
--dreplace just does what decho would do, but deletes the selected text first. :wink:
--in fact, it actually calls decho
dreplace(replacement)
echo("\n")
echo(line)
echo("\n\n")

--sets the word wrap on the main window to 10
--setWindowWrap("main", 10)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>ci=</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>ColorWhiteBackground</name>
					<script>--code here if blackground is black
--do nothing
--else do below

--Turn the background of the current line to setings default.
--needed because dreplace turns the background black.
selectCurrentLine()
bg('white')</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Login Handshake</name>
					<script>--This game requires a handshake to get the real login tempPromptTrigger
--This is that handshake.
send([[/\/Connect: n/a!!n]],false)

--opens the voting window at login
openUrl("http://www.topmudsites.com/vote-scarlatc.html")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>Login: </string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>communications</name>
			<script>


--Below was a test, remeber text auto wraps in miniconsole if you set autoWrap = true
--communicationsAll:echo("Really loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong line")

--if (((&lt; isincs %filtered) &amp;&amp; (think isin %filtered)) || (, " isin %filtered)) { 
--    ;if last socket read was a though set it to yes. For multilined thoughts.
--    set %lastsocketthought yes
--    ;Put the thought to the think window
--    /aline -p @communications $replace(%filtered,$chr(32),$chr(160))
--    ;I think puts thoughts into the listbox
--    ;works    /aline -lp @TEC $replace(%filtered,$chr(32),$chr(160))
--    ;/iline -lp @TEC 1 %filtered
--    ;failed attempt at wrap
--    ;/aline -lp @TEC $wrap($replace(%filtered,$chr(32),$chr(160)),verdant,-1,22,0)
--    ;If &gt; is in the thought that it likely means the end of the thought. 
--    if ( (&gt; isin %filtered) || (?" isin %filtered) || (." isin %filtered) || (!" isin %filtered) || (]" isin %filtered)) { set %lastsocketthought no }
--  } ; end if thinks aloud is in filtered
--  ;if thinks aloud is not in check if last socket was a thought
--  ;if it was, put it to screen, see if the thought ends. Repeat as needed.
--  else { 
--    if (%lastsocketthought == yes) { 
--      ;Put the thought to the think window
--      /aline -p @communications $replace(%filtered,$chr(32),$chr(160))
--      ;I think puts thoughts into the listbox
--      ;works      /aline -lp @TEC $replace(%filtered,$chr(32),$chr(160))
--      ;/iline -lp @TEC 1 %filtered
--      ;If &gt; is in the thought that it likely means the end of the thought. 
--      if ( (&gt; isin %filtered) || (?" isin %filtered) || (." isin %filtered) || (!" isin %filtered) || (]" isin %filtered)) { set %lastsocketthought no }
--    } ; end if lastsocketthough is yes
--  } ; end else thinks aloud is in filtered
</script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>ThoughtFound</name>
				<script>--Moving this below thoughts trigger will cause first line to repeat

--This trigger allows support for multi line thoughts

selectCurrentLine() --Selects ENTIRE line including line breaks.
copy() --Copies CURRENT selection to clipboard
appendBuffer("communicationsAll") --paste copied text to miniConsole
--later appendBuffter("communicationsThoughts")

--If the end of the thought is found, turn off thoughtFound so corrisponding
--trigger will not occur.
if string.ends(line, "&gt;") then thoughtFound = false end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>return thoughtFound</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>4</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Thoughts</name>
				<script>--This trigger puts thoughts to the  communicationsAll window 
--and to thoughts window.
--Support for multi line though is follow up with ThoughtFound
--ci=0,32,225&lt;name thinks aloud

selectCurrentLine() --Selects ENTIRE line including line breaks.
copy() --Copies CURRENT selection to clipboard
appendBuffer("communicationsAll") --paste copied text to miniConsole
--later appendBuffter("communicationsThoughts") --paste copied text to miniConsole
thoughtFound = true --We need to run this again. this variable will trigger SpeechFound

--If the end of the thought is found, turn off thoughtFound so corrisponding
--trigger will not occur.
if string.ends(line, "&gt;") then thoughtFound = false end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>&lt;(\w+) thinks aloud:</string>
					<string>&lt;You think aloud:</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
					<integer>2</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Speech Found</name>
				<script>--Moving this below speech trigger will cause first line to repeat

--This trigger allows support for multi line speech or declrations

selectCurrentLine() --Selects ENTIRE line including line breaks.
copy() --Copies CURRENT selection to clipboard
appendBuffer("communicationsAll") --paste copied text to miniConsole

--If the end of the speech is found, turn off speechFound so corrisponding
--trigger will not occur.
if string.ends(line, "\"") then speechFound = false end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>return speechFound</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>4</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>speech</name>
				<script>--This trigger puts speech to the  communicationsAll window 
--and to speech window.
--Support for multi line though is follow up with SpeechFound trigger

selectCurrentLine() --Selects ENTIRE line including line breaks.
copy() --Copies CURRENT selection to clipboard
appendBuffer("communicationsAll") --paste copied text to miniConsole
--later appendBuffter("communicationsThoughts") --paste copied text to miniConsole
speechFound = true --We need to run this again. this variable will trigger SpeechFound

--If the end of the speech is found, turn off speechFound so corrisponding
--trigger will not occur.
if string.ends(line, "\"") then speechFound = false end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>, "</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
	</TriggerPackage>
	<TimerPackage />
	<AliasPackage>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>generic_mapper</name>
			<script></script>
			<command></command>
			<packageName>generic_mapper</packageName>
			<regex></regex>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Setup Aliases</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Map Show Alias</name>
					<script>map.showMap()</script>
					<command></command>
					<packageName></packageName>
					<regex>^map show$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Find Map Prompt Alias</name>
					<script>map.find_prompt()</script>
					<command></command>
					<packageName></packageName>
					<regex>^find prompt$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Map Prompt Alias</name>
					<script>-- USE PATTERNS FOR STRING.GSUB
if matches[2] then
  map.make_prompt_pattern(matches[2])
else
  display(map.save.prompt_pattern)
end</script>
					<command></command>
					<packageName></packageName>
					<regex>^map prompt(?: (.*))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Map Ignore Alias</name>
					<script>-- USE PATTERNS FOR STRING.GSUB
if matches[2] then
  map.make_ignore_pattern(matches[2])
else
  display(map.save.ignore_patterns)
end</script>
					<command></command>
					<packageName></packageName>
					<regex>^map ignore(?: (.*))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Debug Alias</name>
					<script>map.configs.debug = not map.configs.debug
map.echo("Map debug set to: " .. (map.configs.debug and "on" or "off"))</script>
					<command></command>
					<packageName></packageName>
					<regex>^map debug$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Update Alias</name>
					<script>map.updateVersion()</script>
					<command></command>
					<packageName></packageName>
					<regex>^map update$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Config Alias</name>
					<script>-- adjust pattern to allow no argument, if no argument show general help about configs
if not matches[2] then
	cecho(map.help.configs)
else
  local startStr, endStr = string.match(matches[2],"(.*) ([%w%.]+)")
  local vals = {'on', 'off', 'true', 'false'}
  local modes = {'simple','normal','complex'}
  if (table.contains(vals, endStr) or tonumber(endStr)) or (startStr == "mode" and table.contains(modes, endStr)) then
  	map.setConfigs(startStr, endStr)
  else
  	map.setConfigs(matches[2])
  end
end</script>
					<command></command>
					<packageName></packageName>
					<regex>^map config(?: ([\w\s\.]+))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Window Config Alias</name>
					<script>map.setConfigs("map_window",matches[3],matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map window (x|y|w|h|origin|shown)(?: ([\w%]+))?</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Translate Config Alias</name>
					<script>map.setConfigs("lang_dirs", {matches[3], matches[4]}, matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map translate (\w+) (\w+) (\w+)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Information Aliases</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Map Quick Start Alias</name>
					<script>map.show_help("quick_start")</script>
					<command></command>
					<packageName></packageName>
					<regex>^map basics$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Help Alias</name>
					<script>map.show_help(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map help(?: (.*))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Rooms Alias</name>
					<script>map.echoRoomList(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map rooms (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Areas Alias</name>
					<script>map.echoAreaList()</script>
					<command></command>
					<packageName></packageName>
					<regex>^map areas$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Regular Use Aliases</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Map Me Alias</name>
					<script>map.find_me(nil, nil, nil, true)</script>
					<command></command>
					<packageName></packageName>
					<regex>^map me$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Path Alias</name>
					<script>map.find_path(matches[2],matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map path ([^;]+)(?:\s*;\s*(.+))?</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Recall Alias</name>
					<script>map.set_recall()</script>
					<command></command>
					<packageName></packageName>
					<regex>^map recall$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Character Alias</name>
					<script>map.character = matches[2]</script>
					<command></command>
					<packageName></packageName>
					<regex>^map character (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Map Stop Alias</name>
					<script>raiseEvent("mapStop")</script>
					<command></command>
					<packageName></packageName>
					<regex>^map stop$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Map Creation Aliases</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Set Room Area Alias</name>
					<script>map.set_area(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^set area (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Start Mapping Alias</name>
					<script>map.start_mapping(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^start mapping(?: (.*))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Stop Mapping Alias</name>
					<script>map.stop_mapping()</script>
					<command></command>
					<packageName></packageName>
					<regex>^stop mapping$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Shift Room Alias</name>
					<script>map.shift_room(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^shift (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Add Portal Alias</name>
					<script>map.set_portal(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^add portal (.*)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Clear Moves Alias</name>
					<script>map.clear_moves()</script>
					<command></command>
					<packageName></packageName>
					<regex>^clear moves$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Add Door Alias</name>
					<script>map.set_door(matches[2],matches[3],matches[4])</script>
					<command></command>
					<packageName></packageName>
					<regex>^add door (\w+)(?: (none|open|closed|locked))?(?: (yes|no))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Merge Rooms Alias</name>
					<script>map.merge_rooms()</script>
					<command></command>
					<packageName></packageName>
					<regex>^merge rooms$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Map Mode Alias</name>
					<script>map.set_mode(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map mode (\w+)$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Set Room Exit Alias</name>
					<script>map.set_exit(matches[2],matches[3])</script>
					<command></command>
					<packageName></packageName>
					<regex>^set exit (.+) (\d+)</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>Map Sharing Aliases</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Save Map Alias</name>
					<script>saveMap(getMudletHomeDir() .. "/map.dat")</script>
					<command></command>
					<packageName></packageName>
					<regex>^map save$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Load Map Alias</name>
					<script>map.load_map(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map load(?: (.*))?$</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Import Map Area Alias</name>
					<script>map.import_area(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map import (.*)</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>Export Map Area Alias</name>
					<script>map.export_area(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^map export (.*)</regex>
				</Alias>
			</AliasGroup>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>send-text-to-all-games</name>
			<script></script>
			<command></command>
			<packageName>send-text-to-all-games</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>Send text to all games with :</name>
				<script>-- prefix with : to send text or run an alias in all open profiles that have this script installed
-- for example - :hi or :follow bob
local matchedText = matches[2]
expandAlias(matchedText)
raiseGlobalEvent("sysSendAllProfiles", matchedText)
</script>
				<command></command>
				<packageName></packageName>
				<regex>^:(.*)$</regex>
			</Alias>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>deleteOldProfiles</name>
			<script></script>
			<command></command>
			<packageName>deleteOldProfiles</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>delete old profiles</name>
				<script>deleteOldProfiles(matches[3], matches[2]=="maps")

--Syntax examples: "delete old profiles"  -&gt; deletes profiles older than 31 days
--					"delete old maps 10"	-&gt; deletes maps older than 10 days</script>
				<command></command>
				<packageName></packageName>
				<regex>^delete old (profiles|maps)(?: (\d+))?$</regex>
			</Alias>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>echo</name>
			<script></script>
			<command></command>
			<packageName>echo</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>`echo</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
feedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`echo (.+)</regex>
			</Alias>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>Profile</name>
			<script></script>
			<command></command>
			<packageName>Profile</packageName>
			<regex></regex>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>generic_mapper</name>
				<script></script>
				<command></command>
				<packageName>generic_mapper</packageName>
				<regex></regex>
				<AliasGroup isActive="yes" isFolder="yes">
					<name>Setup Aliases</name>
					<script></script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
					<Alias isActive="yes" isFolder="no">
						<name>Map Show Alias</name>
						<script>map.showMap()</script>
						<command></command>
						<packageName></packageName>
						<regex>^map show$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Find Map Prompt Alias</name>
						<script>map.find_prompt()</script>
						<command></command>
						<packageName></packageName>
						<regex>^find prompt$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Map Prompt Alias</name>
						<script>-- USE PATTERNS FOR STRING.GSUB
if matches[2] then
  map.make_prompt_pattern(matches[2])
else
  display(map.save.prompt_pattern)
end</script>
						<command></command>
						<packageName></packageName>
						<regex>^map prompt(?: (.*))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Map Ignore Alias</name>
						<script>-- USE PATTERNS FOR STRING.GSUB
if matches[2] then
  map.make_ignore_pattern(matches[2])
else
  display(map.save.ignore_patterns)
end</script>
						<command></command>
						<packageName></packageName>
						<regex>^map ignore(?: (.*))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Debug Alias</name>
						<script>map.configs.debug = not map.configs.debug
map.echo("Map debug set to: " .. (map.configs.debug and "on" or "off"))</script>
						<command></command>
						<packageName></packageName>
						<regex>^map debug$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Update Alias</name>
						<script>map.updateVersion()</script>
						<command></command>
						<packageName></packageName>
						<regex>^map update$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Config Alias</name>
						<script>-- adjust pattern to allow no argument, if no argument show general help about configs
if not matches[2] then
	cecho(map.help.configs)
else
  local startStr, endStr = string.match(matches[2],"(.*) ([%w%.]+)")
  local vals = {'on', 'off', 'true', 'false'}
  local modes = {'simple','normal','complex'}
  if (table.contains(vals, endStr) or tonumber(endStr)) or (startStr == "mode" and table.contains(modes, endStr)) then
  	map.setConfigs(startStr, endStr)
  else
  	map.setConfigs(matches[2])
  end
end</script>
						<command></command>
						<packageName></packageName>
						<regex>^map config(?: ([\w\s\.]+))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Window Config Alias</name>
						<script>map.setConfigs("map_window",matches[3],matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map window (x|y|w|h|origin|shown)(?: ([\w%]+))?</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Translate Config Alias</name>
						<script>map.setConfigs("lang_dirs", {matches[3], matches[4]}, matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map translate (\w+) (\w+) (\w+)$</regex>
					</Alias>
				</AliasGroup>
				<AliasGroup isActive="yes" isFolder="yes">
					<name>Information Aliases</name>
					<script></script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
					<Alias isActive="yes" isFolder="no">
						<name>Map Quick Start Alias</name>
						<script>map.show_help("quick_start")</script>
						<command></command>
						<packageName></packageName>
						<regex>^map basics$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Help Alias</name>
						<script>map.show_help(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map help(?: (.*))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Rooms Alias</name>
						<script>map.echoRoomList(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map rooms (.*)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Areas Alias</name>
						<script>map.echoAreaList()</script>
						<command></command>
						<packageName></packageName>
						<regex>^map areas$</regex>
					</Alias>
				</AliasGroup>
				<AliasGroup isActive="yes" isFolder="yes">
					<name>Regular Use Aliases</name>
					<script></script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
					<Alias isActive="yes" isFolder="no">
						<name>Map Me Alias</name>
						<script>map.find_me(nil, nil, nil, true)</script>
						<command></command>
						<packageName></packageName>
						<regex>^map me$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Path Alias</name>
						<script>map.find_path(matches[2],matches[3])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map path ([^;]+)(?:\s*;\s*(.+))?</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Recall Alias</name>
						<script>map.set_recall()</script>
						<command></command>
						<packageName></packageName>
						<regex>^map recall$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Character Alias</name>
						<script>map.character = matches[2]</script>
						<command></command>
						<packageName></packageName>
						<regex>^map character (.*)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Map Stop Alias</name>
						<script>raiseEvent("mapStop")</script>
						<command></command>
						<packageName></packageName>
						<regex>^map stop$</regex>
					</Alias>
				</AliasGroup>
				<AliasGroup isActive="yes" isFolder="yes">
					<name>Map Creation Aliases</name>
					<script></script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
					<Alias isActive="yes" isFolder="no">
						<name>Set Room Area Alias</name>
						<script>map.set_area(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^set area (.*)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Start Mapping Alias</name>
						<script>map.start_mapping(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^start mapping(?: (.*))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Stop Mapping Alias</name>
						<script>map.stop_mapping()</script>
						<command></command>
						<packageName></packageName>
						<regex>^stop mapping$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Shift Room Alias</name>
						<script>map.shift_room(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^shift (.*)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Add Portal Alias</name>
						<script>map.set_portal(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^add portal (.*)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Clear Moves Alias</name>
						<script>map.clear_moves()</script>
						<command></command>
						<packageName></packageName>
						<regex>^clear moves$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Add Door Alias</name>
						<script>map.set_door(matches[2],matches[3],matches[4])</script>
						<command></command>
						<packageName></packageName>
						<regex>^add door (\w+)(?: (none|open|closed|locked))?(?: (yes|no))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Merge Rooms Alias</name>
						<script>map.merge_rooms()</script>
						<command></command>
						<packageName></packageName>
						<regex>^merge rooms$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Map Mode Alias</name>
						<script>map.set_mode(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map mode (\w+)$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Set Room Exit Alias</name>
						<script>map.set_exit(matches[2],matches[3])</script>
						<command></command>
						<packageName></packageName>
						<regex>^set exit (.+) (\d+)</regex>
					</Alias>
				</AliasGroup>
				<AliasGroup isActive="yes" isFolder="yes">
					<name>Map Sharing Aliases</name>
					<script></script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
					<Alias isActive="yes" isFolder="no">
						<name>Save Map Alias</name>
						<script>saveMap(getMudletHomeDir() .. "/map.dat")</script>
						<command></command>
						<packageName></packageName>
						<regex>^map save$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Load Map Alias</name>
						<script>map.load_map(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map load(?: (.*))?$</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Import Map Area Alias</name>
						<script>map.import_area(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map import (.*)</regex>
					</Alias>
					<Alias isActive="yes" isFolder="no">
						<name>Export Map Area Alias</name>
						<script>map.export_area(matches[2])</script>
						<command></command>
						<packageName></packageName>
						<regex>^map export (.*)</regex>
					</Alias>
				</AliasGroup>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>deleteOldProfiles</name>
				<script></script>
				<command></command>
				<packageName>deleteOldProfiles</packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>delete old profiles</name>
					<script>deleteOldProfiles(matches[3], matches[2]=="maps")

--Syntax examples: "delete old profiles"  -&gt; deletes profiles older than 31 days
--					"delete old maps 10"	-&gt; deletes maps older than 10 days</script>
					<command></command>
					<packageName></packageName>
					<regex>^delete old (profiles|maps)(?: (\d+))?$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>echo</name>
				<script></script>
				<command></command>
				<packageName>echo</packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>`echo</name>
					<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
feedTriggers("\n" .. s .. "\n")
echo("\n")</script>
					<command></command>
					<packageName></packageName>
					<regex>`echo (.+)</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>run-lua-code-v4</name>
				<script></script>
				<command></command>
				<packageName>run-lua-code-v4</packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>run lua code</name>
					<script>local f, e = loadstring("return "..matches[2])
if not f then
  f, e = assert(loadstring(matches[2]))
end

local r =
  function(...)
    if not table.is_empty({...}) then
      display(...)
    end
  end
r(f())</script>
					<command></command>
					<packageName></packageName>
					<regex>^lua (.*)$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>send-text-to-all-games</name>
				<script></script>
				<command></command>
				<packageName>send-text-to-all-games</packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>Send text to all games with :</name>
					<script>-- prefix with : to send text or run an alias in all open profiles that have this script installed
-- for example - :hi or :follow bob
local matchedText = matches[2]
expandAlias(matchedText)
raiseGlobalEvent("sysSendAllProfiles", matchedText)
</script>
					<command></command>
					<packageName></packageName>
					<regex>^:(.*)$</regex>
				</Alias>
			</AliasGroup>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>TECCommandReplacement</name>
			<script></script>
			<command></command>
			<packageName></packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>stats</name>
				<script>echo("stats correctly replaced")
send("stats")
line = "Line was Replaced"</script>
				<command></command>
				<packageName></packageName>
				<regex>^stats</regex>
			</Alias>
		</AliasGroup>
	</AliasPackage>
	<ActionPackage />
	<ScriptPackage>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>generic_mapper</name>
			<packageName>generic_mapper</packageName>
			<script></script>
			<eventHandlerList />
			<Script isActive="yes" isFolder="no">
				<name>Map Script</name>
				<packageName></packageName>
				<script>-- Jor'Mox's Generic Map Script
-- 11/07/2018
local version = "2.0.15"

    -- look into options for non-standard door usage for speedwalk
    -- come up with aliases to set translations and custom exits, add appropriate help info

mudlet = mudlet or {}
mudlet.mapper_script = true
map = map or {}

map.help = {[[
    &lt;cyan&gt;Generic Map Script&lt;reset&gt;

    This script allows for semi-automatic mapping using the included triggers.
    While different games can have dramatically different ways of displaying
    information, some effort has been put into giving the script a wide range of
    potential patterns to look for, so that it can work with minimal effort in
    many cases. The script locates the room name by searching up from the
    detected exits line until a prompt is found or it runs out of text to
    search, clearing saved text each time a prompt is detected or a movement
    command is sent, with the room name being set to the last line of text
    found. An accurate prompt pattern is necessary for this to work well, and
    sometimes other text can end up being shown between the prompt and the room
    name, or on the same line as the room name, which can be handled by
    providing appropriate patterns telling the script to ignore that text. Below
    is an overview of the included commands and important events that this
    script uses to work. Additional information on each command or event is
    available in individual help files.

    &lt;cyan&gt;Fundamental Commands:&lt;reset&gt;
        These are commands used to get the mapper functional on a basic level

        &lt;link: show&gt;map show&lt;/link&gt; - Displays or hides a map window
        &lt;link: quick start&gt;map basics&lt;/link&gt; - Shows a quick-start guide with some basic information to
            help get the script working
        &lt;link: 1&gt;map help &lt;optional command name&gt;&lt;/link&gt; - Shows either this help file or the
            help file for the command given
        &lt;link: find prompt&gt;find prompt&lt;/link&gt; - Instructs the script to look for a prompt that matches
            a known pattern
        &lt;link: prompt&gt;map prompt&lt;/link&gt; - Provides a specific pattern to the script that matches
            your prompt, uses Lua string-library patterns
        &lt;link: ignore&gt;map ignore&lt;/link&gt; - Provides a specific pattern for the script to ignore,
            uses Lua string-library patterns
        &lt;link: debug&gt;map debug&lt;/link&gt; - Toggles on debug mode, in which extra messages are shown
            with the intent of assisting in troubleshooting getting the
            script setup
        &lt;link: me&gt;map me&lt;/link&gt; - Locates the user on the map, if possible
        &lt;link: path&gt;map path &lt;room name&gt; &lt;; optional area name&gt;&lt;/link&gt; - Finds a walking path to
            the named room, in the named area if specified
        &lt;link: character&gt;map character &lt;name&gt;&lt;/link&gt; - Sets a given name as the current character for
            the purposes of the script, used for different prompt patterns
            and recall locations
        &lt;link: recall&gt;map recall&lt;/link&gt; - Sets the current room as the recall location of the
            current character
        &lt;link: config&gt;map config &lt;configuration&gt; &lt;optional value&gt;&lt;/link&gt; - Sets or toggles the
            given configuration either turning it on or off, if no value is
            given, or sets it to the given value
        &lt;link: window&gt;map window &lt;configuration&gt; &lt;value&gt;&lt;/link&gt; - Sets the given configuration for
            the map window to the given value
        &lt;link: translate&gt;map translate &lt;english direction&gt; &lt;translated long direction&gt;&lt;/link&gt;
            &lt;link: translate&gt;&lt;translated short direction&gt;&lt;/link&gt; - Sets the provided translations for
            the given english direction word.

    &lt;cyan&gt;Mapping Commands:&lt;reset&gt;
        These are commands used in the process of actually creating a map

        &lt;link: start mapping&gt;start mapping &lt;optional area name&gt;&lt;/link&gt; - Starts adding content to the
            map, using either the area of the room the user is currently in,
            or the area name provided
        &lt;link: stop mapping&gt;stop mapping&lt;/link&gt; - Stops adding content to the map
        &lt;link: set area&gt;set area &lt;area name&gt;&lt;/link&gt; - Moves the current room to the named area
        &lt;link: mode&gt;map mode &lt;simple, normal, or complex&gt;&lt;/link&gt; - Sets the mapping mode
        &lt;link: add door&gt;add door &lt;direction&gt; &lt;optional door status&gt; &lt;optional one way&gt;&lt;/link&gt; -
            Creates a door in the given direction, with the given status
            (default closed), in both directions, unless a one-direction door
            is specified
        &lt;link: add portal&gt;add portal &lt;entry command&gt;&lt;/link&gt; - Creates a portal in the current room,
            using the given command for entry
        &lt;link: shift&gt;shift &lt;direction&gt;&lt;/link&gt; - Moves the current room on the map in the given
            direction
        &lt;link: merge rooms&gt;merge rooms&lt;/link&gt; - Combines overlapping rooms that have the same name into
            a single room
        &lt;link: clear moves&gt;clear moves&lt;/link&gt; - Clears the list of movement commands maintained by the
            script
        &lt;link: set exit&gt;set exit &lt;direction&gt; &lt;roomID&gt;&lt;/link&gt; - Creates a one-way exit in the given
            direction to the room with the specified roomID, can also be used
            with portals
        &lt;link: areas&gt;map areas&lt;/link&gt; - Shows a list of all area, with links to show a list of
            rooms in the area
        &lt;link: rooms&gt;map rooms &lt;area name&gt;&lt;/link&gt; - Shows a list of rooms in the named area

    &lt;cyan&gt;Sharing and Backup Commands:&lt;reset&gt;

        &lt;link: save&gt;map save&lt;/link&gt; - Creates a backup of the map
        &lt;link: load&gt;map load &lt;remote address&gt;&lt;/link&gt; - Loads a map backup, or a map file from a
            remote address
        &lt;link: export&gt;map export &lt;area name&gt;&lt;/link&gt; - Creates a file from the named area that can
            be shared
        &lt;link: import&gt;map import &lt;area name&gt;&lt;/link&gt; - Loads an area from a file

    &lt;cyan&gt;Mapping Events:&lt;reset&gt;
        These events are used by triggers to direct the script's behavior

        &lt;link: onNewRoom&gt;onNewRoom&lt;/link&gt; - Signals that a room has been detected, optional exits
            argument
        &lt;link: onMoveFail&gt;onMoveFail&lt;/link&gt; - Signals that an attempted move failed
        &lt;link: onForcedMove&gt;onForcedMove&lt;/link&gt; - Signals that the character moved without a command
            being entered, required direction argument
        &lt;link: onRandomMove&gt;onRandomMove&lt;/link&gt; - Signals that the character moved in an unknown
            direction without a command being entered
        &lt;link: onVisionFail&gt;onVisionFail&lt;/link&gt; - Signals that the character moved but some or all of
            the room information was not able to be gathered

    &lt;cyan&gt;Key Variables:&lt;reset&gt;
        These variables are used by the script to keep track of important
            information

        &lt;yellow&gt;map.prompt.room&lt;reset&gt; - Can be set to specify the room name
        &lt;yellow&gt;map.prompt.exits&lt;reset&gt; - Can be set to specify the room exits
        &lt;yellow&gt;map.character&lt;reset&gt; - Contains the current character name
        &lt;yellow&gt;map.save.recall&lt;reset&gt; - Contains a table of recall roomIDs for all
            characters
        &lt;yellow&gt;map.save.prompt_pattern&lt;reset&gt; - Contains a table of prompt patterns for all
            characters
        &lt;yellow&gt;map.save.ignore_patterns&lt;reset&gt; - Contains a table of patterns of text the
            script ignores
        &lt;yellow&gt;map.configs&lt;reset&gt; - Contains a number of different options that can be set
            to modify script behavior
        &lt;yellow&gt;map.currentRoom&lt;reset&gt; - Contains the roomID of the room your character is
            in, according to the script
        &lt;yellow&gt;map.currentName&lt;reset&gt; - Contains the name of the room your character is in,
            according to the script
        &lt;yellow&gt;map.currentExits&lt;reset&gt; - Contains a table of the exits of the room your
            character is in, according to the script
        &lt;yellow&gt;map.currentArea&lt;reset&gt; - Contains the areaID of the area your character is
            in, according to the script
]]}
map.help.save = [[
    &lt;cyan&gt;Map Save&lt;reset&gt;
        syntax: &lt;yellow&gt;map save&lt;reset&gt;

        This command creates a copy of the current map and stores it in the
        profile folder as map.dat. This can be useful for creating a backup
        before adding new content, in case of problems, and as a way to share an
        entire map at once.
]]
map.help.load = [[
    &lt;cyan&gt;Map Load&lt;reset&gt;
        syntax: &lt;yellow&gt;map load &lt;optional download address&gt;&lt;reset&gt;

        This command replaces the current map with the map stored as map.dat in
        the profile folder. Alternatively, if a download address is provided, a
        map is downloaded from that location and loaded to replace the current
        map. If no filename is given with the download address, the script tries
        to download map.dat. If a filename is given it MUST end with .dat.
]]
map.help.show = [[
    &lt;cyan&gt;Map Show&lt;reset&gt;
        syntax: &lt;yellow&gt;map show&lt;reset&gt;

        This command shows a map window, as specified by the window configs set
        via the &lt;link: window&gt;map window command&lt;/link&gt;. It isn't necessary to use this method to
        show a map window to use this script, any map window will work.
]]
map.help.export = [[
    &lt;cyan&gt;Map Export&lt;reset&gt;
        syntax: &lt;yellow&gt;map export &lt;area name&gt;&lt;reset&gt;

        This command creates a file containing all the informatino about the
        named area and stores it in the profile folder, with a file name based
        on the area name. This file can then be imported, allowing for easy
        sharing of single map areas. The file name will be the name of the area
        in all lower case, with spaces replaced with underscores, and a .dat
        file extension.
]]
map.help.import = [[
    &lt;cyan&gt;Map Import&lt;reset&gt;
        syntax: &lt;yellow&gt;map import &lt;area name&gt;&lt;reset&gt;

        This command imports a file from the profile folder with a name matching
        the name of the file, and uses it to create an area on the map. The area
        name used can be capitalized or not, and may have either spaces or
        underscores between words. The actual area name is stored within the
        file, and is not set by the area name used in this command.
]]
map.help.start_mapping = [[
    &lt;cyan&gt;Start Mapping&lt;reset&gt;
        syntax: &lt;yellow&gt;start mapping &lt;optional area name&gt;&lt;reset&gt;

        This command instructs the script to add new content to the map when it
        is seen. When first used, an area name is mandatory, so that an area is
        created for new rooms to be placed in. If used with an area name while
        the map shows the character within a room on the map, that room will be
        moved to be in the named area, if it is not already in it. If used
        without an area name, the room is not moved, and mapping begins in the
        area the character is currently located in.
]]
map.help.stop_mapping = [[
    &lt;cyan&gt;Stop Mapping&lt;reset&gt;
        syntax: &lt;yellow&gt;stop mapping&lt;reset&gt;

        This command instructs the script to stop adding new content until
        mapping is resumed at a later time. The map will continue to perform
        other functions.
]]
map.help.find_prompt = [[
    &lt;cyan&gt;Find Prompt&lt;reset&gt;
        syntax: &lt;yellow&gt;find prompt&lt;reset&gt;

        This command instructs the script to begin searching newly arriving text
        for something that matches one of its known prompt patterns. If one is
        found, that pattern will be set as the current prompt pattern. This
        should typically be the first command used to set up this script with a
        new profile. If your prompt appears after using this command, but there
        is no message saying that the prompt has been found, it will be
        necessary to use the map prompt command to manually set a pattern.
]]
map.help.prompt = [[
    &lt;cyan&gt;Map Prompt&lt;reset&gt;
        syntax: &lt;yellow&gt;map prompt &lt;prompt pattern&gt;&lt;reset&gt;

        This command manually sets a prompt pattern for the script to use.
        Because of the way this script works, the prompt pattern should match
        the entire prompt, so that if the text matching the pattern were
        removed, the line with the prompt would be blank. The patterns must be
        of the type used by the Lua string library. If you are unsure about what
        pattern to use, seek assistance on the Mudlet Forums or the Mudlet
        Discord channel.
]]
map.help.debug = [[
    &lt;cyan&gt;Map Debug&lt;reset&gt;
        syntax: &lt;yellow&gt;map debug&lt;reset&gt;

        This command toggles the map script's debug mode on or off when it is
        used. Debug mode provides some extra messages to help with setting up
        the script and identifying problems to help with troubleshooting. If you
        are getting assistance with setting up this script, using debug mode may
        make the process faster and easier.
]]
map.help.ignore = [[
    &lt;cyan&gt;Map Ignore&lt;reset&gt;
        syntax: &lt;yellow&gt;map ignore &lt;ignore pattern&gt;&lt;reset&gt;

        This command adds the given pattern to a list the script maintains to
        help it locate the room name. Any text that might appear after a command
        is sent to move and before the room name appears, or after the prompt
        and before the room name if several movement commands are sent at once,
        should have an ignore pattern added for it.

        If the given pattern is already in the list of ignore patterns, that
        pattern will be removed from the list.
]]
map.help.areas = [[
    &lt;cyan&gt;Map Areas&lt;reset&gt;
        syntax: &lt;yellow&gt;map areas&lt;reset&gt;

        This command displays a linked list of all areas in the map. When
        clicked, the rooms in the selected area will be displayed, as if the
        'map rooms' command had been used with that area as an argument.
]]
map.help.rooms = [[
    &lt;cyan&gt;Map Rooms&lt;reset&gt;
        syntax: &lt;yellow&gt;map rooms &lt;area name&gt;&lt;reset&gt;

        This command shows a list of all rooms in the area, with the roomID and
        the room name, as well as a count of how many rooms are in the area
        total. Note that the area name argument is not case sensitive.
]]
map.help.set_area = [[
    &lt;cyan&gt;Set Area&lt;reset&gt;
        syntax: &lt;yellow&gt;set area &lt;area name&gt;&lt;reset&gt;

        This command move the current room into the named area, creating the
        area if needed.
]]
map.help.mode = [[
    &lt;cyan&gt;Map Mode&lt;reset&gt;
        syntax: &lt;yellow&gt;map mode &lt;simple, normal, or complex&gt;&lt;reset&gt;

        This command changes the current mapping mode, which determines what
        happens when new rooms are added to the map.

        In simple mode, if an adjacent room has an exit stub pointing toward the
        newly created room, and the new room has an exit in that direction,
        those stubs are connected in both directions.

        In normal mode, the newly created room is connected to the room you left
        from, so long as it has an exit leading in that direction.

        In complex mode, none of the exits of the newly connected room are
        connected automatically when it is created.
]]
map.help.add_door = [[
    &lt;cyan&gt;Add Door&lt;reset&gt;
        syntax: &lt;yellow&gt;add door &lt;direction&gt; &lt;optional none, open, closed, or locked&gt;
        &lt;optional yes or no&gt;&lt;reset&gt;

        This command places a door on the exit in the given direction, or
        removes it if "none" is given as the second argument. The door status is
        set as given by the second argument, default "closed". The third
        argument determines if the door is a one-way door, default "no".
]]
map.help.add_portal = [[
    &lt;cyan&gt;Add Portal&lt;reset&gt;
        syntax: &lt;yellow&gt;add portal &lt;optional -f&gt; &lt;entry command&gt;&lt;reset&gt;

        This command creates a special exit in the current room that is entered
        by using the given entry command. The given entry command is then sent,
        moving to the destination room. If the destination room matches an
        existing room, the special exit will link to that room, and if not a new
        room will be created. If the optional "-f" argument is given, a new room
        will be created for the destination regardless of if an existing room
        matches the room seen when arriving at the destination.
]]
map.help.shift = [[
    &lt;cyan&gt;Shift&lt;reset&gt;
        syntax: &lt;yellow&gt;shift &lt;direction&gt;&lt;reset&gt;

        This command moves the current room one step in the direction given, on
        the map.
]]
map.help.merge_rooms = [[
    &lt;cyan&gt;Merge Rooms&lt;reset&gt;
        syntax: &lt;yellow&gt;merge rooms&lt;reset&gt;

        This command combines all rooms that share the same coordinates and the
        same room name into a single room, with all of the exits preserved and
        combined.
]]
map.help.clear_moves = [[
    &lt;cyan&gt;Clear Moves&lt;reset&gt;
        syntax: &lt;yellow&gt;clear moves&lt;reset&gt;

        This command clears the script's queue of movement commands, and is
        intended to be used after you attempt to move while mapping but the
        movement is prevented in some way that is not caught and handled by a
        trigger that raises the onMoveFail event.
]]
map.help.set_exit = [[
    &lt;cyan&gt;Set Exit&lt;reset&gt;
        syntax: &lt;yellow&gt;set exit &lt;direction&gt; &lt;destination roomID&gt;&lt;reset&gt;

        This command sets the exit in the current room in the given direction to
        connect to the target room, as specified by the roomID. This is a
        one-way connection.
]]
map.help.onnewroom = [[
    &lt;cyan&gt;onNewRoom Event&lt;reset&gt;

        This event is raised to inform the script that a room has been detected.
        When raised, a string containing the exits from the detected room should
        be passed as a second argument to the raiseEvent function, unless those
        exits have previously been stored in map.prompt.exits.
]]
map.help.onmovefail = [[
    &lt;cyan&gt;onMoveFail Event&lt;reset&gt;

        This event is raised to inform the script that a move was attempted but
        the character was unable to move in the given direction, causing that
        movement command to be removed from the script's movement queue.
]]
map.help.onforcedmove = [[
    &lt;cyan&gt;onForcedMove Event&lt;reset&gt;

        This event is raised to inform the script that the character moved in a
        specified direction without a command being entered. When raised, a
        string containing the movement direction must be passed as a second
        argument to the raiseEvent function.

        The most common reason for this event to be raised is when a character
        is following someone else.
]]
map.help.onrandommove = [[
    &lt;cyan&gt;onRandomMove Event&lt;reset&gt;

        This event is raised to inform the script that the character has moved
        in an unknown direction. The script will compare the next room seen with
        rooms that are adjacent to the current room to try to determine the best
        match for where the character has gone.

        In some situations, multiple options are equally viable, so mistakes may
        result. The script will automatically keep verifying positioning with
        each step, and automatically correct the shown location on the map when
        possible.
]]
map.help.onvisionfail = [[
    &lt;cyan&gt;onVisionFail Event&lt;reset&gt;

        This event is raised to inform the script that some or all of the room
        information was not able to be gathered, but the character still
        successfully moved between rooms in the intended direction.
]]
map.help.onprompt = [[
    &lt;cyan&gt;onPrompt Event&lt;reset&gt;

        This event can be raised when using a non-conventional setup to trigger
        waiting messages from the script to be displayed. Additionally, if
        map.prompt.exits exists and isn't simply an empty string, raising this
        event will cause the onNewRoom event to be raised as well. This
        functionality is intended to allow people who have used the older
        version of this script to use this script instead, without having to
        modify the triggers they created for it.
]]
map.help.me = [[
    &lt;cyan&gt;Map Me&lt;reset&gt;
        syntax: &lt;yellow&gt;map me&lt;reset&gt;

        This command forces the script to look at the currently captured room
        name and exits, and search for a potentially matching room, moving the
        map if applicable. Note that this command is generally never needed, as
        the script performs a similar search any time the room name and exits
        don't match expectations.
]]
map.help.path = [[
    &lt;cyan&gt;Map Path&lt;reset&gt;
        syntax: &lt;yellow&gt;map path &lt;room name&gt; &lt;; optional area name&gt;&lt;reset&gt;

        This command tries to find a walking path from the current room to the
        named room. If an area name is given, only rooms within that area that
        is given are checked. Neither the room name nore the area name are case
        sensitive, but otherwise an exact match is required. Note that a
        semicolon is required between the room name and area name, if an area
        name is given, but spaces before or after the semicolon are optional.

        Example: &lt;yellow&gt;map path main street ; newbie town&lt;reset&gt;
]]
map.help.character = [[
    &lt;cyan&gt;Map Character&lt;reset&gt;
        syntax: &lt;yellow&gt;map character &lt;name&gt;&lt;reset&gt;

        This command tells the script what character is currently being used.
        Setting a character is optional, but recall locations and prompt
        patterns are stored by character name, so using this command allows for
        easy switching between different setups. The name given is stored in
        map.character. The name is a case sensitive exact match. The value of
        map.character is not saved between sessions, so this must be set again
        if needed each time the profile is opened.
]]
map.help.recall = [[
    &lt;cyan&gt;Map Recall&lt;reset&gt;
        syntax: &lt;yellow&gt;map recall&lt;reset&gt;

        This command tells the script that the current room is the recall point
        for the current character, as stored in map.character. This information
        is stored in map.save.recall[map.character], and is remembered between
        sessions.
]]
map.help.config = [[
    &lt;cyan&gt;Map Config&lt;reset&gt;
        syntax: &lt;yellow&gt;map config &lt;setting&gt; &lt;optional value&gt;&lt;reset&gt;

        This command changes any of the available configurations listed below.
        If no value is given, and the setting is either 'on' or 'off', then the
        value is switched. When naming a setting, spaces can be used in place of
        underscores. Details of what options are available and what each one
        does are provided.

        &lt;yellow&gt;speedwalk_delay&lt;reset&gt; - When using the speedwalk function of the script,
            this is the amount of time the script waits after either sending
            a command or, if speedwalk_wait is set, after arriving in a new
            room, before the next command is sent. This may be any number 0
            or higher.

        &lt;yellow&gt;speedwalk_wait&lt;reset&gt; - When using the speedwalk function of the script,
            this indicates if the script waits for your character to move
            into a new room before sending the next command. This may be true
            or false.

        &lt;yellow&gt;speedwalk_random&lt;reset&gt; - When using the speedwalk function of the script
            with a speedwalk_delay value, introduces a randomness to the wait
            time by adding some amount up to the speedwalk_delay value. This
            may be true or false.

        &lt;yellow&gt;stretch_map&lt;reset&gt; - When adding a new room that would overlap an existing
            room, if this is set the map will stretch out to prevent the
            overlap, with all rooms further in the direction moved getting
            pushed one further in that direction. This may be true or false.

        &lt;yellow&gt;max_search_distance&lt;reset&gt; - When mapping, this is the maximum number of
            rooms that the script will search in the movement direction for a
            matching room before deciding to create a new room. This may be
            false, or any positive whole number. This can also be set to 0,
            which is the same as setting it to false.

        &lt;yellow&gt;search_on_look&lt;reset&gt; - When this is set, using the "look" command causes
            the map to verify your position using the room name and exits
            seen following using the command. This may be true or false.

        &lt;yellow&gt;clear_lines_on_send&lt;reset&gt; - When this is set, any time a command is sent,
            any lines stored from the game used to search for the room name
            are cleared. This may be true or false.

        &lt;yellow&gt;mode&lt;reset&gt; - This is the default mapping mode on startup, and may be
            "simple", "normal", or "complex".

        &lt;yellow&gt;download_path&lt;reset&gt; - This is the path that updates are downloaded from.
            This may be any web address where the versions.lua and
            generic_mapper.xml files can be downloaded from.

        &lt;yellow&gt;prompt_test_patterns&lt;reset&gt; - This is a table of default patterns checked
            when using the "find prompt" command. The patterns in this table
            should start with a '^', and be written to be used with the Lua
            string library. Most importantly, '%' is used as the escape
            character instead of '\' as in trigger regex patterns.

        &lt;yellow&gt;custom_exits&lt;reset&gt; - This is a table of custom exit directions and their
            relevant extra pieces of info. Each entry should have the short
            direction as the keyword for a table containing first the long
            direction, then the long direction of the reverse of this
            direction, and then the x, y, and z change in map position
            corresponding to the movement. As an example: us = {'upsouth',
            'downnorth', 0, -1, 1}

        &lt;yellow&gt;use_translation&lt;reset&gt; - When this is set, the lang_dirs table is used to
            translate movement commands in some other language into the
            English used by the script. This may be true or false.

        &lt;yellow&gt;debug&lt;reset&gt; - When this is set, the script will start in debug mode. This
            may be true or false.
]]
map.help.window = [[
    &lt;yellow&gt;Map Window&lt;reset&gt;
        syntax: &lt;yellow&gt;map window &lt;setting&gt; &lt;value&gt;&lt;reset&gt;

        This command changes any of the available configurations listed below,
        which determine the appearance and positioning of the map window when
        the 'map show' command is used. Details of what options are available
        and what each one does are provided.

        &lt;yellow&gt;x&lt;reset&gt; - This is the x position of the map window, and should be a
            positive number of pixels or a percentage of the screen width.

        &lt;yellow&gt;y&lt;reset&gt; - This is the y position of the map window, and should be a
            positive number of pixels or a percentage of the screen height.

        &lt;yellow&gt;w&lt;reset&gt; - This is the width of the map window, and should be a positive
            number of pixels or a percentage of the screen width.

        &lt;yellow&gt;h&lt;reset&gt; - This is the height of the map window, and should be a positive
            number of pixels or a percentage of the screen height.

        &lt;yellow&gt;origin&lt;reset&gt; - This is the corner from which the window position is
            measured, and may be 'topright', 'topleft', 'bottomright', or
            'bottomleft'.

        &lt;yellow&gt;shown&lt;reset&gt; - This determines if the map window is shown immediately upon
            connecting to the game. This may be true or false. If you intend
            to have some other script control the map window, this should be
            set to false.
]]
map.help.translate = [[
    &lt;yellow&gt;Map Translate&lt;reset&gt;
        syntax: &lt;yellow&gt;map translate &lt;english direction&gt; &lt;translated long direction&gt;
            &lt;translated short direction&gt;&lt;reset&gt;

        This command sets direction translations for the script to use, either
        for commands entered to move around, or listed exits the game shows when
        you enter a room. Available directions: north, south, east, west,
        northwest, northeast, southwest, southeast, up, down, in, and out.
]]
map.help.quick_start = [[
    MAP BASICS (Quick Start Guide)
    ----------------------------------------
    To see this again: &lt;yellow&gt;map basics&lt;reset&gt;

    Quick Commands:
    1. &lt;link: 1&gt;map help&lt;/link&gt;
       This will bring up a more detailed help file, starting with the available
       help topics.
    2. &lt;link: show&gt;map show&lt;/link&gt;
       This will toggle the map window. If you don't see the map window, type
       this command first.
    3. &lt;link: find prompt&gt;find prompt&lt;/link&gt;
       This will make the script start looking for a prompt using several standard
       prompt patterns. If a prompt is found, you will be notified, if not, you
       will need to set a prompt pattern yourself.
    4. &lt;link: prompt&gt;map prompt&lt;/link&gt;
       This sets the prompt pattern you specify, using Lua String Library type
       patterns.
    5. &lt;link: ignore&gt;map ignore&lt;/link&gt;
       This creates a pattern for text to ignore when the script is looking for
       the room name. This should include anything that might appear between
       the sent movement command or the prompt preceeding the room description,
       and the room name itself. This can also be used to remove extra text
       on the same line as the room name that should not be included.
    6. &lt;link: debug&gt;map debug&lt;/link&gt;
       This toggles debug mode. When on, messages will be displayed showing what
       information is captured and a few additional error messages that can help
       with getting the script fully functional.

    At this point, there are two ways to use the script:
    (A) Load in a map file using a script provided from another user. That user
        will need to specify any manual adjustments to the script that one might
        need to make to make their script work.
    (B) Begin mapping yourself. If you want to map yourself, the help files do
        their best to explain every alias and script tool. If you need further
        assistance, reach out to the Mudlet community.
]]
--    &lt;red&gt;IF YOU RUN INTO ANY ISSUES &lt;yellow&gt;map &lt;cyan&gt;troubleshoot &lt;red&gt;DOES ITS BEST TO COVER THEM.&lt;reset&gt;
--]]

map.character = map.character or ""
map.prompt = map.prompt or {}
map.save = map.save or {}
map.save.recall = map.save.recall or {}
map.save.prompt_pattern = map.save.prompt_pattern or {}
map.save.ignore_patterns = map.save.ignore_patterns or {}

local oldstring = string
local string = utf8
string.format = oldstring.format
string.trim = oldstring.trim
string.starts = oldstring.starts
string.split = oldstring.split
string.ends = oldstring.ends


local profilePath = getMudletHomeDir()
profilePath = profilePath:gsub("\\","/")

map.defaults = {
    mode = "normal", -- can be simple, normal, or complex
    stretch_map = true,
    search_on_look = true,
    speedwalk_delay = 1,
    speedwalk_wait = true,
    speedwalk_random = true,
    max_search_distance = 1,
    clear_lines_on_send = true,
    map_window = {x = 0,
        y = 0,
        w = "30%",
        h = "40%",
        origin = "topright",
        shown = false,
    },
    prompt_test_patterns = {"^%[?%a*%]?&lt;.*&gt;", "^%[.*%]%s*&gt;", "^%w*[%.?!:]*&gt;", "^%[.*%]", "^[Hh][Pp]:.*&gt;"},
    custom_exits = {},  -- format: short_exit = {long_exit, reverse_exit, x_dif, y_dif, z_dif}
                        -- ex: { us = {"upsouth", "downnorth", 0, -1, 1}, dn = {"downnorth", "upsouth", 0, 1, -1} }
    use_translation = true,
    lang_dirs = {n = 'n', ne = 'ne', nw = 'nw', e = 'e', w = 'w', s = 's', se = 'se', sw = 'sw',
        u = 'u', d = 'd', ["in"] = 'in', out = 'out', north = 'north', northeast = 'northeast',
        east = 'east', west = 'west', south = 'south', southeast = 'southeast', southwest = 'southwest',
        northwest = 'northwest', up = 'up', down = 'down',
    },
    debug = false,
    download_path = "https://raw.githubusercontent.com/JorMox/Mudlet/development/src/mudlet-lua/lua/generic-mapper",
}

local move_queue, lines = {}, {}
local find_portal, vision_fail, room_detected, random_move, force_portal, find_prompt, downloading, walking, help_shown
local mt = getmetatable(map) or {}

local function config()
    local defaults = map.defaults
    local configs = map.configs or {}
    local path = profilePath.."/map downloads"
    if not io.exists(path) then lfs.mkdir(path) end
    -- load stored configs from file if it exists
    if io.exists(path.."/configs.lua") then
        table.load(path.."/configs.lua",configs)
    end
    -- overwrite default values with stored config values
    configs = table.update(defaults, configs)
    map.configs = configs
    map.configs.translate = {}
    for k, v in pairs(map.configs.lang_dirs) do
        map.configs.translate[v] = k
    end
    -- incorporate custom exits
    for k,v in pairs(map.configs.custom_exits) do
        exitmap[k] = v[1]
        reverse_dirs[v[1]] = v[2]
        short[v[1]] = k
        local count = #coordmap
        coordmap[count] = {v[3],v[4],v[5]}
        stubmap[count] = v[1]
        stubmap[v[1]] = count
    end

    -- setup metatable to store sensitive values
    local protected = {"mapping", "currentRoom", "currentName", "currentExits", "currentArea",
        "prevRoom", "prevName", "prevExits", "mode", "version"}
    mt = getmetatable(map) or {}
    mt.__index = mt
    mt.__newindex = function(tbl, key, value)
            if not table.contains(protected, key) then
                rawset(tbl, key, value)
            else
                error("Protected Map Table Value")
            end
        end
    mt.set = function(key, value)
            if table.contains(protected, key) then
                mt[key] = value
            end
        end
    setmetatable(map, mt)
    map.set("mode", configs.mode)
    map.set("version", version)

    local saves = {}
    if io.exists(path.."/map_save.dat") then
        table.load(path.."/map_save.dat",saves)
    end
    saves.prompt_pattern = saves.prompt_pattern or {}
    saves.ignore_patterns = saves.ignore_patterns or {}
    saves.recall = saves.recall or {}
    map.save = saves

    if map.configs.map_window.shown then
        map.showMap(true)
    end
end

local exitmap = {
    n = 'north',    ne = 'northeast',   nw = 'northwest',   e = 'east',
    w = 'west',     s = 'south',        se = 'southeast',   sw = 'southwest',
    u = 'up',       d = 'down',         ["in"] = 'in',      out = 'out',
}

local short = {}
for k,v in pairs(exitmap) do
    short[v] = k
end

local stubmap = {
    north = 1,      northeast = 2,      northwest = 3,      east = 4,
    west = 5,       south = 6,          southeast = 7,      southwest = 8,
    up = 9,         down = 10,          ["in"] = 11,        out = 12,
    [1] = "north",  [2] = "northeast",  [3] = "northwest",  [4] = "east",
    [5] = "west",   [6] = "south",      [7] = "southeast",  [8] = "southwest",
    [9] = "up",     [10] = "down",      [11] = "in",        [12] = "out",
}

local coordmap = {
    [1] = {0,1,0},      [2] = {1,1,0},      [3] = {-1,1,0},     [4] = {1,0,0},
    [5] = {-1,0,0},     [6] = {0,-1,0},     [7] = {1,-1,0},     [8] = {-1,-1,0},
    [9] = {0,0,1},      [10] = {0,0,-1},    [11] = {0,0,0},     [12] = {0,0,0},
}

local reverse_dirs = {
    north = "south", south = "north", west = "east", east = "west", up = "down",
    down = "up", northwest = "southeast", northeast = "southwest", southwest = "northeast",
    southeast = "northwest", ["in"] = "out", out = "in",
}

local wait_echo = {}
local mapper_tag = "&lt;112,229,0&gt;(&lt;73,149,0&gt;mapper&lt;112,229,0&gt;): &lt;255,255,255&gt;"
local debug_tag = "&lt;255,165,0&gt;(&lt;200,120,0&gt;debug&lt;255,165,0&gt;): &lt;255,255,255&gt;"
local err_tag = "&lt;255,0,0&gt;(&lt;178,34,34&gt;error&lt;255,0,0&gt;): &lt;255,255,255&gt;"

function map.show_help(cmd)
    if cmd and cmd ~= "" then
        if cmd:starts("map ") then cmd = cmd:sub(5) end
        cmd = cmd:lower():gsub(" ","_")
        if not map.help[cmd] then
            map.echo("No help file on that command.")
        end
    else
        cmd = 1
    end

    for w in map.help[cmd]:gmatch("[^\n]*\n") do
        local target = w:match("&lt;link: ([^&gt;]+)&gt;")
        if target then
            local before, link, after = w:match("(.*)&lt;link: [^&gt;]+&gt;(.*)&lt;/link&gt;(.*)")
            cecho(before)
            link = "&lt;yellow&gt;"..link.."&lt;reset&gt;"
            if target ~= "1" then
                cechoLink(link,[[map.show_help("]]..target..[[")]],"View: map help " .. target,true)
            else
                cechoLink(link,[[map.show_help()]],"View: map help",true)
            end
            cecho(after)
        else
            cecho(w)
        end
    end
    echo("\n")
end

local bool_configs = {'stretch_map', 'search_on_look', 'speedwalk_wait', 'speedwalk_random',
    'clear_lines_on_send', 'debug', 'use_translation'}
-- function intended to be used by an alias to change config values and save them to a file for later
function map.setConfigs(key, val, sub_key)
    if val == "off" or val == "false" then
        val = false
    elseif val == "on" or val == "true" then
        val = true
    end
    local toggle = false
    if val == nil or val == "" then toggle = true end
    key = key:gsub(" ","_")
    if tonumber(val) then val = tonumber(val) end
    if not toggle then
        if key == "map_window" then
            if map.configs.map_window[sub_key] then
                map.configs.map_window[sub_key] = val
                map.echo(string.format("Map config %s set to: %s", sub_key, tostring(val)))
            else
                map.echo("Unknown map config.",false, true)
            end
        elseif key =="lang_dirs" then
            sub_key = exitmap[sub_key] or sub_key
            if map.configs.lang_dirs[sub_key] then
                local long_dir, short_dir = val[1],val[2]
                if #long_dir &lt; #short_dir then long_dir, short_dir = short_dir, long_dir end
                map.configs.lang_dirs[sub_key] = long_dir
                map.configs.lang_dirs[short[sub_key]] = short_dir
                map.echo(string.format("Direction %s, abbreviated as %s, now interpreted as %s.", long_dir, short_dir, sub_key))
                map.configs.translate = {}
                for k, v in pairs(map.configs.lang_dirs) do
                    map.configs.translate[v] = k
                end
            else
                map.echo("Invalid direction.", false, true)
            end
        elseif key == "prompt_test_patterns" then
            if not table.contains(map.configs.prompt_test_patterns) then
                table.insert(map.configs.prompt_test_patterns, val)
                map.echo("Prompt pattern added to list: " .. val)
            else
                table.remove(map.configs.prompt_test_patterns, table.index_of(map.configs.prompt_test_patterns, val))
                map.echo("Prompt pattern removed from list: " .. val)
            end
        elseif key == "custom_exits" then
            if type(val) == "table" then
                for k, v in pairs(val) do
                    map.configs.custom_exit[k] = v
                    map.echo(string.format("Custom Exit short direction %s, long direction %s",k,v[1]))
                    map.echo(string.format("    set to: x: %s, y: %s, z: %s, reverse: %s",v[3],v[4],v[5],v[2]))
                end
            else
                map.echo("Custom Exit config must be in the form of a table.", false, true)
            end
        elseif map.configs[key] then
            map.configs[key] = val
            map.echo(string.format("Config %s set to: %s", key, tostring(val)))
        else
            map.echo("Unknown configuration.",false,true)
            return
        end
    elseif toggle then
        if (type(map.configs[key]) == "boolean" and table.contains(bool_configs, key)) then
            map.configs[key] = not map.configs[key]
            map.echo(string.format("Config %s set to: %s", key, tostring(map.configs[key])))
        elseif key == "map_window" and sub_key == "shown" then
            map.configs.map_window.shown = not map.configs.map_window.shown
            map.echo(string.format("Map config %s set to: %s", "shown", tostring(map.configs.map_window.shown)))
        else
            map.echo("Unknown configuration.",false,true)
            return
        end
    end
    table.save(profilePath.."/map downloads/configs.lua",map.configs)
    config()
end

local function show_err(msg,debug)
    map.echo(msg,debug,true)
    error(msg,2)
end

local function print_echoes(what, debug, err)
    moveCursorEnd("main")
    local curline = getCurrentLine()
    if curline ~= "" then echo("\n") end
    decho(mapper_tag)
    if debug then decho(debug_tag) end
    if err then decho(err_tag) end
    cecho(what)
    echo("\n")
end

local function print_wait_echoes()
    for k,v in ipairs(wait_echo) do
        print_echoes(v[1],v[2],v[3])
    end
    wait_echo = {}
end

function map.echo(what, debug, err, wait)
    if debug and not map.configs.debug then return end
    what = tostring(what) or ""
    if wait then
        table.insert(wait_echo,{what, debug, err})
        return
    end
    print_wait_echoes()
    print_echoes(what, debug, err)
end

local function set_room(roomID)
    -- moves the map to the new room
    if map.currentRoom ~= roomID then
        map.set("prevRoom", map.currentRoom)
        map.set("currentRoom", roomID)
    end
    if getRoomName(map.currentRoom) ~= map.currentName then
        map.set("prevName", map.currentName)
        map.set("prevExits", map.currentExits)
        map.set("currentName", getRoomName(map.currentRoom))
        map.set("currentExits", getRoomExits(map.currentRoom))
        -- check handling of custom exits here
        for i = 13,#stubmap do
            map.currentExits[stubmap[i]] = tonumber(getRoomUserData(map.currentRoom,"exit " .. stubmap[i]))
        end
    end
    map.set("currentArea", getRoomArea(map.currentRoom))
    centerview(map.currentRoom)
    raiseEvent("onMoveMap", map.currentRoom)
end

local function add_door(roomID, dir, status)
    -- create or remove a door in the designated direction
    -- consider options for adding pickable and passable information
    dir = exitmap[dir] or dir
    if not table.contains(exitmap,dir) then
        error("Add Door: invalid direction.",2)
    end
    if type(status) ~= "number" then
        status = assert(table.index_of({"none","open","closed","locked"},status),
            "Add Door: Invald status, must be none, open, closed, or locked") - 1
    end
    local exits = getRoomExits(roomID)
    -- check handling of custom exits here
    if not exits[dir] then
        setExitStub(roomID,stubmap[dir],true)
    end
    -- check handling of custom exits here
    if not table.contains({'u','d'},short[dir]) then
        setDoor(roomID,short[dir],status)
    else
        setDoor(roomID,dir,status)
    end
end

local function check_doors(roomID,exits)
    -- looks to see if there are doors in designated directions
    -- used for room comparison, can also be used for pathing purposes
    if type(exits) == "string" then exits = {exits} end
    local statuses = {}
    local doors = getDoors(roomID)
    local dir
    for k,v in pairs(exits) do
        dir = short[k] or short[v]
        if table.contains({'u','d'},dir) then
            dir = exitmap[dir]
        end
        if not doors[dir] or doors[dir] == 0 then
            return false
        else
            statuses[dir] = doors[dir]
        end
    end
    return statuses
end

local function find_room(name, area)
    -- looks for rooms with a particular name, and if given, in a specific area
    local rooms = searchRoom(name)
    if type(area) == "string" then
        local areas = getAreaTable() or {}
        for k,v in pairs(areas) do
            if string.lower(k) == string.lower(area) then
                area = v
                break
            end
        end
        area = areas[area] or nil
    end
    for k,v in pairs(rooms) do
        if string.lower(v) ~= string.lower(name) then
            rooms[k] = nil
        elseif area and getRoomArea(k) ~= area then
            rooms[k] = nil
        end
    end
    return rooms
end

local function getRoomStubs(roomID)
    -- turns stub info into table similar to exit table
    local stubs = getExitStubs(roomID)
    if type(stubs) ~= "table" then stubs = {} end
    -- check handling of custom exits here
    local tmp
    for i = 13,#stubmap do
        tmp = tonumber(getRoomUserData(roomID,"stub"..stubmap[i]))
        if tmp then table.insert(stubs,tmp) end
    end

    local exits = {}
    for k,v in pairs(stubs) do
        exits[stubmap[v]] = 0
    end
    return exits
end

local function connect_rooms(ID1, ID2, dir1, dir2, no_check)
    -- makes a connection between rooms
    -- can make backwards connection without a check
    local match = false
    if not ID1 and ID2 and dir1 then
        error("Connect Rooms: Missing Required Arguments.",2)
    end
    dir2 = dir2 or reverse_dirs[dir1]
    -- check handling of custom exits here
    if stubmap[dir1] &lt;= 12 then
        setExit(ID1,ID2,stubmap[dir1])
    else
        setRoomUserData(ID1,"exit " .. dir1,ID2)
    end
    if stubmap[dir1] &gt; 13 then
        -- check handling of custom exits here
        setRoomUserData(ID1,"stub"..dir1,"")
    end
    local doors1, doors2 = getDoors(ID1), getDoors(ID2)
    local dstatus1, dstatus2 = doors1[short[dir1]] or doors1[dir1], doors2[short[dir2]] or doors2[dir2]
    if dstatus1 ~= dstatus2 then
        if not dstatus1 then
            add_door(ID1,dir1,dstatus2)
        elseif not dstatus2 then
            add_door(ID2,dir2,dstatus1)
        end
    end
    if map.mode ~= "complex" then
        local stubs = getRoomStubs(ID2)
        if stubs[dir2] then match = true end
        if (match or no_check) then
            -- check handling of custom exits here
            if stubmap[dir1] &lt;= 12 then
                setExit(ID2,ID1,stubmap[dir2])
            else
                setRoomUserData(ID2,"exit " .. dir2,ID1)
            end
            if stubmap[dir2] &gt; 13 then
                -- check handling of custom exits here
                setRoomUserData(ID2,"stub"..dir2,"")
            end
        end
    end
end

local function check_room(roomID, name, exits)
    -- check to see if room name and exits match expecations
    if not roomID then
        error("Check Room Error: No ID",2)
    end
    if name ~= getRoomName(roomID) then return false end
    local t_exits = table.union(getRoomExits(roomID),getRoomStubs(roomID))
    -- check handling of custom exits here
    for i = 13,#stubmap do
        t_exits[stubmap[i]] = tonumber(getRoomUserData(roomID,"exit " .. stubmap[i]))
    end
    for k,v in ipairs(exits) do
        if short[v] and not table.contains(t_exits,v) then return false end
        t_exits[v] = nil
    end
    return table.is_empty(t_exits) or check_doors(roomID,t_exits)
end

local function stretch_map(dir,x,y,z)
    -- stretches a map to make room for just added room that would overlap with existing room
    local dx,dy,dz
    if not dir then return end
    for k,v in pairs(getAreaRooms(map.currentArea)) do
        if v ~= map.currentRoom then
            dx,dy,dz = getRoomCoordinates(v)
            if dx &gt;= x and string.find(dir,"east") then
                dx = dx + 1
            elseif dx &lt;= x and string.find(dir,"west") then
                dx = dx - 1
            end
            if dy &gt;= y and string.find(dir,"north") then
                dy = dy + 1
            elseif dy &lt;= y and string.find(dir,"south") then
                dy = dy - 1
            end
            if dz &gt;= z and string.find(dir,"up") then
                dz = dz + 1
            elseif dz &lt;= z and string.find(dir,"down") then
                dz = dz - 1
            end
            setRoomCoordinates(v,dx,dy,dz)
        end
    end
end

local function create_room(name, exits, dir, coords)
    -- makes a new room with captured name and exits
    -- links with other rooms as appropriate
    -- links to adjacent rooms in direction of exits if in simple mode
    if map.mapping then
        map.echo("New Room: " .. name,false,false,(dir or find_portal or force_portal) and true or false)
        local newID = createRoomID()
        addRoom(newID)
        setRoomArea(newID, map.currentArea)
        setRoomName(newID, name)
        for k,v in ipairs(exits) do
            if stubmap[v] then
                if stubmap[v] &lt;= 12 then
                    setExitStub(newID, stubmap[v], true)
                else
                    -- check handling of custom exits here
                    setRoomUserData(newID, "stub"..v,stubmap[v])
                end
            end
        end
        if dir then
            connect_rooms(map.currentRoom, newID, dir)
        elseif find_portal or force_portal then
            addSpecialExit(map.currentRoom, newID, (find_portal or force_portal))
            setRoomUserData(newID,"portals",tostring(map.currentRoom)..":"..(find_portal or force_portal))
        end
        setRoomCoordinates(newID,unpack(coords))
        local pos_rooms = getRoomsByPosition(map.currentArea,unpack(coords))
        if not (find_portal or force_portal) and map.configs.stretch_map and table.size(pos_rooms) &gt; 1 then
            set_room(newID)
            stretch_map(dir,unpack(coords))
        end
        if map.mode == "simple" then
            local x,y,z = unpack(coords)
            local dx,dy,dz,rooms
            for k,v in ipairs(exits) do
                if stubmap[v] then
                    dx,dy,dz = unpack(coordmap[stubmap[v]])
                    rooms = getRoomsByPosition(map.currentArea,x+dx,y+dy,z+dz)
                    if table.size(rooms) == 1 then
                        connect_rooms(newID,rooms[0],v)
                    end
                end
            end
        end
        set_room(newID)
    end
end

local function find_area_limits(areaID)
    -- used to find min and max coordinate limits for an area
    if not areaID then
        error("Find Limits: Missing area ID",2)
    end
    local rooms = getAreaRooms(areaID)
    local minx, miny, minz = getRoomCoordinates(rooms[0])
    local maxx, maxy, maxz = minx, miny, minz
    local x,y,z
    for k,v in pairs(rooms) do
        x,y,z = getRoomCoordinates(v)
        minx = math.min(x,minx)
        maxx = math.max(x,maxx)
        miny = math.min(y,miny)
        maxy = math.max(y,maxy)
        minz = math.min(z,minz)
        maxz = math.max(z,maxz)
    end
    return minx, maxx, miny, maxy, minz, maxz
end

local function find_link(name, exits, dir, max_distance)
    -- search for matching room in desired direction
    local x,y,z = getRoomCoordinates(map.currentRoom)
    if map.mapping and x then
        if max_distance &lt; 1 then
            max_distance = nil
        else
            max_distance = max_distance - 1
        end
        if not stubmap[dir] or not coordmap[stubmap[dir]] then return end
        local dx,dy,dz = unpack(coordmap[stubmap[dir]])
        local minx, maxx, miny, maxy, minz, maxz = find_area_limits(map.currentArea)
        local rooms, match, stubs
        if max_distance then
            minx, maxx = x - max_distance, x + max_distance
            miny, maxy = y - max_distance, y + max_distance
            minz, maxz = z - max_distance, z + max_distance
        end
        repeat
            x, y, z = x + dx, y + dy, z + dz
            rooms = getRoomsByPosition(map.currentArea,x,y,z)
        until (x &gt; maxx or x &lt; minx or y &gt; maxy or y &lt; miny or z &gt; maxz or z &lt; minz or not table.is_empty(rooms))
        for k,v in pairs(rooms) do
            if check_room(v,name,exits) then
                match = v
                break
            end
        end
        if match then
            connect_rooms(map.currentRoom, match, dir)
            set_room(match)
        else
            x,y,z = getRoomCoordinates(map.currentRoom)
            create_room(name, exits, dir,{x+dx,y+dy,z+dz})
        end
    end
end

local function move_map()
    -- tries to move the map to the next room
    local move = table.remove(move_queue,1)
    if move or random_move then
        local exits = (map.currentRoom and getRoomExits(map.currentRoom)) or {}
        -- check handling of custom exits here
        if map.currentRoom then
            for i = 13, #stubmap do
                exits[stubmap[i]] = tonumber(getRoomUserData(map.currentRoom,"exit " .. stubmap[i]))
            end
        end
        local special = (map.currentRoom and getSpecialExitsSwap(map.currentRoom)) or {}
        if move and not exits[move] and not special[move] then
            for k,v in pairs(special) do
                if string.starts(k,move) then
                    move = k
                    break
                end
            end
        end
        if find_portal then
            map.find_me(map.currentName,map.currentExits,move)
            find_portal = false
        elseif force_portal then
            find_portal = false
            map.echo("Creating portal destination")
            create_room(map.currentName, map.currentExits, nil, {getRoomCoordinates(map.currentRoom)})
            force_portal = false
        elseif move == "recall" and map.save.recall[map.character] then
            set_room(map.save.recall[map.character])
        elseif move == "look" and map.currentRoom and not check_room(map.currentRoom, map.currentName, map.currentExits) then
            -- this check isn't working as intended, find out why
            map.find_me(map.currentName,map.currentExits)
        else
            if exits[move] and (vision_fail or check_room(exits[move], map.currentName, map.currentExits)) then
                set_room(exits[move])
            elseif special[move] and (vision_fail or check_room(special[move], map.currentName, map.currentExits)) then
                set_room(special[move])
            elseif not vision_fail then
                if map.mapping and move then
                    find_link(map.currentName, map.currentExits, move, map.configs.max_search_distance)
                else
                    map.find_me(map.currentName,map.currentExits, move)
                end
            end
        end
        vision_fail = false
    end
end

local function capture_move_cmd(dir,priority)
    -- captures valid movement commands
    local configs = map.configs
    if configs.clear_lines_on_send then
        lines = {}
    end
    dir = string.lower(dir)
    if dir == "/" then dir = "recall" end
    if dir == "l" then dir = "look" end
    if configs.use_translation then
        dir = configs.translate[dir] or dir
    end
    local door = string.match(dir,"open (%a+)")
    if map.mapping and door and (exitmap[door] or short[door]) then
        local doors = getDoors(map.currentRoom)
        if not doors[door] and not doors[short[door]] then
            map.set_door(door,"","")
        end
    end
    local portal = string.match(dir,"enter (%a+)")
    if map.mapping and portal then
        local portals = getSpecialExitsSwap(map.currentRoom)
        if not portals[dir] then
            map.set_portal(dir, true)
        end
    end
    if table.contains(exitmap,dir) or string.starts(dir,"enter ") or dir == "recall" then
        if priority then
            table.insert(move_queue,1,exitmap[dir] or dir)
        else
            table.insert(move_queue,exitmap[dir] or dir)
        end
    elseif configs.search_on_look and dir == "look" then
        table.insert(move_queue, dir)
    elseif map.currentRoom then
        local special = getSpecialExitsSwap(map.currentRoom) or {}
        if special[dir] then
            if priority then
                table.insert(move_queue,1,dir)
            else
                table.insert(move_queue,dir)
            end
        end
    end
end

local function capture_room_info(name, exits)
    -- captures room info, and tries to move map to match
    if (not vision_fail) and name and exits then
        map.set("prevName", map.currentName)
        map.set("prevExits", map.currentExits)
        name = string.trim(name)
        map.set("currentName", name)
        if exits:ends(".") then exits = exits:sub(1,#exits-1) end
        if not map.configs.use_translation then
            exits = string.gsub(string.lower(exits)," and "," ")
        end
        map.set("currentExits", {})
        for w in string.gmatch(exits,"%a+") do
            if map.configs.use_translation then
                local dir = map.configs.translate and map.configs.translate[w]
                if dir then table.insert(map.currentExits,dir) end
            else
                table.insert(map.currentExits,w)
            end
        end
        map.echo(string.format("Exits Captured: %s (%s)",exits, table.concat(map.currentExits, " ")),true)
        move_map()
    elseif vision_fail then
        move_map()
    end
end

local function find_area(name)
    -- searches for the named area, and creates it if necessary
    local areas = getAreaTable()
    local areaID
    for k,v in pairs(areas) do
        if string.lower(name) == string.lower(k) then
            areaID = v
            break
        end
    end
    if not areaID then areaID = addAreaName(name) end
    if not areaID then
        show_err("Invalid Area. No such area found, and area could not be added.",true)
    end
    map.set("currentArea", areaID)
end

function map.load_map(address)
    local path = profilePath .. "/map downloads/map.dat"
    if not address then
        loadMap(path)
        map.echo("Map reloaded from local copy.")
    else
        if not string.match(address,"/[%a_]+%.dat$") then
            address = address .. "/map.dat"
        end
        downloading = true
        downloadFile(path, address)
        map.echo(string.format("Downloading map file from: %s.",address))
    end
end

function map.set_exit(dir,roomID)
    -- used to set unusual exits from the room you are standing in
    if map.mapping then
        roomID = tonumber(roomID)
        if not roomID then
            show_err("Set Exit: Invalid Room ID")
        end
        if not table.contains(exitmap,dir) and not string.starts(dir, "-p ") then
            show_err("Set Exit: Invalid Direction")
        end

        if not string.starts(dir, "-p ") then
            local exit
            if stubmap[exitmap[dir] or dir] &lt;= 12 then
                exit = short[exitmap[dir] or dir]
                setExit(map.currentRoom,roomID,exit)
            else
                -- check handling of custom exits here
                exit = exitmap[dir] or dir
                exit = "exit " .. exit
                setRoomUserData(map.currentRoom,exit,roomID)
            end
            map.echo("Exit " .. dir .. " now goes to roomID " .. roomID)
        else
            dir = string.gsub(dir,"^-p ","")
            addSpecialExit(map.currentRoom,roomID,dir)
            map.echo("Special exit '" .. dir .. "' now goes to roomID " .. roomID)
        end
    else
        map.echo("Not mapping",false,true)
    end
end

function map.find_path(roomName,areaName,return_tables)
    areaName = (areaName ~= "" and areaName) or nil
    local rooms = find_room(roomName,areaName)
    local found,dirs = false,{}
    local path = {}
    for k,v in pairs(rooms) do
        found = getPath(map.currentRoom,k)
        if found and (#dirs == 0 or #dirs &gt; #speedWalkDir) then
            dirs = speedWalkDir
            path = speedWalkPath
        end
    end
    if return_tables then
        if table.is_empty(path) then
            path, dirs = nil, nil
        end
        return path, dirs
    else
        if #dirs &gt; 0 then
            map.echo("Path to " .. roomName .. ((areaName and " in " .. areaName) or "") .. ": " .. table.concat(dirs,", "))
        else
            map.echo("No path found to " .. roomName .. ((areaName and " in " .. areaName) or "") .. ".",false,true)
        end
    end
end

function map.export_area(name)
    -- used to export a single area to a file
    local areas = getAreaTable()
    name = string.lower(name)
    for k,v in pairs(areas) do
        if name == string.lower(k) then name = k end
    end
    if not areas[name] then
        show_err("No such area.")
    end
    local rooms = getAreaRooms(areas[name])
    local tmp = {}
    for k,v in pairs(rooms) do
        tmp[v] = v
    end
    rooms = tmp
    local tbl = {}
    tbl.name = name
    tbl.rooms = {}
    tbl.exits = {}
    tbl.special = {}
    local rname, exits, stubs, doors, special, portals, door_up, door_down, coords
    for k,v in pairs(rooms) do
        rname = getRoomName(v)
        exits = getRoomExits(v)
        stubs = getExitStubs(v)
        doors = getDoors(v)
        special = getSpecialExitsSwap(v)
        portals = getRoomUserData(v,"portals") or ""
        coords = {getRoomCoordinates(v)}
        tbl.rooms[v] = {name = rname, coords = coords, exits = exits, stubs = stubs, doors = doors, door_up = door_up,
            door_down = door_down, door_in = door_in, door_out = door_out, special = special, portals = portals}
        tmp = {}
        for k1,v1 in pairs(exits) do
            if not table.contains(rooms,v1) then
                tmp[k1] = {v1, getRoomName(v1)}
            end
        end
        if not table.is_empty(tmp) then
            tbl.exits[v] = tmp
        end
        tmp = {}
        for k1,v1 in pairs(special) do
            if not table.contains(rooms,v1) then
                tmp[k1] = {v1, getRoomName(v1)}
            end
        end
        if not table.is_empty(tmp) then
            tbl.special[v] = tmp
        end
    end
    local path = profilePath.."/"..string.gsub(string.lower(name),"%s","_")..".dat"
    table.save(path,tbl)
    map.echo("Area " .. name .. " exported to " .. path)
end

function map.import_area(name)
    name = profilePath .. "/" .. string.gsub(string.lower(name),"%s","_") .. ".dat"
    local tbl = {}
    table.load(name,tbl)
    if table.is_empty(tbl) then
        show_err("No file found")
    end
    local areas = getAreaTable()
    local areaID = areas[tbl.name] or addAreaName(tbl.name)
    local rooms = {}
    local ID
    for k,v in pairs(tbl.rooms) do
        ID = createRoomID()
        rooms[k] = ID
        addRoom(ID)
        setRoomName(ID,v.name)
        setRoomArea(ID,areaID)
        setRoomCoordinates(ID,unpack(v.coords))
        if type(v.stubs) == "table" then
            for i,j in pairs(v.stubs) do
                setExitStub(ID,j,true)
            end
        end
        for i,j in pairs(v.doors) do
            setDoor(ID,i,j)
        end
        setRoomUserData(ID,"portals",v.portals)
    end
    for k,v in pairs(tbl.rooms) do
        for i,j in pairs(v.exits) do
            if rooms[j] then
                connect_rooms(rooms[k],rooms[j],i)
            end
        end
        for i,j in pairs(v.special) do
            if rooms[j] then
                addSpecialExit(rooms[k],rooms[j],i)
            end
        end
    end
    for k,v in pairs(tbl.exits) do
        for i,j in pairs(v) do
            if getRoomName(j[1]) == j[2] then
                connect_rooms(rooms[k],j[1],i)
            end
        end
    end
    for k,v in pairs(tbl.special) do
        for i,j in pairs(v) do
            addSpecialExit(k,j[1],i)
        end
    end
    map.fix_portals()
    map.echo("Area " .. tbl.name .. " imported from " .. name)
end

function map.set_recall()
    -- assigned the current room to be recall for the current character
    map.save.recall[map.character] = map.currentRoom
    table.save(profilePath .. "/map downloads/map_save.dat",map.save)
    map.echo("Recall room set to: " .. getRoomName(map.currentRoom) .. ".")
end

function map.set_portal(name, is_auto)
    -- creates a new portal in the room
    if map.mapping then
        if not string.starts(name,"-f ") then
            find_portal = name
        else
            name = string.gsub(name,"^-f ","")
            force_portal = name
        end
        move_queue = {name}
        if not is_auto then
            send(name)
        end
    else
        map.echo("Not mapping",false,true)
    end
end

function map.set_mode(mode)
    -- switches mapping modes
    if not table.contains({"simple","normal","complex"},mode) then
        show_err("Invalid Map Mode, must be 'simple', 'normal', or 'complex'.")
    end
    map.set("mode", mode)
    map.echo("Current mode set to: " .. mode)
end

function map.start_mapping(area_name)
    -- starts mapping, and sets the current area to the given one, or uses the current one
    if not map.currentName then
        show_err("Room detection not yet working, see &lt;yellow&gt;map basics&lt;reset&gt; for guidance.")
    end
    local rooms
    move_queue = {}
    area_name = area_name ~= "" and area_name or nil
    if map.currentArea and not area_name then
        local areas = getAreaTableSwap()
        area_name = areas[map.currentArea]
    end
    if not area_name then
        show_err("No current area name, set one like this: &lt;yellow&gt;start mapping &lt;area name&gt;&lt;reset&gt;")
    end
    map.echo("Now mapping in area: " .. area_name)
    map.set("mapping", true)
    find_area(area_name)
    rooms = find_room(map.currentName, map.currentArea)
    if table.is_empty(rooms) then
        if map.currentRoom and getRoomName(map.currentRoom) == map.currentName then
            map.set_area(area_name)
        else
            create_room(map.currentName, map.currentExits, nil, {0,0,0})
        end
    elseif map.currentRoom and map.currentArea ~= getRoomArea(map.currentRoom) then
        map.set_area(area_name)
    end
end

function map.stop_mapping()
    map.set("mapping", false)
    map.echo("Mapping off.")
end

function map.clear_moves()
    move_queue = {}
    map.echo("Move queue cleared.")
end

function map.set_area(name)
    -- assigns the current room to the area given, creates the area if necessary
    if map.mapping then
        find_area(name)
        if map.currentRoom and getRoomArea(map.currentRoom) ~= map.currentArea then
            setRoomArea(map.currentRoom,map.currentArea)
            set_room(map.currentRoom)
        end
    else
        map.echo("Not mapping",false,true)
    end
end

function map.set_door(dir,status,one_way)
    -- adds a door on a given exit
    if map.mapping then
        if not map.currentRoom then
            show_err("Make Door: No room found.")
        end
        dir = exitmap[dir] or dir
        if not stubmap[dir] then
            show_err("Make Door: Invalid direction.")
        end
        status = (status ~= "" and status) or "closed"
        one_way = (one_way ~= "" and one_way) or "no"
        if not table.contains({"yes","no"},one_way) then
            show_err("Make Door: Invalid one-way status, must be yes or no.")
        end

        local exits = getRoomExits(map.currentRoom)
        local exit
        -- check handling of custom exits here
        for i = 13,#stubmap do
            exit = "exit " .. stubmap[i]
            exits[stubmap[i]] = tonumber(getRoomUserData(map.currentRoom,exit))
        end
        local target_room = exits[dir]
        if target_room then
            exits = getRoomExits(target_room)
            -- check handling of custom exits here
            for i = 13,#stubmap do
                exit = "exit " .. stubmap[i]
                exits[stubmap[i]] = tonumber(getRoomUserData(target_room,exit))
            end
        end
        if one_way == "no" and (target_room and exits[reverse_dirs[dir]] == map.currentRoom) then
            add_door(target_room,reverse_dirs[dir],status)
        end
        add_door(map.currentRoom,dir,status)
        map.echo(string.format("Adding %s door to the %s", status, dir))
    else
        map.echo("Not mapping",false,true)
    end
end

function map.shift_room(dir)
    -- shifts a room around on the map
    if map.mapping then
        dir = exitmap[dir] or (table.contains(exitmap,dir) and dir)
        if not dir then
            show_err("Shift Room: Exit not found")
        end
        local x,y,z = getRoomCoordinates(map.currentRoom)
        dir = stubmap[dir]
        local coords = coordmap[dir]
        x = x + coords[1]
        y = y + coords[2]
        z = z + coords[3]
        setRoomCoordinates(map.currentRoom,x,y,z)
        centerview(map.currentRoom)
        map.echo("Shifting room",true)
    else
        map.echo("Not mapping",false,true)
    end
end

local function check_link(firstID, secondID, dir)
    -- check to see if two rooms are connected in a given direction
    if not firstID then error("Check Link Error: No first ID",2) end
    if not secondID then error("Check Link Error: No second ID",2) end
    local name = getRoomName(firstID)
    local exits1 = table.union(getRoomExits(firstID),getRoomStubs(firstID))
    local exits2 = table.union(getRoomExits(secondID),getRoomStubs(secondID))
    local exit
    -- check handling of custom exits here
    for i = 13,#stubmap do
        exit = "exit " .. stubmap[i]
        exits1[stubmap[i]] = tonumber(getRoomUserData(firstID,exit))
        exits2[stubmap[i]] = tonumber(getRoomUserData(secondID,exit))
    end
    local checkID = exits2[reverse_dirs[dir]]
    local exits = {}
    for k,v in pairs(exits1) do
        table.insert(exits,k)
    end
    return checkID and check_room(checkID,name,exits)
end

function map.find_me(name, exits, dir, manual)
    -- tries to locate the player using the current room name and exits, and if provided, direction of movement
    -- if direction of movement is given, narrows down possibilities using previous room info
    if move ~= "recall" then move_queue = {} end
    local check = dir and map.currentRoom and table.contains(exitmap,dir)
    name = name or map.currentName
    exits = exits or map.currentExits
    if not name and not exits then
        show_err("Room not found, complete room name and exit data not available.")
    end
    local rooms = find_room(name)
    local match_IDs = {}
    for k,v in pairs(rooms) do
        if check_room(k, name, exits) then
            table.insert(match_IDs,k)
        end
    end
    rooms = match_IDs
    match_IDs = {}
    if table.size(rooms) &gt; 1 and check then
        for k,v in pairs(rooms) do
            if check_link(map.currentRoom,v,dir) then
                table.insert(match_IDs,v)
            end
        end
    elseif random_move then
        for k,v in pairs(getRoomExits(map.currentRoom)) do
            if check_room(v,map.currentName,map.currentExits) then
                table.insert(match_IDs,v)
            end
        end
    end
    if table.size(match_IDs) == 0 then
        match_IDs = rooms
    end
    if table.contains(match_IDs,map.currentRoom) then
        match_IDs = {map.currentRoom}
    end
    if not table.is_empty(match_IDs) and not find_portal then
        set_room(match_IDs[1])
        map.echo("Room found, ID: " .. match_IDs[1],true)
    elseif find_portal then
        if not table.is_empty(match_IDs) then
            map.echo("Found portal destination, linking rooms",false,false,true)
            addSpecialExit(map.currentRoom,match_IDs[1],find_portal)
            local portals = getRoomUserData(match_IDs[1],"portals") or ""
            portals = portals .. "," .. tostring(map.currentRoom)..":"..find_portal
            setRoomUserData(match_IDs[1],"portals",portals)
            set_room(match_IDs[1])
            map.echo("Room found, ID: " .. match_IDs[1],true)
        else
            map.echo("Creating portal destination",false,false,true)
            create_room(map.currentName, map.currentExits, nil, {getRoomCoordinates(map.currentRoom)})
        end
        find_portal = false
    elseif table.is_empty(match_IDs) then
        if not manual then
            map.echo("Room not found", true, true)
        else
            map.echo("Room not found", false, true)
        end
    end
end

function map.fix_portals()
    if map.mapping then
        -- used to clear and update data for portal back-referencing
        local rooms = getRooms()
        local portals
        for k,v in pairs(rooms) do
            setRoomUserData(k,"portals","")
        end
        for k,v in pairs(rooms) do
            for cmd,room in pairs(getSpecialExitsSwap(k)) do
                portals = getRoomUserData(room,"portals") or ""
                if portals ~= "" then portals = portals .. "," end
                portals = portals .. tostring(k) .. ":" .. cmd
                setRoomUserData(room,"portals",portals)
            end
        end
        map.echo("Portals Fixed")
    else
        map.echo("Not mapping",false,true)
    end
end

function map.merge_rooms()
    -- used to combine essentially identical rooms with the same coordinates
    -- typically, these are generated due to mapping errors
    if map.mapping then
        map.echo("Merging rooms")
        local x,y,z = getRoomCoordinates(map.currentRoom)
        local rooms = getRoomsByPosition(map.currentArea,x,y,z)
        local exits, portals, room, cmd, curportals
        local room_count = 1
        for k,v in pairs(rooms) do
            if v ~= map.currentRoom then
                if getRoomName(v) == getRoomName(map.currentRoom) then
                    room_count = room_count + 1
                    for k1,v1 in pairs(getRoomExits(v)) do
                        setExit(map.currentRoom,v1,stubmap[k1])
                        exits = getRoomExits(v1)
                        if exits[reverse_dirs[k1]] == v then
                            setExit(v1,map.currentRoom,stubmap[reverse_dirs[k1]])
                        end
                    end
                    for k1,v1 in pairs(getDoors(v)) do
                        setDoor(map.currentRoom,k1,v1)
                    end
                    for k1,v1 in pairs(getSpecialExitsSwap(v)) do
                        addSpecialExit(map.currentRoom,v1,k1)
                    end
                    portals = getRoomUserData(v,"portals") or ""
                    if portals ~= "" then
                        portals = string.split(portals,",")
                        for k1,v1 in ipairs(portals) do
                            room,cmd = unpack(string.split(v1,":"))
                            addSpecialExit(tonumber(room),map.currentRoom,cmd)
                            curportals = getRoomUserData(map.currentRoom,"portals") or ""
                            if not string.find(curportals,room) then
                                curportals = curportals .. "," .. room .. ":" .. cmd
                                setRoomUserData(map.currentRoom,"portals",curportals)
                            end
                        end
                    end
                    -- check handling of custom exits here for doors and exits, and reverse exits
                    for i = 13,#stubmap do
                        local door = "door " .. stubmap[i]
                        local tmp = tonumber(getRoomUserData(v,door))
                        if tmp then
                            setRoomUserData(map.currentRoom,door,tmp)
                        end
                        local exit = "exit " .. stubmap[i]
                        tmp = tonumber(getRoomUserData(v,exit))
                        if tmp then
                            setRoomUserData(map.currentRoom,exit,tmp)
                            if tonumber(getRoomUserData(tmp, "exit " .. reverse_dirs[stubmap[i]])) == v then
                                setRoomUserData(tmp, exit, map.currentRoom)
                            end
                        end
                    end
                    deleteRoom(v)
                end
            end
        end
        if room_count &gt; 1 then
            map.echo(room_count .. " rooms merged", true)
        end
    else
        map.echo("Not mapping",false,true)
    end
end

function map.findAreaID(areaname, exact)
    local areaname = areaname:lower()
    local list = getAreaTable()

    -- iterate over the list of areas, matching them with substring match.
    -- if we get match a single area, then return it's ID, otherwise return
    -- 'false' and a message that there are than one are matches
    local returnid, fullareaname, multipleareas = nil, nil, {}
    for area, id in pairs(list) do
        if (not exact and area:lower():find(areaname, 1, true)) or (exact and areaname == area:lower()) then
            returnid = id
            fullareaname = area
            multipleareas[#multipleareas+1] = area
        end
    end

    if #multipleareas == 1 then
        return returnid, fullareaname
    else
        return nil, nil, multipleareas
    end
end

function map.echoRoomList(areaname, exact)
    local areaid, msg, multiples
    local listcolor, othercolor = "DarkSlateGrey","LightSlateGray"
    if tonumber(areaname) then
        areaid = tonumber(areaname)
        msg = getAreaTableSwap()[areaid]
    else
        areaid, msg, multiples = map.findAreaID(areaname, exact)
    end
    if areaid then
        local roomlist, endresult = getAreaRooms(areaid) or {}, {}

        -- obtain a room list for each of the room IDs we got
        local getRoomName = getRoomName
        for _, id in pairs(roomlist) do
            endresult[id] = getRoomName(id)
        end
        roomlist[#roomlist+1], roomlist[0] = roomlist[0], nil
        -- sort room IDs so we can display them in order
        table.sort(roomlist)

        local echoLink, format, fg, echo = echoLink, string.format, fg, cecho
        -- now display something half-decent looking
        cecho(format("&lt;%s&gt;List of all rooms in &lt;%s&gt;%s&lt;%s&gt; (areaID &lt;%s&gt;%s&lt;%s&gt; - &lt;%s&gt;%d&lt;%s&gt; rooms):\n",
            listcolor, othercolor, msg, listcolor, othercolor, areaid, listcolor, othercolor, #roomlist, listcolor))
        -- use pairs, as we can have gaps between room IDs
        for _, roomid in pairs(roomlist) do
            local roomname = endresult[roomid]
            cechoLink(format("&lt;%s&gt;%7s",othercolor,roomid), 'map.speedwalk('..roomid..')',
                format("Go to %s (%s)", roomid, tostring(roomname)), true)
            cecho(format("&lt;%s&gt;: &lt;%s&gt;%s&lt;%s&gt;.\n", listcolor, othercolor, roomname, listcolor))
        end
    elseif not areaid and #multiples &gt; 0 then
        local allareas, format = getAreaTable(), string.format
        local function countrooms(areaname)
            local areaid = allareas[areaname]
            local allrooms = getAreaRooms(areaid) or {}
            local areac = (#allrooms or 0) + (allrooms[0] and 1 or 0)
            return areac
        end
        map.echo("For which area would you want to list rooms for?")
        for _, areaname in ipairs(multiples) do
            echo("  ")
            setUnderline(true)
            cechoLink(format("&lt;%s&gt;%-40s (%d rooms)", othercolor, areaname, countrooms(areaname)),
                'map.echoRoomList("'..areaname..'", true)', "Click to view the room list for "..areaname, true)
            setUnderline(false)
            echo("\n")
        end
    else
        map.echo(string.format("Don't know of any area named '%s'.", areaname),false,true)
    end
    resetFormat()
end

function map.echoAreaList()
    local totalroomcount = 0
    local rlist = getAreaTableSwap()
    local listcolor, othercolor = "DarkSlateGrey","LightSlateGray"

    -- count the amount of rooms in an area, taking care to count the room in the 0th
    -- index as well if there is one
    -- saves the total room count on the side as well
    local function countrooms(areaid)
        local allrooms = getAreaRooms(areaid) or {}
        local areac = (#allrooms or 0) + (allrooms[0] and 1 or 0)
        totalroomcount = totalroomcount + areac
        return areac
    end

    local getAreaRooms, cecho, fg, echoLink, format = getAreaRooms, cecho, fg, echoLink, string.format
    cecho(format("&lt;%s&gt;List of all areas we know of (click to view room list):\n",listcolor))
    for id = 1,table.maxn(rlist) do
        if rlist[id] then
            cecho(format("&lt;%s&gt;%7d ", othercolor, id))
            fg(listcolor)
            echoLink(format("%-40s (%d rooms)",rlist[id],countrooms(id)), 'map.echoRoomList("'..id..'", true)',
                "View the room list for "..rlist[id], true)
            echo("\n")
        end
    end
    cecho(string.format("&lt;%s&gt;Total amount of rooms in this map: %s\n", listcolor, totalroomcount))
end

function map.search_timer_check()
    if find_prompt then
        map.echo("Prompt not auto-detected, use 'map prompt' to set a prompt pattern.",false,true)
        find_prompt = false
    end
end

function map.find_prompt()
    find_prompt = true
    map.echo("Searching for prompt.")
    send("\n", false)
    tempTimer(5, "map.search_timer_check()")
end

function map.make_prompt_pattern(str)
    if not str:starts("^") then str = "^"..str end
    map.save.prompt_pattern[map.character] = str
    find_prompt = false
    table.save(profilePath .. "/map downloads/map_save.dat",map.save)
    map.echo("Prompt pattern set: " .. str)
end

function map.make_ignore_pattern(str)
    map.save.ignore_patterns = map.save.ignore_patterns or {}
    if not table.contains(map.save.ignore_patterns,str) then
        table.insert(map.save.ignore_patterns,str)
        map.echo("Ignore pattern added: " .. str)
    else
        table.remove(map.save.ignore_patterns, table.index_of(map.save.ignore_patterns, str))
        map.echo("Ignore pattern removed: " .. str)
    end
    table.save(profilePath .. "/map downloads/map_save.dat",map.save)
end

local function grab_line()
    table.insert(lines,line)
    if map.save.prompt_pattern[map.character] and string.match(line, map.save.prompt_pattern[map.character]) then
        if map.prompt.exits and map.prompt.exits ~= "" then
            raiseEvent("onNewRoom")
        end
        print_wait_echoes()
        map.echo("Prompt captured",true)
    end
    if find_prompt then
        for k,v in ipairs(map.configs.prompt_test_patterns) do
            if string.match(line,v) then
                map.save.prompt_pattern[map.character] = v
                table.save(profilePath .. "/map downloads/map_save.dat",map.save)
                find_prompt = false
                map.echo("Prompt found")
                break
            end
        end
    end
end

local function name_search()
    local line_count = #lines + 1
    local room_name, cur_line, last_line
    local prompt_pattern = map.save.prompt_pattern[map.character]
    if not prompt_pattern then return end
    while not room_name do
        line_count = line_count - 1
        if not lines[line_count] then break end
        cur_line = lines[line_count]
        for k,v in ipairs(map.save.ignore_patterns) do
	          cur_line = string.trim(string.gsub(cur_line,v,""))
        end
        if string.find(cur_line,prompt_pattern) then
            cur_line = string.trim(string.gsub(cur_line,prompt_pattern,""))
            if cur_line ~= "" then
                room_name = cur_line
            else
                room_name = last_line
            end
        elseif line_count == 1 then
            cur_line = string.trim(cur_line)
            if cur_line ~= "" then
                room_name = cur_line
            else
                room_name = last_line
            end
        elseif not string.match(cur_line,"^%s*$") then
            last_line = cur_line
        end
    end
    lines = {}
    room_name = room_name:sub(1,100)
    return room_name
end

local function handle_exits(exits)
    local room = map.prompt.room or name_search()
    exits = map.prompt.exits or exits
    exits = string.lower(exits)
    exits = string.gsub(exits,"%a+", exitmap)
    if room then
        map.echo("Room Name Captured: " .. room, true)
        room = string.trim(room)
        capture_room_info(room, exits)
        map.prompt.room = nil
        map.prompt.exits = nil
    end
end

local continue_walk, timerID
continue_walk = function(new_room)
    if not walking then return end
    -- calculate wait time until next command, with randomness
    local wait = map.configs.speedwalk_delay or 0
    if wait &gt; 0 and map.configs.speedwalk_random then
        wait = wait * (1 + math.random(0,100)/100)
    end
    -- if no wait after new room, move immediately
    if new_room and map.configs.speedwalk_wait and wait == 0 then
        new_room = false
    end
    -- send command if we don't need to wait
    if not new_room then
        send(table.remove(map.walkDirs,1))
        -- check to see if we are done
        if #map.walkDirs == 0 then
            walking = false
        end
    end
    -- make tempTimer to send next command if necessary
    if walking and (not map.configs.speedwalk_wait or (map.configs.speedwalk_wait and wait &gt; 0)) then
        if timerID then killTimer(timerID) end
        timerID = tempTimer(wait, function() continue_walk() end)
    end
end

function map.speedwalk(roomID, walkPath, walkDirs)
    roomID = roomID or speedWalkPath[#speedWalkPath]
    getPath(map.currentRoom, roomID)
    walkPath = speedWalkPath
    walkDirs = speedWalkDir
    if #speedWalkPath == 0 then
        map.echo("No path to chosen room found.",false,true)
        return
    end
    table.insert(walkPath, 1, map.currentRoom)
    -- go through dirs to find doors that need opened, etc
    -- add in necessary extra commands to walkDirs table
    local k = 1
    repeat
        local id, dir = walkPath[k], walkDirs[k]
        if exitmap[dir] or short[dir] then
            local door = check_doors(id, exitmap[dir] or dir)
            local status = door and door[dir]
            if status and status &gt; 1 then
                -- if locked, unlock door
                if status == 3 then
                    table.insert(walkPath,k,id)
                    table.insert(walkDirs,k,"unlock " .. (exitmap[dir] or dir))
                    k = k + 1
                end
                -- if closed, open door
                table.insert(walkPath,k,id)
                table.insert(walkDirs,k,"open " .. (exitmap[dir] or dir))
                k = k + 1
            end
        end
        k = k + 1
    until k &gt; #walkDirs
    if map.configs.use_translation then
        for k, v in ipairs(walkDirs) do
            walkDirs[k] = map.configs.lang_dirs[v] or v
        end
    end
    -- perform walk
    walking = true
    if map.configs.speedwalk_wait or map.configs.speedwalk_delay &gt; 0 then
        map.walkDirs = walkDirs
        continue_walk()
    else
        for _,dir in ipairs(walkDirs) do
            send(dir)
        end
        walking = false
    end
end

function doSpeedWalk()
    if #speedWalkPath ~= 0 then
        map.speedwalk(nil, speedWalkPath, speedWalkDir)
    else
        map.echo("No path to chosen room found.",false,true)
    end
end

local function check_version()
    downloading = false
    local path = profilePath .. "/map downloads/versions.lua"
    local versions = {}
    table.load(path, versions)
    local pos = table.index_of(versions, map.version) or 0
    if pos ~= #versions then
        enableAlias("Map Update Alias")
        map.echo(string.format("The Generic Mapping Script is currently &lt;red&gt;%d&lt;reset&gt; versions behind.",#versions - pos))
        map.echo("To update now, please type: &lt;yellow&gt;map update&lt;reset&gt;")
    end
    map.update_timer = tempTimer(3600, [[map.checkVersion()]])
end

function map.checkVersion()
    if map.update_timer then
        killTimer(map.update_timer)
        map.update_timer = nil
    end
    if not map.update_waiting and map.configs.download_path ~= "" then
        local path, file = profilePath .. "/map downloads", "/versions.lua"
        downloading = true
        downloadFile(path .. file, map.configs.download_path .. file)
        map.update_waiting = true
    end
end

local function update_version()
    downloading = false
    local path = profilePath .. "/map downloads/generic_mapper.xml"
    disableAlias("Map Update Alias")
    uninstallPackage("generic_mapper")
    installPackage(path)
    map.echo("Generic Mapping Script updated successfully.")
end

function map.updateVersion()
    local path, file = profilePath .. "/map downloads", "/generic_mapper.xml"
    downloading = true
    downloadFile(path .. file, map.configs.download_path .. file)
end

function map.showMap(shown)
    local configs = map.configs.map_window
    shown = shown or not configs.shown
    map.configs.map_window.shown = shown
    local x, y, w, h, origin = configs.x, configs.y, configs.w, configs.h, configs.origin
    if string.find(origin,"bottom") then
        if y == 0 or y == "0%" then
            y = h
        end
        if type(y) == "number" then
            y = -y
        else
            y = "-"..y
        end
    end
    if string.find(origin,"right") then
        if x == 0 or x == "0%" then
            x = w
        end
        if type(x) == "number" then
            x = -x
        else
            x = "-"..x
        end
    end
    local mapper = Geyser.Mapper:new({name = "my_mapper", x = x, y = y, w = w, h = h})
    mapper:resize(w,h)
    mapper:move(x,y)
    if shown then
        mapper:show()
    else
        mapper:hide()
    end
end

function map.eventHandler(event,...)
    if event == "onNewRoom" then
        handle_exits(arg[1])
        if walking and map.configs.speedwalk_wait then
            continue_walk(true)
        end
    elseif event == "onPrompt" then
        if map.prompt.exits and map.prompt.exits ~= "" then
            raiseEvent("onNewRoom")
        end
        print_wait_echoes()
        map.echo("Prompt Captured",true)
    elseif event == "onMoveFail" then
        map.echo("onMoveFail",true)
        table.remove(move_queue,1)
    elseif event == "onVisionFail" then
        map.echo("onVisionFail",true)
        vision_fail = true
        capture_room_info()
    elseif event == "onRandomMove" then
        map.echo("onRandomMove",true)
        random_move = true
        move_queue = {}
    elseif event == "onForcedMove" then
        map.echo("onForcedMove",true)
        capture_move_cmd(arg[1],arg[2]=="true")
    elseif event == "onNewLine" then
        grab_line()
    elseif event == "sysDataSendRequest" then
        capture_move_cmd(arg[1])
        -- check to prevent multiple version checks in a row without user intervention
        if map.update_waiting and map.update_timer then
            map.update_waiting = nil
        -- check to ensure version check cycle is started
        elseif not map.update_waiting and not map.update_timer then
            map.checkVersion()
        end
    elseif event == "sysDownloadDone" and downloading then
        local file = arg[1]
        if string.ends(file,"/map.dat") then
            loadMap(file)
            downloading = false
            map.echo("Map File Loaded.")
        elseif string.ends(file,"/versions.lua") then
            check_version()
        elseif string.ends(file,"/generic_mapper.xml") then
            update_version()
        end
    elseif event == "sysConnectionEvent" or event == "sysInstall" then
        config()
    elseif event == "mapOpenEvent" then
        if not help_shown and not map.save.prompt_pattern[map.character or ""] then
            map.show_help("quick_start")
            help_shown = true
        end
    elseif event == "mapStop" then
        map.set("mapping", false)
        walking = false
        map.echo("Mapping and speedwalking stopped.")
    end
end

registerAnonymousEventHandler("sysDownloadDone", "map.eventHandler")
registerAnonymousEventHandler("sysConnectionEvent", "map.eventHandler")
registerAnonymousEventHandler("sysInstall", "map.eventHandler")
registerAnonymousEventHandler("sysDataSendRequest", "map.eventHandler")
registerAnonymousEventHandler("onMoveFail", "map.eventHandler")
registerAnonymousEventHandler("onVisionFail", "map.eventHandler")
registerAnonymousEventHandler("onRandomMove", "map.eventHandler")
registerAnonymousEventHandler("onForcedMove", "map.eventHandler")
registerAnonymousEventHandler("onNewRoom", "map.eventHandler")
registerAnonymousEventHandler("onNewLine", "map.eventHandler")
registerAnonymousEventHandler("mapOpenEvent", "map.eventHandler")
registerAnonymousEventHandler("mapStop", "map.eventHandler")
registerAnonymousEventHandler("onPrompt", "map.eventHandler")
</script>
				<eventHandlerList />
			</Script>
		</ScriptGroup>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>send-text-to-all-games</name>
			<packageName>send-text-to-all-games</packageName>
			<script></script>
			<eventHandlerList />
			<Script isActive="yes" isFolder="no">
				<name>sysSendAllProfiles</name>
				<packageName></packageName>
				<script>function sysSendAllProfiles(_, text)
  expandAlias(text)
end</script>
				<eventHandlerList>
					<string>sysSendAllProfiles</string>
				</eventHandlerList>
			</Script>
		</ScriptGroup>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>deleteOldProfiles</name>
			<packageName>deleteOldProfiles</packageName>
			<script></script>
			<eventHandlerList />
			<Script isActive="yes" isFolder="no">
				<name>deleteOldProfiles script</name>
				<packageName></packageName>
				<script>function deleteOldProfiles(keepdays_arg, delete_maps)

--[[
	Deletes old profiles/maps in the "current"/"map" folders of the Mudlet home directory.
	The following files are NOT deleted:
	- Files newer than the amount of days specified as an argument to deleteOldProfiles(), or 31 days if not specified.	
	- One file for every month before that. Specifically: The first available file of every month prior to this.
	Setting the second argument to true will delete maps instead of profiles. (e.g. deleteOldProfiles(10, true))
--]]

	local keepdays = tonumber(keepdays_arg) or 31
	local profile_table = {}
	local used_last_mod_months = {}
	local slash = (string.char(getMudletHomeDir():byte()) == "/") and "/" or "\\"
	local dirpath = getMudletHomeDir()..slash..(delete_maps and "map" or "current")
	local delnum = 0

	-- Traverse the profiles folder and create a table of files:
	for filename in lfs.dir(dirpath) do
		if filename~="." and filename~=".." then
			profile_table[#profile_table+1] = {name = filename, last_mod = lfs.attributes(dirpath..slash..filename, "modification")}
		end
	end

	-- Sort the table according to last modification date from old to new:
	table.sort(profile_table, function (a,b) return a.last_mod &lt; b.last_mod end)

	echo(string.format("\nDeleting old %s. Files newer than %d days and one profile for every month before that will be kept.", delete_maps and "maps" or "profiles", keepdays))
	for i,v in ipairs(profile_table) do
		local days = math.floor(os.difftime(os.time(), v.last_mod)/86400)
		local last_mod_month = os.date("%Y/%m", v.last_mod)
		if days &gt; keepdays then
			-- For profiles older than X days, check if we already kept a table for this month:
			if not table.contains(used_last_mod_months, last_mod_month) then
				-- If not, do nothing and mark this month as "kept".
				used_last_mod_months[#used_last_mod_months+1] = last_mod_month
			else
				-- Otherwise remove the file:
				local success, errorstring = os.remove(dirpath..slash..v.name)
				if success then
					delnum = delnum + 1
				else
					cecho("\n&lt;red&gt;ERROR: "..errorstring)
				end
			end
		end
	end
	echo(string.format("\nDeletion complete. %d/%d files were removed successfully.", delnum, #profile_table))
end
</script>
				<eventHandlerList />
			</Script>
		</ScriptGroup>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>GUI</name>
			<packageName></packageName>
			<script>-- Jor'Mox's GUIframe Script
-- 3/07/2019
-- v1.4.2

-- To resize frames or move tabs, right click and drag either the resize label or the tab
-- until the desired result is achieved.

-- To add a window to a frame for the script to manage, use the
-- GUIframe.addWindow(window, name, container, hideText) function, where the window
-- variable contains the Geyser object you want to add, the name variable contains
-- the name you want it to be referred to as, which also is used as the text printed
-- on the associated tab that is created, the container variable is a string containing
-- one of the following: bottom, top, topleft, topright, bottomleft, bottomright,
-- and the hideText variable is an optional boolean which, if true, prevents text being
-- written on the tab for this window.

-- To remove a window from GUIframe, use the GUIframe.removeWindow(name, container)
-- function, where the name variable is the same name you gave the window when adding it,
-- and the optional container variable is a string specifying which container to remove
-- the window from. If no container is specified, the window is removed regardless of
-- which container it is in.

-- Resizing of frames can be enabled or disabled using the GUIframe.enable(side) and
-- GUIframe.disable(side, hide) functions respectively. If the second argument to
-- GUIframe.disable is false, then the entire set of frames on that side is hidden, and
-- the border is adjusted as if that side had be resized to zero.

-- To save and load settings, use the GUIframe.saveSettings() and
-- GUIframe.loadSettings(redraw) functions. If the redraw argument is true, the border
-- background color is changed to black to force the area of the borders to be redrawn.
-- Additionally, the GUIframe.reinitialize() function can be used to force the script to
-- initialize itself again, going back to default settings.

-- To activate a tab without it being clicked, use the GUIframe.activate(name) function.
-- And to apply a stylesheet to a tab that is different from the default stylesheet, use
-- the GUIframe.styleTab(name, style) function, where the style variable contains a string
-- with the CSS to be applied. Since tabs are styled only when created or when this
-- function is used, there should be no concern with this styling being overwritten.

GUIframe = GUIframe or {}

local mainW, mainH = getMainWindowSize()
local halfW, halfH = math.floor(mainW/2), math.floor(mainH/2)

GUIframe.configs = GUIframe.configs or {}

GUIframe.defaults = {
    tabHeight = 20,
    tabStyle = [[
        background-color: green;
        border-width: 2px;
        border-style: outset;
        border-color: limegreen;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        margin-right: 1px;
        margin-left: 1px;
        qproperty-alignment: 'AlignCenter | AlignCenter';]],
    tabEchoStyle = '&lt;center&gt;&lt;p style="font-size:14px; color:white"&gt;',
    leftStartWidth = 50,
    leftStartHeight = halfH,
    rightStartWidth = 50,
    rightStartHeight = halfH,
    topStartHeight = 50,
    bottomStartHeight = 50,
    resizeHeight = 30,
    resizeWidth = 30,
    resizeHoverImage = "/imgs/blue_arrows.png",
    resizeRestImage = "/imgs/blue_arrows_30t.png",
    borderOffset = 5,
}

GUIframe.windows = GUIframe.windows or {}
GUIframe.tabs = GUIframe.tabs or {}
GUIframe.tabCoords = GUIframe.tabCoords or {}
GUIframe.sides = GUIframe.sides or {left = 'enabled', right = 'enabled', top = 'enabled', bottom = 'enabled'}

local resize_style = "border-image: url(%s%s);"

local configs = table.update(GUIframe.defaults, GUIframe.configs)
local tabsInfo, containerInfo, resizeInfo

local container_names = {'topLeftContainer', 'bottomLeftContainer', 'topRightContainer',
    'bottomRightContainer', 'bottomContainer', 'topContainer'}
local tab_names = {'topLeftTabs', 'topRightTabs', 'bottomLeftTabs', 'bottomRightTabs'}
local resizeLabels = {'resizeLeft', 'resizeRight', 'resizeTop', 'resizeBottom'}
local sides = {"top","bottom","left","right"}
local side_containers = {
    left = {"topLeftContainer","bottomLeftContainer","topLeftTabs","bottomLeftTabs"},
    right = {"topRightContainer","bottomRightContainer","topRightTabs","bottomRightTabs"},
    top = {"topContainer"},
    bottom = {"bottomContainer"}
}

local function get_window_coords(win, update) -- gets coords for window, stores data in tabCoords table as needed
    local x, y = win:get_x(), win:get_y()
    local w, h = win:get_width(), win:get_height()
    if update then
        GUIframe.tabCoords[win.name]  = {x = x, y = y, w = w, h = h}
    end
    return x, y, w, h
end

local function check_overlap(tab, x, y) -- checks to see if given coords overlap tab or tab container
    if type(tab) == "string" then tab = GUIframe[tab] or GUIframe.tabs[tab] end
    if tab.hidden or tab.auto_hidden then return false end
    local info = GUIframe.tabCoords[tab.name]
    local x1, y1 = info.x, info.y
    local x2, y2 = x1 + info.w, y1 + info.h
    return (x &gt;= x1 and x &lt;= x2 and y &gt;= y1 and y &lt;= y2)
end

local function update_tab(tab, x, y, w, h) -- resizes and moves tab and updates tab coords table
    tab:move(x, y)
    tab:resize(w,h)
    local info = GUIframe.tabCoords[tab.name] or {}
    info.x, info.y = tab:get_x(), tab:get_y()
    info.w, info.h = tab:get_width(), tab:get_height()
    if table.contains(tab_names, tab.name) then
        info.container = true
    end
    GUIframe.tabCoords[tab.name] = info
end

local function get_containers(pos)
    if type(pos) == "table" then pos = pos.name end
    for _,w in ipairs({'right','left','container','tabs'}) do
        pos = pos:gsub(w,w:title())
    end
    local con, tab
    if string.find(pos,"Container") then
        con = GUIframe[pos]
        if not con then return end
        tabs = con.tabs
    elseif string.find(pos,"Tabs") then
        tabs = GUIframe[pos]
        if not tab then return end
        con = tabs.con
    else
        con = GUIframe[pos.."Container"]
        tabs = GUIframe[pos.."Tabs"]
    end
    return con, tabs
end

local function config()
    configs = table.update(GUIframe.defaults, GUIframe.configs)
    GUIframe.windows = {}
    GUIframe.tabCoords = {}

    tabsInfo = {
        topLeftTabs = {name = 'topLeftTabs', x = 0, y = 0, width = configs.leftStartWidth,
            height = configs.tabHeight},
        bottomLeftTabs = {name = 'bottomLeftTabs', x = 0, y = configs.leftStartHeight,
            width = configs.leftStartWidth, height = configs.tabHeight},
        topRightTabs = {name = 'topRightTabs', x = mainW - configs.rightStartWidth, y = 0,
            width = configs.rightStartWidth, height = configs.tabHeight},
        bottomRightTabs = {name = 'bottomRightTabs', x = mainW - configs.rightStartWidth,
            y = configs.rightStartHeight, width = configs.rightStartWidth, height = configs.tabHeight},
    }
    containerInfo = {
        topLeftContainer = {name = 'topLeftContainer', x = 0, y = configs.tabHeight,
            width = configs.leftStartWidth, height = configs.leftStartHeight - configs.tabHeight},
        bottomLeftContainer = {name = 'bottomLeftContainer', x = 0, y = configs.leftStartHeight + configs.tabHeight,
            width = configs.leftStartWidth, height = configs.leftStartHeight - configs.tabHeight},
        topRightContainer = {name = 'topRightContainer', x = mainW - configs.rightStartWidth,
            y = configs.tabHeight, width = configs.rightStartWidth,
            height = configs.rightStartHeight - configs.tabHeight},
        bottomRightContainer = {name = 'bottomRightContainer', x = mainW - configs.rightStartWidth,
            y = configs.rightStartHeight + configs.tabHeight, width = configs.rightStartWidth,
            height = configs.rightStartHeight - configs.tabHeight},
        bottomContainer = {name = 'bottomContainer', x = configs.leftStartWidth,
            y = mainH - configs.bottomStartHeight, height = configs.bottomStartHeight,
            width = mainW - configs.leftStartWidth - configs.rightStartWidth},
        topContainer = {name = 'topContainer', x = configs.leftStartWidth, y = 0, height = configs.topStartHeight,
            width = mainW - configs.leftStartWidth - configs.rightStartWidth}
    }
    resizeInfo = {
        resizeLeft = {name = 'resizeLeft', x = configs.leftStartWidth,
            y = configs.leftStartHeight - configs.resizeHeight / 2, height = configs.resizeHeight,
            width = configs.resizeWidth},
        resizeRight = {name = 'resizeRight', x = configs.rightStartWidth - configs.resizeWidth,
            y = configs.rightStartHeight - configs.resizeHeight / 2, height = configs.resizeHeight,
            width = configs.resizeWidth},
        resizeTop = {name = 'resizeTop', x = halfW - configs.resizeWidth / 2,
            y = configs.topStartHeight, height = configs.resizeHeight, width = configs.resizeWidth},
        resizeBottom = {name = 'resizeBottom', x = halfW - configs.resizeWidth / 2,
            y = mainH - configs.bottomStartHeight - configs.resizeHeight, height = configs.resizeHeight,
            width = configs.resizeWidth}
    }

    for name, cons in pairs(containerInfo) do
        GUIframe[name] = Geyser.Container:new(cons)
    end
    for name, cons in pairs(tabsInfo) do
        GUIframe[name] = Geyser.Container:new(cons)
        local cname = name:gsub("Tabs","Container")
        GUIframe[cname].tabs = GUIframe[name]
        GUIframe[name].con = GUIframe[cname]
    end
    local style = resize_style
    local path = getMudletHomeDir()
    path = path:gsub("[\\/]","/")
    configs.resizeRestImage = configs.resizeRestImage:gsub("[\\/]","/")
    configs.resizeHoverImage = configs.resizeHoverImage:gsub("[\\/]","/")
    local no_image
    if not (io.exists(path .. configs.resizeHoverImage) and io.exists(path .. configs.resizeRestImage)) then
        debugc("GUIframe: config: resize image(s) not found")
        path = "255,20,147,"
        style = "background-color: rgba(%s%s);"
        no_image = true
    end

    for name, cons in pairs(resizeInfo) do
        GUIframe[name] = Geyser.Label:new(cons)
        GUIframe[name]:setColor(0,0,0,0)
        GUIframe[name]:setStyleSheet(string.format(style, path, (no_image and "100") or configs.resizeRestImage))
        GUIframe[name]:setOnEnter("GUIframe."..name..".setStyleSheet", GUIframe[name],
            string.format(style, path, (no_image and "255") or configs.resizeHoverImage))
        GUIframe[name]:setOnLeave("GUIframe."..name..".setStyleSheet", GUIframe[name],
            string.format(style, path, (no_image and "100") or configs.resizeRestImage))
        GUIframe[name]:setClickCallback("GUIframe.buttonClick", name)
        GUIframe[name]:setReleaseCallback("GUIframe.buttonRelease", name)
        GUIframe[name]:setMoveCallback("GUIframe.buttonMove", name)
    end
    setBorderLeft(configs.leftStartWidth + configs.borderOffset)
    setBorderRight(configs.rightStartWidth + configs.borderOffset)
    setBorderTop(configs.topStartHeight + configs.borderOffset)
    setBorderBottom(configs.bottomStartHeight + configs.borderOffset)
    GUIframe.initialized = true
end

local function deselectContainer(container, tabs)
    -- hide all windows in container
    for _, win in pairs(container.windowList) do
        win:hide()
        win.active = false
    end
    -- unhighlight all tabs in tabs container
    if tabs then
        for _, tab in pairs(tabs.windowList) do
            local name = tab.name:gsub("Tab","")
            local show = GUIframe.windows[name].showText
            if show then
                tab:echo(configs.tabEchoStyle..name)
            end
	    end
	end
end

local function adjustTabs(tabs)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    -- remove duplicated window names
    local found = {}
    for k,v in ipairs(tabs.windows) do
        if not table.contains(found,v) and tabs.windowList[v] and not tabs.windowList[v].isClicked then
            table.insert(found,v)
        end
    end
    -- calculate tab width and set height
    local w, h = math.floor(100 / #tabs.windows), configs.tabHeight
    local function wrap(num) return tostring(num) .. "%" end
    -- resize and reposition all tabs
    local shown, first
    for k,v in ipairs(found) do
        local tab = tabs.windowList[v]
        if not first then first = v:gsub("Tab","") end
        if not shown and tab.active then
            shown = v
        elseif tab.active then
            tab.active = false
        end
        update_tab(tab, wrap(w * (k-1)), 0, wrap(w), h)
    end
    if first and not shown and GUIframe.windows[first] then GUIframe.windows[first]:show() end
    tabs.space_pos = nil
end

local function reorderTabs(tabs, name, pos)
    local windows = tabs.windows
    while table.contains(windows, name) do
        table.remove(windows, table.index_of(windows, name))
    end
    table.insert(windows, pos, name)
end

local function makeSpace(tabs, tab, pos)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    local windows = table.deepcopy(tabs.windows)
    local space_pos = tabs.space_pos
    local tab_pos = table.index_of(windows, tab.name)
    -- calculate tab width and set height
    local num_tabs = #windows + 1
    if tab_pos then
        num_tabs = num_tabs - 1
        if pos &gt; tab_pos then pos = pos - 1 end
        if pos == space_pos then pos = pos + 1 end
    elseif space_pos and pos &gt;= space_pos then
        pos = pos + 1
    end
    local w, h = math.floor(100 / num_tabs), configs.tabHeight
    local function wrap(num) return tostring(num) .. "%" end
    -- resize and reposition all tabs
    if tab_pos then table.remove(windows,tab_pos) end
    for k,v in ipairs(windows) do
        if k &gt;= pos then
            update_tab(tabs.windowList[v], wrap(w * k), 0, wrap(w), h)
        else
            update_tab(tabs.windowList[v], wrap(w * (k-1)), 0, wrap(w), h)
        end
    end
    tabs.space_pos = pos
end

local function round(num,roundTo)
	local b, r = math.modf(num/roundTo)
	if r &gt;= 0.5 then
		b = b + 1
	end
	return b * roundTo
end

local function setBorder(side, val)
    local funcs = {left = setBorderLeft, right = setBorderRight, top = setBorderTop, bottom = setBorderBottom}
    val = math.max(val,0)
	funcs[side](val)
end

local function resizeContainers(side, w, h)
    if table.contains({"left", "right"}, side) then
        local info = {
            left = {resize = "resizeLeft", cons = {"topLeftContainer","bottomLeftContainer"},
                tabs = {"topLeftTabs","bottomLeftTabs"}, x = 0, w = w},
            right = {resize = "resizeRight", cons = {"topRightContainer","bottomRightContainer"},
                tabs = {"topRightTabs","bottomRightTabs"}, x = w, w = mainW - w}
        }
        info = info[side]
        -- move and resize top, bottom and tab containers
        update_tab(GUIframe[info.tabs[1]], info.x, 0, info.w, configs.tabHeight)
        update_tab(GUIframe[info.tabs[2]], info.x, h, info.w, configs.tabHeight)
        GUIframe[info.cons[1]]:resize(info.w, h - configs.tabHeight)
        GUIframe[info.cons[1]]:move(info.x, configs.tabHeight)
        GUIframe[info.cons[2]]:resize(info.w, mainH - h - configs.tabHeight)
        GUIframe[info.cons[2]]:move(info.x, h + configs.tabHeight)
        -- adjust border size
        setBorder(side, info.w + configs.borderOffset)

        -- adjust width of top and bottom containers
        local x, y
        x = (GUIframe.sides.left ~= "hidden" and GUIframe.topLeftContainer:get_width()) or 0
        w = ((GUIframe.sides.right ~= "hidden" and GUIframe.topRightContainer:get_x()) or mainW) - x
        for _, con in ipairs({GUIframe.topContainer, GUIframe.bottomContainer}) do
            y, h = con:get_y(), con:get_height()
            con:resize(w, h)
            con:move(x, y)
        end
    elseif table.contains({"top", "bottom"}, side) then
        local x = 0
        w = mainW
        if GUIframe.sides.left ~= "hidden" then
            w = w - GUIframe.topLeftContainer:get_width()
            x = GUIframe.topLeftContainer:get_width()
        end
        if GUIframe.sides.right ~= "hidden" then w = w - GUIframe.topRightContainer:get_width() end
        local info = {top = {con = "topContainer", y = 0, h = h}, bottom = {con = "bottomContainer", y = h, h = mainH - h}}
        local con = GUIframe[info[side].con]
        con:resize(w, info[side].h)
        con:move(x, info[side].y)
        setBorder(side, info[side].h + configs.borderOffset)
    end
end

local function refresh()
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    mainW, mainH = getMainWindowSize()
    local rH, rW = configs.resizeHeight, configs.resizeWidth
    local x, y, w
    -- adjust bottom left and right container heights
    for _, C in ipairs({GUIframe.bottomLeftContainer, GUIframe.bottomRightContainer}) do
        C:resize(C:get_width(), mainH - C:get_y())
    end
    -- reposition right containers
    w = GUIframe.topRightContainer:get_width()
    for _, C in ipairs({GUIframe.topRightContainer, GUIframe.topRightTabs,
        GUIframe.bottomRightContainer, GUIframe.bottomRightTabs}) do
        C:move(mainW - w,C:get_y())
    end
    -- resize and reposition bottom and top containers
    w, x = mainW, 0
    if GUIframe.sides.left ~= "hidden" then
        w = w - GUIframe.topLeftContainer:get_width()
        x = GUIframe.topLeftContainer:get_width()
    end
    if GUIframe.sides.right ~= "hidden" then w = w - GUIframe.topRightContainer:get_width() end
    for _, C in ipairs({GUIframe.topContainer, GUIframe.bottomContainer}) do
        C:resize(w, C:get_height())
        C:move(x, C.name == "topContainer" and 0 or mainH - C:get_height())
    end
    -- reposition resize labels
    x, y = GUIframe.topLeftContainer:get_width(), GUIframe.bottomLeftTabs:get_y()
    GUIframe.resizeLeft:move(x, y - rH / 2)
    x, y = GUIframe.topRightContainer:get_x(), GUIframe.bottomRightTabs:get_y()
    GUIframe.resizeRight:move(x - rW, y - rH / 2)
    x = (GUIframe.topContainer:get_width() - rW) / 2
    if GUIframe.sides.left ~= "hidden" then x = x + GUIframe.topLeftContainer:get_width() end
    y = GUIframe.topContainer:get_height()
    GUIframe.resizeTop:move(x, y)
    y = GUIframe.bottomContainer:get_y()
    GUIframe.resizeBottom:move(x, y - rH)
end

-- enables the resize label for the given side and shows all associated containers if hidden
function GUIframe.enable(side)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    if not table.contains(sides,side) then error("GUIframe.enable: invalid side",2) end
    local cons = side_containers[side]
    for _, con in ipairs(cons) do
        GUIframe[con]:show()
        for _,win in pairs(GUIframe[con].windowList) do -- loop can be removed after Geyser fix comes in
            if win.active then win:show() end
        end
    end
    if table.contains({"left","right"}, side) then
        setBorder(side, GUIframe[cons[1]]:get_width() + configs.borderOffset)
    else
        setBorder(side, GUIframe[cons[1]]:get_height() + configs.borderOffset)
    end
    GUIframe["resize"..side:title()]:show()
    GUIframe.sides[side] = "enabled"
    refresh()
end

-- disables and hides the resize label for the given side, and hides all associated containers if indicated
function GUIframe.disable(side, hide)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    if not table.contains(sides,side) then error("GUIframe.disable: invalid side",2) end
    local cons = side_containers[side]
    GUIframe.sides[side] = "disabled"
    if hide then
        for _, con in ipairs(cons) do
            GUIframe[con]:hide()
            for _, win in pairs(GUIframe[con].windowList) do -- loop can be removed after Geyser fix comes in
                if win.type == "mapper" then win:hide() end
            end
        end
        local border = _G["setBorder"..side:title()]
        border(0)
        GUIframe.sides[side] = "hidden"
    end
    GUIframe["resize"..side:title()]:hide()
    refresh()
end

-- adds a Geyser window or container to the given container, with a tab showing the given name if applicable
function GUIframe.addWindow(window, name, container, hideText)
    if not GUIframe.initialized then config() end
    if type(container) == "table" then container = container.name end
    local con, tabs = get_containers(container)
    if not con then error("GUIframe.addWindow: invalid container name",2) end
    if not name then error("GUIframe.addWindow: name argument required",2) end
    -- remove window from any containers
    for _, tcon in ipairs(container_names) do
        if table.contains(GUIframe[tcon].windows, window.name) then
            GUIframe.removeWindow(name, tcon)
        end
    end
    deselectContainer(con,tabs)
    -- add tab for window, if applicable
    if tabs then
        local showText = not hideText
        window.showText = showText
        local lbl = Geyser.Label:new({name = name.."Tab", x = 0, y = 0, width = 10, height = 10},tabs)
        lbl:setStyleSheet(configs.tabStyle)
        if showText then
            lbl:echo(configs.tabEchoStyle.."&lt;b&gt;"..name)
        end
        lbl:setClickCallback("GUIframe.buttonClick", name)
        lbl:setReleaseCallback("GUIframe.buttonRelease", name)
        lbl:setMoveCallback("GUIframe.buttonMove", name)
        GUIframe.tabs[name] = lbl
        adjustTabs(tabs)
    end
    -- add window to container and set size and position
    con:add(window)
    window:resize("100%","100%")
    window:move(0,0)
    window:show()
    GUIframe.windows[name] = window
	raiseEvent("sysWindowResizeEvent")
end

-- removes a named Geyser window or container from the named container (using name given in GUIframe.addWindow)
function GUIframe.removeWindow(name, container)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    if not container then container = GUIframe.windows[name].container end
    local con, tabs = get_containers(container)

    if not con or not table.contains(container_names, con.name) then
        error("GUIframe.removeWindow: invalid container name",2)
    end
    if not name then error("GUIframe.removeWindow: name argument required",2) end
    if tabs then
        local lbl = tabs.windowList[name.."Tab"]
        if lbl then
            tabs:remove(lbl)
            adjustTabs(tabs)
            lbl:hide()
        end
    end
    local window = GUIframe.windows[name]
    con:remove(window)
    window:hide()
end

-- saves the current GUI setup, including the size of the different containers and what windows go in which container
function GUIframe.saveSettings()
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    local saveTbl = {}
    local w, h = GUIframe.topLeftContainer:get_width(), GUIframe.bottomLeftTabs:get_y()
    saveTbl.left = {w = w, h = h}
    w, h = GUIframe.topRightContainer:get_width(), GUIframe.bottomRightTabs:get_y()
    saveTbl.right = {w = w, h = h}
    w, h = GUIframe.topContainer:get_width(), GUIframe.topContainer:get_height()
    saveTbl.top = {w = w, h = h}
    w, h = GUIframe.bottomContainer:get_width(), GUIframe.bottomContainer:get_height()
    saveTbl.bottom = {w = w, h = h}

    -- get added windows and containers they are assigned to
    local windows = {}
    local text = {}
    for k,v in pairs(GUIframe.windows) do
        local con = v.container.name
        windows[con] = windows[con] or {}
        table.insert(windows[con], k)
        text[con] = text[con] or {}
        text[con][k] = v.showText
    end
    -- reorder windows to match tab order for tabbed containers
    for con, wins in pairs(windows) do
        if con:find("Left") or con:find("Right") then
            local tabs = GUIframe[con].tabs.windows
            local new = {}
            for k,v in ipairs(tabs) do
                local wname = v:gsub("Tab","")
                table.insert(new, {wname, text[con][wname]})
            end
            windows[con] = new
        end
    end
    saveTbl.windows = windows
    saveTbl.sides = GUIframe.sides
    table.save(getMudletHomeDir() .. "/GUIframeSave.lua", saveTbl)
end

-- loads GUI setup from a previous save
function GUIframe.loadSettings(redraw)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
    local saveTbl = {}
    local path = getMudletHomeDir() .. "/GUIframeSave.lua"
    path = path:gsub("\\","/")
    mainW, mainH = getMainWindowSize()
    if not io.exists(path) then debugc("GUIframe.loadSettings: save file doesn't exist.") return end
    table.load(path, saveTbl)
    resizeContainers("left", saveTbl.left.w, saveTbl.left.h)
    resizeContainers("right", mainW - saveTbl.right.w, saveTbl.right.h)
    resizeContainers("top", saveTbl.top.w, saveTbl.top.h)
    resizeContainers("bottom", saveTbl.bottom.w, mainH - saveTbl.bottom.h)
    for con, wins in pairs(saveTbl.windows) do
        for _,name in ipairs(wins) do
            if type(name) == "string" then
                GUIframe.addWindow(GUIframe.windows[name], name, con)
            else
                local n, s = name[1], not name[2]
                GUIframe.addWindow(GUIframe.windows[n], n, con, s)
            end
        end
    end

    for side, state in pairs(saveTbl.sides) do
        if state == "enabled" then
            GUIframe.enable(side)
        elseif state == "disabled" then
            GUiframe.disable(side,false)
        elseif state == "hidden" then
            GUIframe.disable(side,true)
        end
    end
    -- force redraw of screen
    if redraw then
        setBackgroundColor(1,1,1)
        setBackgroundColor(0,0,0)
    end
end

-- can be called to force the script to run its config function again
function GUIframe.reinitialize()
    config()
end

-- can be called to activate a given tab without clicking on it
function GUIframe.activate(name)
    if not GUIframe.initialized then error("GUIframe not initialized",1) end
	local window = GUIframe.windows[name]
	if window then
        local con, tabs = get_containers(window.container.name)
        -- hide and unhighlight other windows and tabs
        deselectContainer(con, tabs)
        -- show selected window
        window:show()
        window.active = true
        -- highlight selected tab
        if window.showText then
            GUIframe.tabs[name]:echo(configs.tabEchoStyle.."&lt;b&gt;"..name)
        end
    end
end

-- can be called to apply a style to a given tab
function GUIframe.styleTab(name, style)
    if not GUIframe.initialized then error("GUIframe not initialized",1) end
	local tab = GUIframe.tabs[name]
	if tab then
	    tab:setStyleSheet(style)
    end
end

-- internally used function to handle button click callbacks
function GUIframe.buttonClick(name, event)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
	if table.contains(resizeLabels,name) then
	    if event.button == "RightButton" then
	        local lbl = GUIframe[name]
	        lbl.difX, lbl.difY = event.x, event.y
	        lbl.savedX, lbl.savedY = getMousePosition()
            GUIframe[name].isClicked = true
        end
	elseif event.button == "LeftButton" then
        local window = GUIframe.windows[name]
        local con, tabs = get_containers(window.container.name)
        -- hide and unhighlight other windows and tabs
        deselectContainer(con, tabs)
        -- show selected window
        window:show()
        window.active = true
        -- highlight selected tab
        if window.showText then
            GUIframe.tabs[name]:echo(configs.tabEchoStyle.."&lt;b&gt;"..name)
        end
    elseif event.button == "RightButton" then
        local window, tab = GUIframe.windows[name], GUIframe.tabs[name]
        tab.savedX, tab.savedY = getMousePosition()
        tab.difX, tab.difY, tab.isClicked = event.x, event.y, true
        -- force update of coords for all tabs and tab containers
        GUIframe.tabCoords = {}
        for _, name in ipairs(tab_names) do
            get_window_coords(GUIframe[name], true)
            for tname, tab in pairs(GUIframe[name].windowList) do
                get_window_coords(tab, true)
            end
        end
    end
    raiseEvent("GUIframe.buttonClick",name,event)
end

-- internally used function to handle button release callbacks
function GUIframe.buttonRelease(name, event)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
	if table.contains(resizeLabels,name) then
	    if event.button == "RightButton"  then
            local lbl = GUIframe[name]
            lbl.savedX, lbl.savedY, lbl.difX, lbl.difY, lbl.isClicked = nil, nil, nil, nil, false
        end
	elseif event.button == "RightButton" then
	    local window, tab = GUIframe.windows[name], GUIframe.tabs[name]
	    local con, tabs = get_containers(window.container.name)
	    tab.difX, tab.difY, tab.savedX, tab.savedY, tab.isClicked = nil, nil, nil, nil, false
	    hideWindow("show_container")
	    for _, tname in ipairs(tab_names) do
	        local info = GUIframe[tname]
	        if info.mouse_over then
	            local pos = info.space_pos
	            info.mouse_over = nil
	            GUIframe.addWindow(window, name, tname:gsub("Tabs",""), not window.showText)
	            if pos then
    	            reorderTabs(info, tab.name, pos)
    	            adjustTabs(info)
    	        end
	        end
	    end
	    adjustTabs(tabs)
	end
	raiseEvent("GUIframe.buttonRelease",name,event)
end

-- internally used function to handle button move callbacks
function GUIframe.buttonMove(name, event)
    if not GUIframe.initialized then error("GUIframe not initialized",2) end
	if table.contains(resizeLabels,name) then
	    lbl = GUIframe[name]
	    if lbl.isClicked then
	        local w, h = getMousePosition()
	        w, h = round(w - lbl.difX, 10), round(h - lbl.difY, 10)
            mainW, mainH = getMainWindowSize()
            local side, cW, cH, rX, rY
            local minX = GUIframe.sides.left ~= "hidden" and GUIframe.topLeftContainer:get_width() or 0
            local maxX = GUIframe.sides.right ~= "hidden" and GUIframe.topRightContainer:get_x() or mainW
            local minY = GUIframe.sides.top ~= "hidden" and GUIframe.topContainer:get_height() or 0
            local maxY = GUIframe.sides.left ~= "hidden" and GUIframe.bottomContainer:get_y() or mainH
            local mid, min, max = GUIframe.topContainer:get_width(), math.min, math.max
            local tabH, rH, rW = configs.tabHeight, configs.resizeHeight, configs.resizeWidth
	        w, h = max(w, 0), max(h, 0)
            local info = { -- specify position of resize labels and size of containers
                resizeLeft = {side = "left", x = min(w, maxX - rW),
                    y = min(max(h + rH / 2,tabH), mainH - tabH) - rH / 2,
                    w = min(w, maxX - rW), h = min(max(h + rH / 2,tabH), mainH-tabH) },
                resizeRight = {side = "right", x = min(max(w, minX), mainW),
                    y = min(max(h + rH / 2, tabH), mainH - tabH) - rH / 2,
                    w = min(max(w, minX), mainW - rW) + rW, h = min(max(h + rH / 2, tabH), mainH - tabH) },
                resizeTop = {side = "top", x = minX + (mid - rW) / 2,
                    y = min(h, maxY - rH), w = maxX - minX, h = min(h, maxY - rH) },
                resizeBottom = {side = "bottom", x = minX + (mid - rW) / 2,
                    y = min(max(h, minY) - rH, mainH), w = maxX - minX, h = min(max(h, minY) + rH, mainH)} }
            info = info[name]
            lbl:move(info.x, info.y)
            resizeContainers(info.side, info.w, info.h)
        end
    else
        local window, tab = GUIframe.windows[name], GUIframe.tabs[name]
        local con, tabs = get_containers(window.container.name)
        local x, y = getMousePosition()
        local over_con, over_tab
        if tab and tab.isClicked then
            moveWindow(tab.name, x - tab.difX, y - tab.difY)
            -- check to see if mouse is over any tab containers
            for _, tcon in ipairs(tab_names) do
                if check_overlap(tcon, x, y) then
                    over_con = tcon
                    GUIframe[tcon].mouse_over = true
                    local info = GUIframe.tabCoords[tcon]
                    local tx, ty, tw, th = info.x, info.y, info.w, info.h
                    createLabel("show_container", 0, 0, 0, 0, 1)
                    moveWindow("show_container", tx, ty)
                    resizeWindow("show_container", tw, th)
                    setLabelStyleSheet("show_container",[[
                        background-color: black;
                        border: 2px solid white;]])
                    showWindow("show_container")
                    lowerWindow("show_container")
                    -- check to see if mouse is over any tabs
                    for tname, info in pairs(GUIframe.tabs) do
                        if tname ~= name and check_overlap(info, x, y) then
                            over_tab = info.name
                            local windows = GUIframe[tcon].windows
                            local index = table.index_of(windows,over_tab)
                            makeSpace(GUIframe[tcon],tab,index)
                            break
                        end
                    end
                    break
                end
            end
            -- remove any unnecessary spaces in tab containers
            for _, name in ipairs(tab_names) do
                if name ~= over_con then
                    adjustTabs(GUIframe[name])
                    GUIframe[name].mouse_over = nil
                end
            end
        end
	end
	raiseEvent("GUIframe.buttonMove",name,event)
end

-- internally used function to handle sysWindowResizeEvent
function GUIframe.eventHandler(event,...)
    if event == "sysWindowResizeEvent" and GUIframe.initialized then
        refresh()
    end
end

registerAnonymousEventHandler("sysWindowResizeEvent","GUIframe.eventHandler")</script>
			<eventHandlerList />
			<Script isActive="yes" isFolder="no">
				<name>status bar</name>
				<packageName></packageName>
				<script>status_bar = Geyser.Container:new({
  name = "status_bar",    -- give it a unique name here
  x=0, y=0,                   -- I am uncertain if adjusting this will move it within the GUIframe box it will be in
  width = 0, height=0, -- width and height of 0 because it will be passed to GUIframe
})

--Add the status bar to the screen. On the bottom
GUIframe.addWindow(status_bar,"status_bar","bottom")</script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>Health Bar</name>
					<packageName></packageName>
					<script>hpbar = Geyser.Gauge:new({
  name="hpbar",
  x=0, y=0,
  width="50%", height="50%",
},status_bar)
hpbar.front:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #f04141, stop: 0.1 #ef2929, stop: 0.49 #cc0000, stop: 0.5 #a40000, stop: 1 #cc0000);
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;]])
hpbar.back:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #bd3333, stop: 0.1 #bd2020, stop: 0.49 #990000, stop: 0.5 #700000, stop: 1 #990000);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;]])

hpbar:setValue(50,100,[[&lt;p style="font-size:18px"&gt;&lt;b&gt;&lt;left&gt;&lt;font color="black"&gt;Health&lt;/font&gt;&lt;/left&gt;&lt;/b&gt;&lt;/p&gt;]])</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>Fatigue Bar</name>
					<packageName></packageName>
					<script>fatiguebar = Geyser.Gauge:new({
  name="fatiguebar",
  x=0, y="50%",
  width="50%", height="50%",
},status_bar)
fatiguebar.front:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #f0f00a, stop: 0.1 #f0e00a, stop: 0.49 #f0d00a, stop: 0.5 #f0c00a, stop: 1 #f09999);
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;]])
fatiguebar.back:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #f09999, stop: 0.1 #f09000, stop: 0.49 #f08000, stop: 0.5 #f07000, stop: 1 #f06000);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;]])

fatiguebar:setValue(50,100,[[&lt;p style="font-size:18px"&gt;&lt;b&gt;&lt;left&gt;&lt;font color="black"&gt;Endurance&lt;/font&gt;&lt;/left&gt;&lt;/b&gt;&lt;/p&gt;]])
</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>Hunger Bar</name>
					<packageName></packageName>
					<script>hungerbar = Geyser.Gauge:new({
  name="hungerbar",
  x="50%", y=0,
  width="50%", height="50%",
},status_bar)
hungerbar.front:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #98f041, stop: 0.1 #8cf029, stop: 0.49 #66cc00, stop: 0.5 #52a300, stop: 1 #66cc00);
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;]])
hungerbar.back:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #78bd33, stop: 0.1 #6ebd20, stop: 0.49 #4c9900, stop: 0.5 #387000, stop: 1 #4c9900);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;]])

hungerbar:setValue(50,100,[[&lt;p style="font-size:18px"&gt;&lt;b&gt;&lt;left&gt;&lt;font color="black"&gt;Hunger&lt;/font&gt;&lt;/left&gt;&lt;/b&gt;&lt;/p&gt;]])</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>Encumbrance Bar</name>
					<packageName></packageName>
					<script>encumbrancebar = Geyser.Gauge:new({
  name="encumbrancebar",
  x="50%", y="50%",
  width="50%", height="50%",
},status_bar)
encumbrancebar.front:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #98f041, stop: 0.1 #8cf029, stop: 0.49 #66cc00, stop: 0.5 #52a300, stop: 1 #66cc00);
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;]])
encumbrancebar.back:setStyleSheet([[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #78bd33, stop: 0.1 #6ebd20, stop: 0.49 #4c9900, stop: 0.5 #387000, stop: 1 #4c9900);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;]])

encumbrancebar:setValue(50,100,[[&lt;p style="font-size:18px"&gt;&lt;b&gt;&lt;left&gt;&lt;font color="black"&gt;Encumbrance&lt;/font&gt;&lt;/left&gt;&lt;/b&gt;&lt;/p&gt;]])</script>
					<eventHandlerList />
				</Script>
			</Script>
			<Script isActive="yes" isFolder="no">
				<name>compasbar</name>
				<packageName></packageName>
				<script>compass_bar = Geyser.Container:new({
  name = "Compass",    -- give it a unique name here
  x=0, y=0,                   -- I am uncertain if adjusting this will move it within the GUIframe box it will be in
  width = 0, height=0, -- width and height of 0 because it will be passed to GUIframe
})

--Add the status bar to the screen. On the bottom
GUIframe.addWindow(compass_bar,"Compass","bottomright")</script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>compass.resize</name>
					<packageName></packageName>
					<script>--Reference https://wiki.mudlet.org/w/Manual:Geyser#Create_a_Clickable_Compass

--max width max height
local mw, mh = getMainWindowSize()

--create compass object
--dirs directory
--ratio is ration of parent object.
--ratio is for resizing.
compass = compass or {
  dirs = {"nw","n","ne","w","center","e","sw","s","se"},
  ratio = mw / mh
} --end compass object declaration

--Creating the parent label for the compass
compass.back = Geyser.Label:new({
  name = "compass.back",
  x = "0%", --%horizontally position in parent
  y = "0%", --%vertical position in parent
  width = "100%", --% of parent
  height = "100%", --% of parent
},compass_bar) --The parent of this label. Main is main window.

compass.box = Geyser.HBox:new({
    name = "compass.box",
    x = 0, --horizonal position in parent
    y = 0, --vertical position in parent
    width = "100%", --How wide box is, % of parent
    height = "100%", --How tall box is, % of parent
  },compass.back) --parent of this Hbox

--create 3 vertical rows
--in parent object compas.box
compass.row1 = Geyser.VBox:new({name = "compass.row1",},compass.box)
compass.row2 = Geyser.VBox:new({name = "compass.row2",},compass.box)
compass.row3 = Geyser.VBox:new({name = "compass.row3",},compass.box)

--create labels to hold compas images
--Each parent is the row that were 
--created with VBox above.
--row1 left row2 center row3 right
compass.nw = Geyser.Label:new({
  name = "compass.nw",
},compass.row1)

compass.w = Geyser.Label:new({
  name = "compass.w",
},compass.row1)

compass.sw = Geyser.Label:new({
  name = "compass.sw",
},compass.row1)

compass.n = Geyser.Label:new({
  name = "compass.n",
},compass.row2)
        
compass.center = Geyser.Label:new({
  name = "compass.center",
},compass.row2)

compass.s = Geyser.Label:new({
  name = "compass.s",
},compass.row2)

compass.ne = Geyser.Label:new({
  name = "compass.ne",
},compass.row3)
    
compass.e = Geyser.Label:new({
  name = "compass.e",
},compass.row3)
  
compass.se = Geyser.Label:new({
  name = "compass.se",
},compass.row3)
--end of compas labels

--when a label is clicked we want to
--go in that direction
function compass.click(name)
  send(name)
end

--Function that will put images to direction labels. name will be n nw so on in compass under triggers
function compass.lit(name)
  compass[name]:setStyleSheet([[
    border-image: url("]]..getMudletHomeDir()..[[/]].."imgs"..[[/]].."compass"..[[/]]..name..[[hover.png");
    margin: 5px;
  ]])
end
--when the space should be unlit change it back to white.
function compass.unlit(name)
  compass[name]:setStyleSheet([[
    border-image: url("]]..getMudletHomeDir()..[[/]].."imgs"..[[/]].."compass"..[[/]]..name..[[.png");
    margin: 5px;
  ]])
end

--Each of the 9 labels need an image of an arrow.
--Rather than setting each individually, we'll
--iterate over the compass.dirs table we made 
--awhile back and add the respective image to each.
--The names of images are a reflection of the compass.dirs 
--table. This keeps it consistent and easy to refer to.
--During the iteration, the callback, setLabelOnEnter and
--setLabelOnLeave are also set for each label.

for k,v in pairs(compass.dirs) do
  compass[v]:setStyleSheet([[
    border-image: url("]]..getMudletHomeDir()..[[/]].."imgs"..[[/]].."compass"..[[/]]..v..[[.png");
    margin: 5px;
  ]])
  compass[v]:setClickCallback("compass.click",v)
end

function compass.resize()
  compass.back:resize(compass.back.width, compass.back:get_width())
end

compass.resize()</script>
					<eventHandlerList>
						<string>sysWindowResizeEvent</string>
					</eventHandlerList>
				</Script>
			</Script>
			<Script isActive="yes" isFolder="no">
				<name>communicationsbar</name>
				<packageName></packageName>
				<script>communicationsBar = Geyser.Container:new({
  name = "communicationsbar",    -- give it a unique name here
  x=0, y=0,                   -- I am uncertain if adjusting this will move it within the GUIframe box it will be in
  width = 0, height=0, -- width and height of 0 because it will be passed to GUIframe
})

--Add the status bar to the screen. On the bottom
GUIframe.addWindow(communicationsBar,"communicationsbar","top")</script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>communicationsAll</name>
					<packageName></packageName>
					<script>--Creating the parent label for the compass
communicationsAll = Geyser.MiniConsole:new({
  name = "communicationsAll",
  x = "0%", --%horizontally position in parent
  y = "0%", --%vertical position in parent
  width = "100%", --% of parent
  height = "100%", --% of parent
	autoWrap = true, --allows text to wrap if too long
	fontSize = 12,
	scrollBar = true,
},communicationsBar) --The parent of this label. Main is main window.

communicationsAll:setColor("black") --sets background color of window
																		--use it later to match default background</script>
					<eventHandlerList />
				</Script>
			</Script>
		</ScriptGroup>
	</ScriptPackage>
	<KeyPackage />
	<VariablePackage>
		<HiddenVariables />
	</VariablePackage>
</MudletPackage>
