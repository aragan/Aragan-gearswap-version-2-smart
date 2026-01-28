---------------------------------------------------------------------------------
                --This lua is based off of the selindrile gearswap -- 
-----------------------------Authors of this file--------------------------------
------           ******************************************                ------
---                                                                           ---
--	         Aragan  --------------- [Author Primary]                          -- 
--                                                                             --
---------------------------------------------------------------------------------
	---------------------------------------                        ---------------------------------------  
	--        A T T E N T I O N          --                        --      P L E A S E     R E A D      --
	---------------------------------------                        ---------------------------------------  
	                                --  ╔═━━━───༺༻───━━━═╗  --
                                --	ＡＲＡＧＡＮ ＧＥＡＲＳＷＡＰ  --
                                    --  ╚═━━━───༺༻───━━━═╝  --

	                            --    ★ A R A G A N   G E A R S W A P ★   --

	                     --\💀\💀═══════════════════════════════════════\💀\💀 --
	                      -- \⚔️\⚔️✦ --A R A G A N  G E A R S W A P ✦\⚔️\⚔️ --
                    	  --\🩸\🩸═══════════════════════════════════════\🩸\🩸 --

                            -- {{{{{{{this gearswap have all codes}}}}}}}}} --

--[[ Listen carefully, it is unnatural, it is supernatural, 
it is advanced and superior to everyone, and they are primitive without it,
it is difficult to reach it, it is smooth like water, 
it is solid like a mountain, it is light like the wind,
it is burning like fire.. it was made for a long period of time, 
it came out of the power of darkness, only the light.. you cannot be defeated,
and it is in your hands, the power is with you

-- IMPORTANT: all files and scripts from my folder only for work This include requires supporting include files:
-- from my web in file lib and Global for work all jobs.

just go to readme.txt and read more info 
init.txt there all addons used 
]]
--[[ Note: optional : u can install macro all jobs from my web and addons plugin 
to can play smooth and easy and i play with main gameped controller logitech and 
keyboard binds and chat .

some jobs work with it some addon.

add code auto equip to PDL ws set if buff high attack.
add blood mode -- add darkness mode
add code auto equip magic burst set when sc window open.
add bind to work addon autoitem for auto use medicine for Odyssey nms 
and i made mode automedicinemode auto use medicine

made mode autoReraise auto equip zombie gear Reraise
 
add reaction for sortie NM B/D F/H auto switch elemental mode to correct nm weak it if he use spell for job rdm drk blm sch .
add passive set tartarus death if mob touch u for jobs pld war drk drg sam bst. if u have Tartarus Platemail red wings .
add passive enspell for some job.
add code auto swap gear to EnemyCritical idle set if u get hite critcal hit.
add auto use ja Ebullience for blm job if sub /sch and in fight.
add code tell msg if u get proc in abyssea and auto swap gear after msg for job war nin blm
and add in macro special line for proc those job war nin blm. 
add bind for reset addon zonetimer for sortie bosses F/H to calc 3min run away before tpmove or use ja run or bind or kitting
add cor auto fold when buffactive bust
in macro job blm sch rdm nin drk geo whm pld for fast used i add :

/con gs c elemental nuke -- for clear magic burst mobs in A/C and spam mb on bosses 
/con gs c elemental smallnuke -- for proc in sortie boss HAND B/D and F/H
u can use addon automb 

sch job i add macro for fast make skillchain :

command add macro :
SC1
/console gs c elemental skillchain1
SC2
/console gs c elemental skillchain2
SC3
/console gs c elemental skillchain3

command add macro : for auto magic burst after skillchains ,SC11 CLOSE skillchain with T1 ONLY NO HELIX

SC11

/console gs c elemental skillchain11

SC22

/console gs c elemental skillchain22

SC33

/console gs c elemental skillchain33

command add macro : CLOSE skillchain with helix and auto magic burst after skillchains

SC11H

/console gs c elemental skillchain11H

SCH add command for solo skillchains from addon schskillchain ssc and script solosc.lua

NOTE: for sortie NM Triboulex use this command for 2step fusion open close close2 ;

-----

for brd AutoBuffBard addon add state.Songset have songsset its copy from AutoBuffBard addon file abb_sets u can add name songsset there and copy name in state.Songset

cycle Songset -- autobrdbuff addon cycle Singer -- singer addon

/con gs c Singer -- active singer addon

send_command('bind f2 gs c cycle Songset') -- autobrdbuff addon send_command('bind !f2 gs c Songset') -- autobrdbuff addon

send_command('bind f2 gs c cycle singer') -- singer addon send_command('bind !f2 gs c singer -- singer addon ') macro

/con gs c Songset -- active autobrdbuff /con gs c Singer -- active singer addon

its do all ja first then do u songset

-----


for cor add state.Roller1 state.Roller2 have all rolls send to roller addon and state.Rollset change 2 roll in 1 click

cycle Roll

send_command('bind f2 gs c cycle Roller1;input //gs c Roller1') send_command('bind f3 gs c cycle Roller2;input //gs c Roller2') send_command('bind ^f2 gs c cycleback Roller1;input //gs c Roller1') send_command('bind ^f3 gs c cycleback Roller2;input //gs c Roller2')

-- send_command('bind f1 gs c cycle Rollset;awit;input //gs c Rollset')

macro

/con gs c Roller1 /con gs c Roller2 /con gs c Rollset /con roll


-------------
	---------------------------------------                        ---------------------------------------  
	--        A T T E N T I O N          --                        --      P L E A S E     R E A D      --
	---------------------------------------                        ---------------------------------------  

]]
--Place for settings and custom functions to work across one characters, all jobs.
latency = .75
-- include(player.name..'-items.lua')
include('SCH_soloSC.lua')
include('common_info.skillchain.lua')
include('roller-ring.lua')
--It is from the highest secrets.
-- include('smart_autoshout.lua')

--If this is set to true it will prevent you from casting shadows when you have more up than that spell would generate.
conserveshadows = false
nexttime = os.clock()
delay = 0
--Display related settings.
state.DisplayMode = M(true, 'Display Mode') --Set this to false if you don't want to display modes at the bottom of your screen.
--Uncomment the settings below and change the values to edit the display's look.
--displayx = 3
--displayy = 1062
--displayfont = 'Arial'
--displaysize = 12
--displaybold = true
--displaybg = 0
--displaystroke = 2
--displaytransparancy = 192
--state.DisplayColors = {
    -- h='\\cs(255, 0, 0)', -- Red for active booleans and non-default modals
    -- w='\\cs(255,255,255)', -- White for labels and default modals
    -- n='\\cs(192,192,192)', -- White for labels and default modals
    -- s='\\cs(96,96,96)' -- Gray for inactive booleans
--}

--Options for automation.
state.ReEquip 		  	  = M(false, 'ReEquip Mode')		 --Set this to false if you don't want to equip your current Weapon set when you aren't wearing any weapons.
state.AutoArts 		  	  = M(true, 'AutoArts') 		 --Set this to false if you don't want to automatically try to keep up Solace/Arts.
state.AutoLockstyle	 	  = M(true, 'AutoLockstyle Mode') --Set this to false if you don't want gearswap to automatically lockstyle on load and weapon change.
state.CancelStoneskin 	  = M(true, 'Cancel Stone Skin') --Set this to false if you don't want to automatically cancel stoneskin when you're slept.
state.SkipProcWeapons 	  = M(true, 'Skip Proc Weapons') --Set this to false if you want to display weapon sets fulltime rather than just Aby/Voidwatch.
state.NotifyBuffs	  	  = M(false, 'Notify Buffs') 	 --Set this to true if you want to notify your party when you recieve a specific buff/debuff. (List Below)
state.UnlockWeapons		  = M(true, 'Unlock Weapons')
state.CraftingMode		  = M{['description'] = 'Crafting Mode','None','Goldsmithing','Smithing','Cooking','Fishing',}
state.CraftQuality  	  = M{['description'] = 'Crafting Quality','Normal','HQ','HQ1','NQ'}
state.AutoDefenseMode 	  = M(false, 'Auto Defense') 
state.AutoStunMode 	      = M(false, 'Auto Stun') 
state.AutoCleanupMode  	  = M(false, 'Auto Cleanup Mode')
state.AutoWSRestore		  = M(false, 'Auto Weaponskill Restore Mode')
-- state.SelectNPCTargets    = M(false, 'Select NPC Targets')
-- state.PCTargetMode        = M{['description'] = 'PC Target Mode', 'default', 'stpt', 'stal', 'stpc'}
state.SubtleBlowMode      = M(false, 'SubtleBlow Mode') --It is from the highest secrets.
state.AutoOtherTargetWS   = M(false, 'AutoOtherTargetWS')
state.TargetMode        = M(false, 'TargetMode')--It is from the highest secrets.
-- state.Abyssea = M{['description']='Abyssea','Ulhuadshi','Chloris','Dragua','Bukhis'} 
state.AutoLoggerMode = M(false, 'AutoLoggerMode')
--It is from the highest secrets.
--addon singer
state.Singer = M{['description']='Singer','Cuijatender','seg','seg4','seg2','shinryu','shinryu4','mboze','mboze2', 'xevioso', 'kalunga', 'ngai','arebati', 'ongo', 'bumba',
'haste','haste4', 'magic','peach','ambuscade','ambuscade4','meleeacc', 'ph', 'ody4', 'ody','sortie4','sortie','Aminon',} --'aria',	
--It is from the highest secrets.
--addon autobrdbuff
state.Songset = M{['description']='Songset','mboze', 'xevioso', 'kalunga', 'ngai','arebati', 'ongo', 'bumba',
'haste', 'magic', 'aria', 'ph','sortie4', 'ody4', 'ody','sortie','Aminon'}
--It is from the highest secrets.
--addon roller
state.Rollset = M{['description']='Rollset','None', 'melee', 'magic','dynamis','aminon','exp','tp','speed','acc','ws',
'pet','petnuke',}
state.Etude = M{['description']='Etude',  'Herculean Etude', 'Sage Etude', 'Sinewy Etude', 'Learned Etude',
'Quick Etude', 'Swift Etude', 'Vivacious Etude', 'Vital Etude', 'Dextrous Etude', 'Uncanny Etude',
'Spirited Etude', 'Logical Etude', 'Enchanting Etude', 'Bewitching Etude'}
--It is from the highest secrets.
--addon azureset for blu job set spells
state.Spellset = M{['description']='Spellset','vagary', 'aoe', 'aoe2'}--It is from the highest secrets.
--for smn job
state.Avatars = M{['description']='Avatars', "Ifrit", "Ramuh", "Titan", "Siren", "Garuda", "Diabolos", "Carbuncle", "Fenrir", "Leviathan", "Shiva", "Odin", "Alexander", "Cait Sith"}
state.Passive = M{['description'] = 'Passive Mode','None'}

--state.Passive:options('None','EnemyCritRate','Regen','Resist','Refresh','Empy', 'SubtleBlow', 'SubtleBlow40', 'SubtleBlow50')
-- state.Buff['SJ Restriction'] = buffactive['SJ Restriction'] or false
--lock weapon
state.WeaponLock = M(false, 'Weapon Lock')
--equip JPE NECK for Reinforcement Points 
state.RP = M(false, "Reinforcement Points Mode")--It is from the highest secrets.
state.StormSurge = M(false, 'Stormsurge')
state.SrodaBelt = M(false, 'SrodaBelt')
state.SrodaNecklace = M(false, 'SrodaNecklace')
state.NM = M(true, 'NM')
state.SleepMode = M{['description']='Sleep Mode', 'Normal', 'MaxDuration'}
state.AutoMedicineMode = M(false, 'Auto Medicine Mode')--It is from the highest secrets.
state.AutoReraiseMode = M(true, 'Auto Reraise Mode')--It is from the highest secrets.
state.AutoCureMode = M(true, 'Auto Cure Mode')--It is from the highest secrets.
state.NeverDieMode = M(true, 'Never Die Mode')--It is from the highest secrets.
state.AutoTomahawkMode = M(false, 'AutoTomahawkMode')
state.AutoJumpMode 	  = M(false, 'Auto Jump Mode')
state.AutoAPMode = M(true, 'AutoAPMode')
state.AutoinfoNMMode = M(true, 'Auto info NM Mode') --It is from the highest secrets.
state.AutoShadowMode 	  = M(false, 'Auto Shadow Mode')
state.RefineWaltz		  = M(true, 'RefineWaltz')
state.Stance = M{['description']='Stance','None'}
state.AutogearbuffMode = M(true, 'AutogearbuffMode')--It is from the highest secrets.
state.Autojoinptmode = M(true, 'Autojoinptmode')
--It is from the highest secrets.
state.AutoDropItemsMode = M(false, 'AutoDropItemsMode')
-- state.AutoDropItemsMode = M{['description'] = 'AutoDropItemsMode','manuledrop', 'none',  'autodrop'}
state.Skillchainermode = M(false, 'Skillchainermode')
state.Stylenotwingsemode = M(true, 'Stylenotwingsemode')
state.AutoBuyAuctionHouseMod = M(true, 'AutoBuyAuctionHouseMod')--It is from the highest secrets.
state.AutoTradeMode = M(true, 'AutoTradeMode')--It is from the highest secrets.
state.AutoMagicBurstMode = M(true, 'AutoMagicBurstMode')
--It is from the highest secrets.
state.AutoPDLwstmode = M(true, 'AutoPDLwstmode')
state.Autodebugemode = M{['description'] = 'Debug Mode', 'Off', 'On'}
state.AutoHasteMode = M(false, 'Auto Haste Mode')
state.AutostepssubjobMode = M(false, 'AutostepssubjobMode')
state.AutoFarmMode = M(false, 'AutoFarm Mode')
--It is from the highest secrets.
state.OdyAutowsMode = M(true, 'OdyAutowsMode')
--It is from the highest secrets.
state.DarknessMode = M(false, 'DarknessMode')
--It is from the highest secrets.
state.BloodMode = M(false, 'BloodMode')
--It is from the highest secrets.
state.SmartMode = M(false, 'SmartMode')
--It is from the highest secrets.
state.AutoShoutMode = M(false, 'AutoShoutMode')
--It is from the highest secrets.
-- state.SmartAutoShoutMode = M(true, 'SmartAutoShoutMode')
state.Autostylemode	 	  = M(true, 'Autostylemode') --Set this to false if you don't want gearswap to automatically lockstyle on load and weapon change.
-- Auto Invite Mode
--It is from the highest secrets.
state.AutoInviteMode = M(true, 'AutoInviteMode')
--It is from the highest secrets.
--see all msg other between players in area tell pt ls with out u 
--It is from the highest secrets.
state.AllseenmsgMode = M(false, 'AllseenmsgMode') 
--It is from the highest secrets.
state.DefenseDownMode = M{['description']='Defense Down Mode'}
state.DefenseDownMode:options('None','Tag')
state.NakedMode = M(false, 'NakedMode') 
state.SalvageMode = M(true, 'SalvageMode') 

already_announced_by_name = already_announced_by_name or {}
--state.RuneElement = M{['description']='Rune Element','Ignis','Gelus','Flabra','Tellus','Sulpor','Unda','Lux','Tenebrae'}
--state.ShieldMode:options('Normal','Genmei','Ammurapi')
--auto equip to PDL ws set is higher than this value .. this value for all job and u can add any value in any job lua . (Aragan@Asura)
--It is from the highest secrets.   
attack2 = 4000 -- This LUA will equip PDL "high buff" WS sets if the attack value of your TP set (or idle set if WSing from idle) is higher than this value.
--state.ShieldMode = M{['description']='Shield Mode', 'Normal', 'Srivatsa','Ochain','Duban', 'Aegis', 'Priwen','Genmei','Ammurapi'} -- , 'Priwen' }
state.ShieldMode = M{['description'] = 'Shield Mode', 'Normal','Aegis','Ochain','Duban','Genmei','Ammurapi'}
state.Weapongun = M{['description']='Weapon Set', 'normal', 'DeathPenalty', 'Anarchy', 'Fomalhaut', 'Earp'}
-- TOOGLE WS OPEN ON AUTOSC ADDON --auto set ws
state.Ascws = M{['description']='Ascws','Exudation','Realmrazer','Black Halo','Blade: Teki','Blade: Chi','Blade: To','Blade: Shun','Tachi: Kagero','Tachi: Goten','Tachi: Koki','Tachi: Fudo','Torcleaver','Ground Strike','Savage Blade','Requiescat','Victory Smite','Shijin Spiral','Decimation','Evisceration','Rudra\'s Storm','Impulse Drive','Cross Reaper','Spiral Hell','Insurgency','Vorpal Scythe',}
-- TOOGLE WS ON Skillchainer ADDON --auto set ws
state.Skillchainerws = M{['description']='Skillchainerws','Upheaval','Fell Cleave','Ukko\'s Fury','Exudation','Realmrazer','Last Stand','Black Halo','Blade: Yu','Blade: Teki','Blade: Chi','Blade: To','Blade: Shun','Tachi: Shoha','Tachi: Jinpu','Tachi: Kagero','Tachi: Goten','Tachi: Koki','Tachi: Fudo','Tachi: Kaiten','Torcleaver','Dimidiation','Savage Blade','Chant du Cygne','Requiescat','Victory Smite','Shijin Spiral','Mordant Rime','Evisceration','Rudra\'s Storm','Aeolian Edge','Cross Reaper','Spiral Hell','Insurgency','Vorpal Scythe','Impulse Drive',}

NotifyBuffs = S{'doom','petrification','sleep','slow','paralysis','weakness','elegy','curse recovery','zombie','super curse'}

gear.TVRring = "Cornelia's Ring"
-- Ensure state.IdleMode is properly initialized


-- Combine the idle set with the Roller's Ring
-- sets.idle.rollers = set_combine(sets.idle[state.IdleMode.value], {lring="Roller's Ring"})



-- --if get debuff slow equip set
-- sets.buff.Slow = {hands={ name="Gazu Bracelets +1", augments={'Path: A',}}, --10% haste
-- waist="Tempus Fugit +1",}  --15% haste
-- global.lua
-- if not sets then sets = {} end
-- sets.buff = sets.buff or {}

-- sets.buff.Slow = set_combine(sets.buff.Slow, {hands={ name="Gazu Bracelets +1", augments={'Path: A',}}, --10% haste
-- waist="Tempus Fugit +1",})

state.Absorbs = M{['description']='Absorbs', 'Absorb-TP', 'Absorb-VIT','Absorb-Attri', 'Absorb-MaxAcc','Absorb-STR', 'Absorb-DEX', 'Absorb-AGI', 'Absorb-INT', 'Absorb-MND', 'Absorb-CHR',}

state.AutoBarStatus = M{['description'] = 'Auto BarStatus','Off','Barparalyze','Barsilence','Barpoison','Barvirus','Barpetrify','Barblind','Baramnesia','Barsleep'}
state.AutoBoostStat = M{['description'] = 'Auto BoostStat','Off', 'Boost-INT', 'Boost-AGI', 'Boost-VIT', 'Boost-DEX', 'Boost-MND', 'Boost-CHR'}

state.AutoTrustMode = M{['description'] = 'Auto Trust Mode', 'Off','Auto','MLfarm','corfarm', 'Defend', 'DI'}

-- state.AutoTrustMode = M{['description'] = 'Auto Trust Mode', 'Off','Auto', 'Cleave', 'Defend', 'Buff'}
--[[Binds you may want to change.
	Bind special characters.
	@ = Windows Key
	% = Works only when text bar not up.
	$ = Works only when text bar is up.
	^ = Control Key
	! = Alt Key
	~ = Shift Key
	# = Apps Key
]]
--[[
need add 
	send_command('bind !f4 gs c toggle AutoDefenseMode')

	send_command('bind f4 gs c cycle RuneElement')
	send_command('bind f3 gs c RuneElement')
	send_command('bind f2 gs c toggle AutoRuneMode')
	send_command('bind @f2 gs c toggle AutoBuffMode')
	send_command('bind @f3 gs c toggle AutoTrustMode')

	send_command('bind ^f1 gs c toggle AutoStunMode')
	send_command('bind ^f2 gs c toggle SubJobEnmity')
	send_command('bind ^f1 gs c toggle AutoStunMode')
	send_command('bind @5 gs c toggle  AutoFoodMode')
	send_command('bind ^1 gs c toggle AutoNukeMode') --Turns auto-nuke mode on and off.
	send_command('bind @2 gs c buffup;gs c input /p buffup")') --Buffup macro because buffs are love.
gzc auto_point
AutoShadowMode
AutoSambaMode
AutoRuneMode

state.AutoTomahawkMode = M(false, 'AutoTomahawkMode')
state.AutoTPReductionMode = M(false, 'Auto TP Reduction Mode')
state.AutoBLUSpam = M(false, 'AutoBLUSpam')
state.CastingMode:set('SIRD')

Autodef.downMode
AutozergMode
windower code command //fillmode -- to watch cross
AutoAcceptRaiseMode
use <call21>
-- //gs export copy compact
-- //gs export copy
gs c set AutoWSRestore true
gs c set AutoWSMode True
gs c autows tp 1750
gs c set autows Entropy
gs c set SkipProcWeapons false
gs showswaps
lua r gearswap
AutoCleanupMode add more items
handle_killstatue
//get *crystal all
//put *crystal satchel all
//tradenpc 80 "earth crystal"
//tradenpc 80 "Wind crystal"
//tradenpc 80 "Fire Crystal"
//tradenpc 96 "Lightning Crystal"
//gs c useitem head Reraise Hairpin +1
//gs c useitem ring2 warp ring
(Aragan) Treasure Hunter set Equip
(Aragan) HPboost set gear Equiped ready 
((Attack is ON.)) >> killer machine ready <<
(Aragan) i do first ws Armor Break def down
send_command('input /p Rostam max aug."Phantom Roll" +8 max Duration gear Equipped Ready')		
--for non change warp ring if equip 
 using any item, //gs c useitem slot Item Name
So, for example //gs c useitem head Reraise Hairpin +1
//gs c useitem ring2 warp ring
]]

-- if (player.main_job == 'BLM' or player.main_job == 'RDM' or player.main_job == 'SCH' or player.main_job == 'PLD' or player.main_job == 'WHM' or player.main_job == 'NIN') then
    --  if player.sub_job == 'DRK' or player.sub_job == 'RDM' then

-- 	       send_command('amb t 2')--;automb addon set tier spell 
--      end
-- end

-- Function to bind GearSwap binds when loading a GS script.
function global_on_load()
	
	-- send_command('gzc auto_point')
	send_command('bind f9 gs c cycle OffenseMode')
	send_command('bind ^f9 gs c cycle HybridMode')
	send_command('bind !f9 gs c cycle RangedMode')
	send_command('bind f4 gs c cycle ElementalMode')
	send_command('bind !f5 gs c cycle WeaponskillMode')
	--send_command('bind f10 gs c set DefenseMode Physical')
	--send_command('bind ^f10 gs c cycle PhysicalDefenseMode')
	send_command('bind !f10 gs c toggle Kiting')
	send_command('bind !f11 gs c cycle MagicalDefenseMode;gs c set DefenseMode Magical') --Changes your magical defense set.
	send_command('bind f11 gs c cycle CastingMode')
	send_command('bind ^f12 gs c update user')
	send_command('bind f12 gs c cycle IdleMode;gs c reset DefenseMode')
	send_command('bind !f12 gs c reset DefenseMode;gs c reset IdleMode;gs c reset passive;gs c reset CraftingMode;gs c reset CraftQuality')
	send_command('bind ^f11 gs c cycle ExtraMeleeMode') --Adds another set layered on top of your engaged set.

	send_command('bind delete zonetimer reset') --Turns addon reset time.
	-- send_command('bind !0 zonetimer reset') --Turns addon reset time.
	send_command('bind ^pagedown autoitem toggle') --Turns addon off.
	-- send_command('bind ^pageup autoitem on') --Turns addon on.
	send_command('bind ^delete aws toggle;gs c set AutoWSMode false') --Turns addon autows on odd. to add ws //aws set "Evisceration" 
	send_command('bind ^insert aws reload') --reload addon autows on odd. --//aws set Evisceration
	send_command('bind ~d gs c cycle DefenseDownMode') --Turns addon smarttarget on odd.

	send_command('bind !insert smrt on;smrt') --Turns addon smarttarget on odd.
	send_command('bind !delete smrt off') --Turns addon smarttarget off odd.
	-- send_command('bind !pagedown autoNukes off') --Turns addon off.addon use for spamm aspir on sortie aminon
	--send_command('bind !pageup autoNukes on') --Turns addon on. addon use for spamm aspir on sortie aminon
	--send_command('bind ^4 autoNukes on') --Turns addon on.addon use for spamm aspir on sortie aminon
	-- send_command('bind ^5 autoNukes off') --Turns addon off.addon use for spamm aspir on sortie aminon
	send_command('bind ^4 gs c toggle AutoAbsorttpaspirSpam')  --use for spam absort tp and aspir on sortie aminon
	send_command('bind ^7 gs c toggle AutoWSRestore ')  -- USE WS HP STEAL IF HP LOW

	-- send_command('bind ^backspace automb toggle') --Turns addon on.addon automb
	send_command('bind !backspace automb toggle') --Turns addon toggle on off.addon automb
	
	--lua r AutoWS;aws on;
	send_command('bind ^w input /wave')

	
	send_command('bind !f2 gs c toggle TankAutoDefense')
	send_command('bind !f3 gs c toggle AutoTankMode')
	send_command('bind !f4 gs c toggle AutoDefenseMode')
	send_command('bind f5 gs c toggle AutoWSMode;aws off')
	send_command('bind @f1 gs c toggle AutoEngageMode;gzc auto_point;')
	send_command('bind @f2 gs c toggle AutoBuffMode')
	send_command('bind @f3 gs c toggle AutoTrustMode')
    send_command('bind ^/ gs disable all')
    send_command('bind !/ gs enable all')
    send_command('bind @x gs c toggle RP')  
	send_command('bind @z gs c toggle Capacity') --Keeps capacity mantle on and uses capacity rings.
	send_command('bind !c gs c weapons None;gs c cycle CraftingMode;')
	send_command('bind ^c gs c cycle CraftQuality')

	send_command('bind !1 gs c toggle AutoSambaMode')
	send_command('bind !2 gs c toggle AutoShadowMode')
	send_command('bind !3 gs c toggle AutoRuneMode')
	send_command('bind !4 gs c cycle passive')
	send_command('bind @4 gs c cycleback passive')

	send_command('bind !5 gs c toggle stance')
	send_command('bind ^1 gs c toggle AutoNukeMode') --Turns auto-nuke mode on and off.
	send_command('bind ^f2 gs c set AutoBuffMode off ') --

	send_command('bind ^2 gs c toggle AutoSubMode') --Automatically uses sublimation and Myrkr.
	send_command('bind ^3 gs c cycle RuneElement') -- cycle RuneElement

	send_command('bind ^f1 gs c toggle AutoStunMode')
	--send_command('bind !6 gs c toggle SubJobEnmity')
	-- send_command('bind ^f3 gs c cycle SkillchainMode')
	send_command('bind @1 gs c toggle AutoCleanupMode') --Uses certain items and tries to clean up inventory.
	send_command('bind @2 gs c buffup;gs c input /p buffup")') --Buffup macro because buffs are love.
	send_command('bind @3 gs c cycle RecoverMode')
	send_command('bind @5 gs c toggle AutoFoodMode')
	send_command('bind @7 gs c toggle TargetMode')

	
	send_command('bind !w gs c toggle WeaponLock')
	send_command('bind ^f7 gs c toggle AutoSubMode') --Automatically uses sublimation and Myrkr.
	send_command('bind !7 gs c toggle AutoAcceptRaiseMode')
	send_command('bind !8 gs c toggle SkipProcWeapons')
	send_command('bind !9 gs c toggle AutogearbuffMode')
	send_command('bind !0 gs c toggle Autojoinptmode')
	send_command('bind ^0 gs c toggle AutoDropItemsMode')

	send_command('bind ^- gs c toggle selectnpctargets') 
	send_command('bind !- gs c cycle pctargetmode')
    send_command('lua r runewidget;rw show')--Turns addon off if job non /run. just used on screen left side to check elemtels cycle for used anythung like ws spell sc mb  and other idea
	send_command('lua u invspace;lua u invtracker')--Turns load addon invspace and invtracker 

	--send_command('bind ^] put storage slip* case all')
	--send_command('bind ^[ get storage slip* all') --PorterPacker Porter find
	send_command('bind ~p put storage slip* case all') --shift+p put all storage slip* all to case  -- all command put or get from itemizer addon 

	send_command('bind !, put * sack all;put * Satchel all') -- put everything to Satchel sack used if inventory full / --gs validate  --to check 	lua r gearswap
	send_command('bind !. put * Wardrobe4 all') -- put all equip to wardobe 4 / -- gs validate  --to check  -- lua r gearswap --;put * Wardrobe4 all;put * Wardrobe5 all;put * Wardrobe6 all;put * Wardrobe7 all;put * Wardrobe8 all

	send_command('bind ^. get storage slip* all;wait 1;po r') -- old version PorterPacker Porter used get storage slip* all equips from porter -- lua r PorterPacker addon
	send_command('bind ^, lua r PorterPacker;wait 1;get storage slip* all;wait 1;po r a') -- new version PorterPacker Porter used get storage slip* all equips from porter
	send_command('bind ^] get storage slip* all;wait 1;po pack')--  old version PorterPacker trade storage slip* all to porter
	send_command('bind ^[ get storage slip* all;wait 1;lua r PorterPacker;wait 1;po p a ') -- new version PorterPacker Porter used trade storage slip* all to porter
	send_command('bind !o put storage slip* case all;wait .3;gs org;wait 3;gs validate') 

	send_command('bind !m gs c toggle AutoMedicineMode') --use medicine if i have debuff
	-- send_command('bind !n gs c toggle AutoReraiseMode') -- equip zombie set autoreraise if u in jobs sam pld war bst drk drg

	--send_command('bind @m gs c mount Raptor')

	--send_command('gs org')-- org addon every change job
	if data.areas.cities:contains(world.area) then
		send_command('wait 1;put * wardrobe4 all;wait .3;put storage slip* case all;wait .5;gs org')-- org addon every change job
	end

end


send_command('bind ~s gs c toggle AutoLoggerMode;gs c toggle NotifyBuffs') --AutoLoggerMode and NotifyBuffs mode text in chat all u doing ja ws spell debuff buff in on 

--addon ascs autosc
send_command('bind ~f1 asc') --Turns addon on off.
send_command('bind ~f2 asc toggle') --Turns addon show/hide.
send_command('bind ~f3 asc open') --Turns addon open ws no/off.
send_command('bind ~f4 gs c cycle ascws;gs c ascws') --wait 1;
send_command('bind ~f5 gs c cycleback ascws;gs c ascws') --wait 1;
send_command('bind ~f6 asc r') --wait 1;
send_command('bind ~f7 asc pr') --wait 1;


-- البايند يشتغل فقط لما الشات مقفول (مافي سطر كتابة)
send_command('bind %~1 asc c 1')
send_command('bind %~2 asc c 2')
send_command('bind %~3 asc c 3')
send_command('bind %~4 asc c 4')

-- send_command('bind ~1 asc c 1') --Turns addon clos sc 1 .
-- send_command('bind ~2 asc c 2') --Turns addon clos sc 2.
-- send_command('bind ~3 asc c 3') --
-- send_command('bind ~4 asc c 4') --
--send_command('bind ~z gs c ascws') --wait 1;

send_command('bind ~q !') --Turns addon clos sc 1 .
send_command('bind ~w @') --Turns addon clos sc 2.
send_command('bind ~e #') --
send_command('bind ~r $') --
----

--addon Skillchainer
send_command('bind ~insert lua l Skillchainer;Skillchainer pause') --;Skillchainer on --Turns addon on off.
send_command('bind ~delete lua u Skillchainer') --Turns addon on off.
send_command('bind ~home Skillchainer pause;') --;Skillchainer on --Turns addon on off.
send_command('bind ~pageup gs c cycle Skillchainerws;gs c Skillchainerws') --wait 1;
send_command('bind ~pagedown gs c cycleback Skillchainerws;gs c Skillchainerws') --wait 1;

send_command('bind !home lua l trust') --Turns addon trust on.
send_command('bind !end lua u trust') --Turns addon trust off.

send_command('bind ^home trust toggle') --Turns addon trust start.
-- send_command('bind ^end trust stop') --Turns addon trust stop.

send_command('bind home lua l autobuff') --Turns addon  on.
send_command('bind end lua u autobuff') --Turns addon off.

send_command('bind ^@!f12 gs reload;gzc auto_point') -- lua r Gaze_check /--Reloads gearswap.and addon Gaze_check
send_command('bind ^@!f10 gzc auto_point') -- lua r Gaze_check /--Reloads gearswap.and addon Gaze_check

-- send_command('bind pageup ata on;lua load Gaze_check;input /p ((Attack is ON.)) >> killer machine ready <<')--Turns addon  auto attack target on. to be killer machine in Odyssey or Dynamis.
-- send_command('bind pagedown ata off;lua unload Gaze_check')--Turns addon  auto attack target off.

send_command('bind pageup ata toggle;gs c toggle AutoEngageMode;gzc auto_point;')--Turns addon  auto attack target on. to be killer machine in Odyssey or Dynamis.
-- send_command('bind pagedown ata off;lua unload Gaze_check')--Turns addon  auto attack target off.

send_command('bind !@^f7 gs c toggle AutoWSMode') --Turns auto-ws mode on and off.
send_command('bind !^f7 gs c toggle AutoFoodMode') --Turns auto-ws mode on and off.
send_command('bind f6 gs c cycle Weapons') --Cycle through weapons sets.
send_command('bind !f6 gs c cycleback Weapons') --Cycle through weapons sets.
send_command('bind @f8 gs c toggle AutoNukeMode') --Turns auto-nuke mode on and off.
send_command('bind ^f8 gs c toggle AutoStunMode') --Turns auto-stun mode off and on.
send_command('bind ^!f8 gs c toggle AutoDefenseMode') --Turns auto-defense mode off and on.
send_command('bind ^@!f8 gs c toggle AutoTrustMode') --Summons trusts automatically.
send_command('bind @pause gs c cycle AutoBuffMode') --Automatically keeps certain buffs up, job-dependant.
send_command('bind @scrolllock gs c cycle Passive') --Changes offense settings such as accuracy.
send_command('bind f9 gs c cycle OffenseMode') --Changes offense settings such as accuracy.
send_command('bind ^f9 gs c cycle HybridMode') --Changes defense settings for melee such as PDT.
send_command('bind @f9 gs c cycle RangedMode') --Changes ranged offense settings such as accuracy.
send_command('bind !f9 gs c cycle WeaponskillMode') --Changes weaponskill offense settings such as accuracy.
send_command('bind f10 gs c cycle PhysicalDefenseMode;gs c set DefenseMode Physical') --Turns your physical defense set on.
send_command('bind ^f10 gs c cycle PhysicalDefenseMode') --Changes your physical defense set.
send_command('bind !f10 gs c toggle Kiting') --Keeps your kiting gear on..
--send_command('bind f11 gs c set DefenseMode Magical') --Turns your magical defense set on.
send_command('bind @f11 gs c cycle CastingMode') --Changes your castingmode options such as magic accuracy.
send_command('bind ^f12 gs c cycle ResistDefenseMode') --Changes your resist defense set.
send_command('bind f12 gs c set DefenseMode Resist') --Turns your resist defense set on.
send_command('bind @f12 gs c cycle IdleMode') --Changes your idle mode options such as refresh.
--send_command('bind !f12 gs c reset DefenseMode') --Turns your defensive mode off.
-- send_command('bind ^@!f12 gs reload') --Reloads gearswap.
send_command('bind pause gs c update user') --Runs a quick check to make sure you have the right gear on and checks variables.
send_command('bind ^@!pause gs org') --Runs organizer.
send_command('bind ^@!backspace gs c buffup') --Buffup macro because buffs are love.
send_command('bind @r gs c weapons Default') --Requips weapons and gear.
send_command('bind ^y gs c toggle AutoCleanupMode') --Uses certain items and tries to clean up inventory.
send_command('bind ^t gs c cycle treasuremode') --Toggles hitting htings with your treasure hunter set.
send_command('bind !t input /target <bt>') --Targets the battle target.
send_command('bind ^o fillmode') --Lets you see through walls.
send_command('bind @m gs c mount Omega')


------------------------------------------------------------
-- نظام حماية البايندات من الكتابة في الشات باستخدام prerender
-- خفيف وآمن وما يسوي شيء كل فريم، فقط كل 0.2 ثانية
------------------------------------------------------------

-- local was_chat_open = nil        -- يتذكر آخر حالة للشات
-- local next_check   = 0           -- التوقيت القادم للفحص
-- local check_delay  = 3         -- الفاصل بين كل فحص (ثانيتين = 2.0 ، نصف ثانية = 0.5)

-- windower.register_event('prerender', function()
--     -- تايمر للفحص كل فترة فقط، مو كل فريم
--     local now = os.clock()
--     if now < next_check then
--         return
--     end
--     next_check = now + check_delay

--     -- نجيب معلومات اللعبة
--     local info = windower.ffxi.get_info()
--     if not info then
--         return
--     end

--     local chat_open = info.chat_open

--     -- لو ما تغيرت حالة الشات من آخر مرة → ما نسوي ولا شي
--     if was_chat_open ~= nil and chat_open == was_chat_open then
--         return
--     end

--     -- حدّث الحالة
--     was_chat_open = chat_open

--     if chat_open then
--         ------------------------------------------------------------
--         -- الشات انفتح → نفك البايندات اللي ما نبيها تشتغل في الشات
--         ------------------------------------------------------------
--         send_command('unbind ~1')
--         send_command('unbind ~2')
--         send_command('unbind ~3')
--         send_command('unbind ~4')
--     else
--         ------------------------------------------------------------
--         -- الشات تقفل → نرجع البايندات زي ما كانت
--         ------------------------------------------------------------
--         send_command('bind ~1 asc c 1')
--         send_command('bind ~2 asc c 2')
--         send_command('bind ~3 asc c 3')
--         send_command('bind ~4 asc c 4')
--     end
-- end)


-- -- كود DIK لزر Enter (من DirectInput)
-- local DIK_RETURN = 0x1C

-- -- حالة افتراضية: نعتمد على حالة الشات الحالية عند بداية التشغيل
-- local chat_mode = windower.ffxi.get_info().chat_open or false

-- windower.register_event('keyboard', function(dik, down, flags, blocked)
--     -- لو زر متحكم ثاني حاجز الزر، لا نشتغل
--     if blocked then
--         return
--     end

--     -- ما نتابع إلا لما ينضغط زر Enter نزولاً (down)
--     if dik == DIK_RETURN and down then
--         ----------------------------------------------------------------
--         -- هنا نفترض أن Enter يفتح أو يقفل الشات، فنقلب الحالة
--         ----------------------------------------------------------------
--         chat_mode = not chat_mode

--         if chat_mode then
--             -- الشات انفتح → فك البايندات
--             send_command('unbind ~1')
--             send_command('unbind ~2')
--             send_command('unbind ~3')
--             send_command('unbind ~4')
--         else
--             -- الشات تقفل → رجّع البايندات
--             send_command('bind ~1 asc c 1')
--             send_command('bind ~2 asc c 2')
--             send_command('bind ~3 asc c 3')
--             send_command('bind ~4 asc c 4')
--         end
--     end
-- end)


-- local next_check = 0
-- local check_delay = 1.0   -- ثانية بين كل فحص (تقدر تخليها 2.0 لو تبي أخف)
-- local was_chat_open = false

-- windower.register_event('prerender', function()
--     local now = os.clock()
--     if now < next_check then return end
--     next_check = now + check_delay
-- 	    -- if os.clock() - last_check < 0.5 then return end
--         -- last_check = os.clock()	
--         local chat_open = windower.ffxi.get_info().chat_open
-- 		if chat_open and not was_chat_open then
-- 			send_command('unbind ~1')
-- 			send_command('unbind ~2')
-- 			send_command('unbind ~3')
-- 			send_command('unbind ~4')
-- 			-- send_command('unbind `')
-- 			-- send_command('unbind tab')
	
-- 			was_chat_open = true
	
-- 		elseif not chat_open and was_chat_open then
-- 			send_command('bind ~1 asc c 1')
-- 			send_command('bind ~2 asc c 2')
-- 			send_command('bind ~3 asc c 3')
-- 			send_command('bind ~4 asc c 4')
-- 			was_chat_open = false
-- 		end
	


-- 		-- if state.AutoBuffMode.Value == 'Shinryu' then
-- 		-- 	if target and target.is_npc and target.hpp <= 1 and not low_hp_nm_triggered then
-- 		-- 		low_hp_nm_triggered = true
-- 		-- 		state.TreasureMode:set('Fulltime')
-- 		-- 		add_to_chat(207, 'NM HP ≤ 1% - Equipped low HP set.')
-- 		-- 	end
-- 		-- end
    
-- end)


-- Function to revert binds when unloading.
function global_unload()
	--for clear all binds //clearbinds
	-- send_command('clearbinds') 
	-- send_command('clear_binds') 
	send_command('unbind f1')
	send_command('unbind f2')
	send_command('unbind f3')
	send_command('unbind !s')
	send_command('unbind !r')
	send_command('unbind !5')
	send_command('unbind tab')
	send_command('unbind `')
    send_command('unbind ^numpad0')
    send_command('unbind ^a')
    send_command('unbind !a')
	send_command('unbind !e')
    send_command('unbind !;')
	send_command('unbind f9')
	send_command('unbind ^f9')
	send_command('unbind !f9')
	send_command('unbind @f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind !f10')
	send_command('unbind f11')
	send_command('unbind !f11')
	send_command('unbind ^-')
	send_command('unbind ^=')
	send_command('unbind -')
	send_command('unbind =')
	send_command('unbind !P')
	send_command('unbind ^P')
	send_command('unbind ^m')
	send_command('unbind ^backspace')
	send_command('unbind !n')
	send_command('unbind !;')
	send_command('unbind ^;')
	send_command('unbind !`')
	send_command('unbind @`')
	send_command('unbind !q')
	send_command('unbind @^`')
	send_command('unbind !pause')
	send_command('unbind @^`')
	send_command('unbind ^\\\\')
	send_command('unbind @\\\\')
	send_command('unbind !\\\\')
	send_command('unbind ')
	send_command('unbind ')
   --Safe Loader Function (Smart Mode: No errors, No spam)
	safe_load_addon('Singer')
    safe_load_addon('xivcrossbar')
    safe_load_addon('DNC-hud')
    safe_load_addon('SCH-hud')
    safe_load_addon('PLD-HUD')
    safe_load_addon('BST-HUD')

	send_command('lua unload xivcrossbar') 
	send_command('lua u Singer')--Turns addon off if job non brd.
	send_command('lua u PLD-HUD')--Turns addon off if job non pld.
	send_command('lua u DNC-hud')--Turns addon off if job non dnc.
	send_command('lua u sch-hud')--Turns addon off if job non sch.
	send_command('lua u BST-HUD')--Turns addon off if job non bst.

	send_command('parse reset')-- reset parse addon every change job

end
--  Safe Loader Function (Smart Mode: No errors, No spam)
function safe_load_addon(addon_name)
    local base_path = windower.addon_path .. '../' .. addon_name
    local file = io.open(base_path .. '/init.lua', 'r')
    if file then
        file:close()
        windower.send_command('lua load ' .. addon_name)
    else
        --  إذا الإضافة غير موجودة → تجاهل بصمت بدون طباعة أي خطأ
        return
    end
end

--auto reload addon repeater with reload addon gearswap and makw it off
send_command('lua r repeater;repeater off')


--Alias codes autocommands
send_command('alias nyzul repeater command input /yell Nyzul Isle token farm LFM 1/3 ;repeater repeat; repeater delay 60')
send_command('alias nyzul1 repeater command input /yell Nyzul Isle token farm LFM 1/3 ;repeater repeat; repeater delay 60')
send_command('alias nyzul2 repeater command input /yell Nyzul Isle token farm LFM 2/3 ;repeater repeat; repeater delay 60')
-- send_command('alias nyzul repeater command input /yell group Nyzul Isle Token farming daily 3xrun 30k point Long time LFM aoe job 2/3 going now farming ;repeater repeat; repeater delay 60')

--remove trust
send_command('alias refa input /refa all')
send_command('alias retr input /retr all')

--mars orb autoshout
send_command('alias mars repeater command input /yell mars orb Can I have it? Buy? 2.5 mill  ;repeater repeat; repeater delay 60')
--mars orb auto target chest
-- send_command('alias trove input //lua l Trove-HUD;wait 1;trove next')
--mars orb auto target chest
-- send_command('alias aman input //lua l Trove-HUD;wait 1;trove next;') --input /echo After opening, use the command: //trove next to choose your next chest.;input /echo Then use: //trove reset to start over again.
--take radials ki from npc in eschas npc
send_command('alias rad input /targetnpc;wait 2;setkey enter down; wait 0.1; setkey enter up;wait 5;setkey down down; wait 0.1; setkey down up;wait 2;setkey down down;wait 0.1; setkey down up;wait 2;setkey enter down; wait 0.1; setkey enter up;wait 2;setkey down down; wait 0.1; setkey down up;setkey enter down; wait 0.1; setkey enter up;wait 2;setkey up down; wait 0.1; setkey up up;wait 2;setkey enter down; wait 0.1; setkey enter up;')
-- setkey enter down; wait 0.1; setkey enter up;wait 3;setkey down down;wait 0.1; setkey 
send_command('alias aeonicki col geas fete zitah pops;col geas fete ruaun pops;col geas fete reisenja pops;')
send_command('alias zitahpop col geas fete zitah pops;')
send_command('alias ruaunpop col geas fete ruaun pops;col nazars')
send_command('alias reispop col geas fete reisenja pops;')
send_command('alias helmpop col albumen;col erinys;col onychophora;col schah;col teles;col vinipata;col zerde;')

send_command('alias odya col sheol a pop items;')
send_command('alias odyb col sheol b pop items;')
send_command('alias odyc col sheol c pop items;')

send_command('alias vagarypop col vagary key items;col vagary leader')
send_command('alias omenpop col omen boss beads;')
send_command('alias mythic col mythic weapons;')
send_command('alias relic col relic weapons;')
send_command('alias empyrean col empyrean weapons;')
send_command('alias aeonic col aeonic weapons;')
send_command('alias dynamisweapons col divergence weapons;')
send_command('alias dynamisnecks col divergence necks;')

send_command('alias ambuscadeweapons col ambuscade weapons;')
send_command('alias ambuweapons col ambuscade weapons;')

send_command('alias ambusell repeater command input /yell Ambuscade VDV1  Do you need it? Buy? 1 mill/run ;repeater repeat; repeater delay 60')
send_command('alias ambusell3 repeater command input /yell Ambuscade VDV1  Do you need it? Buy? 1 mill/run 3/6 ;repeater repeat; repeater delay 60')
send_command('alias ambusell4 repeater command input /yell Ambuscade VDV1  Do you need it? Buy? 1 mill/run 4/6 ;repeater repeat; repeater delay 60')
send_command('alias ambusell5 repeater command input /yell Ambuscade VDV1  Do you need it? Buy? 1 mill/run 5/6 last spot ;repeater repeat; repeater delay 60')

--ambuscade autoshout
send_command('alias ambuscade repeater command input /yell Ambuscade VDV1 LFM dd COR COR PLD RDM WHM 2/6" ;repeater repeat; repeater delay 60')
send_command('alias ambuscadefrog repeater command input /yell Ambuscade (VDV1 with SP up)-(D spam with SP down) LFM PUP x2 COR 2@;repeater repeat; repeater delay 60')
send_command('alias ambufrog repeater command input /yell Ambuscade (VDV1 with SP up)-(D spam with SP down) LFM PUP x2 COR 2@;repeater repeat; repeater delay 60')
send_command('alias ambufrog1 repeater command input /yell Ambuscade (VDV1 with SP up)-(D spam with SP down) LFM PUP x2 COR;repeater repeat; repeater delay 60')
send_command('alias ambufrog2 repeater command input /yell Ambuscade (VDV1 with SP up)-(D spam with SP down) LFM PUP x2 COR 2@;repeater repeat; repeater delay 60')
--ambuscade  Soulflayer demons  --method ranged
send_command('alias ambudemon repeater command input /yell Ambuscade VDV1 Looking for members. tank cor rng brd/whm geo/whm ;repeater repeat; repeater delay 60')
send_command('alias ambudemont repeater command input /yell Ambuscade VDV1 Looking for members. tank 5/6;repeater repeat; repeater delay 60')
send_command('alias ambudemonb repeater command input /yell Ambuscade VDV1 Looking for members. brd/whm 5/6;repeater repeat; repeater delay 60')
send_command('alias ambudemong repeater command input /yell Ambuscade VDV1 Looking for members. geo/whm 5/6;repeater repeat; repeater delay 60')
send_command('alias ambudemonc repeater command input /yell Ambuscade VDV1 Looking for members. cor 5/6;repeater repeat; repeater delay 60')
send_command('alias ambudemonbt repeater command input /yell Ambuscade VDV1 Ranged method Looking for members. brd/whm tank 4/6;repeater repeat; repeater delay 60')

send_command('alias ambupup repeater command input /yell Ambuscade (VDV1 with SP up)-(D spam with SP down) LFM PUP x2 COR 2@;repeater repeat; repeater delay 60')
--ambuscade autobuy Alexandrite 
send_command('alias ambualx repeater command ambu buy hallmarks 99 Alex;repeater repeat; repeater delay 5')
send_command('alias ambualx2 repeater command ambu buy gallantry 99 Alex;repeater repeat; repeater delay 5')
-- auto tradenpc Alexandrite 
send_command('alias tradealx repeater command tradenpc 792 alexandrite;repeater repeat; repeater delay 5')
-- auto tradenpc Beitetsu 
send_command('alias tradeBeitetsu repeater command tradenpc 792 Beitetsu;repeater repeat; repeater delay 5')
-- auto tradenpc Riftborn Boulder 
send_command('alias tradeRiftborn repeater command tradenpc 792 Riftborn Boulder;repeater repeat; repeater delay 5')
-- auto tradenpc Pluton
send_command('alias tradeRiftborn repeater command tradenpc 792 Pluton;repeater repeat; repeater delay 5')
-- auto tradenpc M. Astral Detritus
send_command('alias trademAstral repeater command tradenpc 792 M. Astral Detritus;repeater repeat; repeater delay 5')
-- auto tradenpc S. Astral Detritus
send_command('alias tradesAstral repeater command tradenpc 792 S. Astral Detritus;repeater repeat; repeater delay 5')
-- auto tradenpc Heroism Crystal
send_command('alias tradeHeroism repeater command tradenpc 792 Heroism Crystal;repeater repeat; repeater delay 5')
-- auto tradenpc Heroism Aggregate
send_command('alias tradeAggregate repeater command tradenpc 792 Aggregate;repeater repeat; repeater delay 5')
-- auto tradenpc Heavy Metal  
send_command('alias tradeHeavyMetal repeater command tradenpc 792 Heavy Metal;repeater repeat; repeater delay 5')
-- auto tradenpc H-P Bayld 
send_command('alias tradeHeavyMetal repeater command tradenpc 792 H-P Bayld;repeater repeat; repeater delay 5')

-- auto buy all Acheron Shield from sparks npc
send_command('alias Acheron sparks buyall Acheron Shield')
-- auto sell all Acheron Shield
send_command('alias sellAcheron sellnpc Acheron Shield')

send_command('alias Temenos repeater command input /yell "Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or PLD healer 2@" ;repeater repeat; repeater delay 60')

send_command('alias Temenos2 repeater command input /yell "Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or PLD healer 2@" ;repeater repeat; repeater delay 60')
send_command('alias Temenos3 repeater command input /yell "Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or PLD healer 3@" ;repeater repeat; repeater delay 60')
send_command('alias Temenos4 repeater command input /yell "Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or PLD healer 4@" ;repeater repeat; repeater delay 60')
send_command('alias Temenos5 repeater command input /yell "Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or PLD healer 5@" ;repeater repeat; repeater delay 60')


-- send_command('alias Temenos2 repeater command input /yell Temenos super climb Looking for members. DD/dnc BRD/dnc COR/dnc RDM(HEALER) or WHM or pld healer 2@;toggle_repeater;repeater delay 60;')

---------------------------------------------------------
--  TEMENOS SUPER CLIMB SHOUTS
---------------------------------------------------------

--shout 2=2@ pt d=dd b=brd c=cor w=whm or rdm or pld healer
send_command('alias tem2dcbw repeater command input /yell "Temenos Super Climb LFM DD/DNC BRD/DNC COR/DNC RDM(Healer) or WHM or PLD healer 2/6"; repeater repeat; repeater delay 60;')

	--shout 3=3@ pt d=dd b=brd w=whm
	send_command('alias tem3dbw repeater command input /yell "Temenos Super Climb LFM DD/DNC BRD/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt d=dd c=cor w=whm
	send_command('alias tem3dcw repeater command input /yell "Temenos Super Climb LFM DD/DNC COR/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt b=brd c=cor w=whm
	send_command('alias tem3bcw repeater command input /yell "Temenos Super Climb LFM BRD/DNC COR/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt d=dd b=brd c=cor
	send_command('alias tem3dcb repeater command input /yell "Temenos Super Climb LFM DD/DNC BRD/DNC COR/DNC 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt d=dd b=brd
	send_command('alias tem4db repeater command input /yell "Temenos Super Climb LFM DD/DNC BRD/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt d=dd c=cor
	send_command('alias tem4dc repeater command input /yell "Temenos Super Climb LFM DD/DNC COR/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt b=brd c=cor
	send_command('alias tem4bc repeater command input /yell "Temenos Super Climb LFM BRD/DNC COR/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt t=pld w=whm
	send_command('alias tem4tw repeater command input /yell "Temenos Super Climb LFM PLD(Healer) WHM 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 5=5@ pt healer only
	send_command('alias tem5w repeater command input /yell "Temenos Super Climb LFM Healer 5/6"; repeater repeat; repeater delay 60;')
	
	--shout 5=5@ pt dd only
	send_command('alias tem5d repeater command input /yell "Temenos Super Climb LFM DD/DNC 5/6"; repeater repeat; repeater delay 60;')
	
	
	---------------------------------------------------------
	--  APOLLYON SUPER CLIMB SHOUTS
	---------------------------------------------------------
	
	--shout 2=2@ pt d=dd b=brd c=cor w=whm or rdm or pld healer
	send_command('alias apo2dcbw repeater command input /yell "Apollyon Super Climb LFM DD/DNC BRD/DNC COR/DNC RDM(Healer) or WHM or PLD healer 2/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt d=dd b=brd w=whm
	send_command('alias apo3dbw repeater command input /yell "Apollyon Super Climb LFM DD/DNC BRD/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt d=dd c=cor w=whm
	send_command('alias apo3dcw repeater command input /yell "Apollyon Super Climb LFM DD/DNC COR/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt b=brd c=cor w=whm
	send_command('alias apo3bcw repeater command input /yell "Apollyon Super Climb LFM BRD/DNC COR/DNC WHM 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 3=3@ pt d=dd b=brd c=cor
	send_command('alias apo3dcb repeater command input /yell "Apollyon Super Climb LFM DD/DNC BRD/DNC COR/DNC 3/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt d=dd b=brd
	send_command('alias apo4db repeater command input /yell "Apollyon Super Climb LFM DD/DNC BRD/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt d=dd c=cor
	send_command('alias apo4dc repeater command input /yell "Apollyon Super Climb LFM DD/DNC COR/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt b=brd c=cor
	send_command('alias apo4bc repeater command input /yell "Apollyon Super Climb LFM BRD/DNC COR/DNC 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 4=4@ pt t=pld w=whm
	send_command('alias apo4tw repeater command input /yell "Apollyon Super Climb LFM PLD(Healer) WHM 4/6"; repeater repeat; repeater delay 60;')
	
	--shout 5=5@ pt healer only
	send_command('alias apo5w repeater command input /yell "Apollyon Super Climb LFM Healer 5/6"; repeater repeat; repeater delay 60;')
	
	--shout 5=5@ pt dd only
	send_command('alias apo5d repeater command input /yell "Apollyon Super Climb LFM DD/DNC 5/6"; repeater repeat; repeater delay 60;')
	
------ seg 

-- send_command('alias segcas repeater command input /yell odyssey Casual SEG C farm LFM dd brd cor whm tank 2/6;repeater repeat;repeater delay 60;')

send_command('alias seg repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 2/6;repeater repeat;repeater delay 60;')
send_command('alias seg1 repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 1/6;repeater repeat;repeater delay 60;')
send_command('alias seg2 repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 2/6;repeater repeat;repeater delay 60;')
send_command('alias seg3 repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 3/6;repeater repeat;repeater delay 60;')
send_command('alias seg4 repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 4/6;repeater repeat;repeater delay 60;')
send_command('alias seg5 repeater command input /yell odyssey C Halo+NM farm LFM dd brd cor healer tank 5/6;repeater repeat;repeater delay 60;')

--====================================================
--  SEG C FARM - CURRENT PARTY 2/6 (FULL ROLE COMBOS)
--====================================================

--shout 1=2@ pt d=dd c=cor b=brd t=tank w=whm
send_command('alias seg1 repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ brd/r20+ tank healer 2/6;repeater repeat;repeater delay 60;')

--shout 1=2@ pt d=dd c=cor b=brd t=tank w=whm
send_command('alias seg1dcbt repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ brd/r20+ tank healer 2/6;repeater repeat;repeater delay 60;')

--shout 2=2@ pt d=dd c=cor b=brd t=tank
send_command('alias seg2dcbt repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ brd/r20+ tank 2/6;repeater repeat;repeater delay 60;')

	--shout 2=2@ pt d=dd c=cor b=brd w=whm
	send_command('alias seg2dcbw repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ brd/r20+ healer 2/6;repeater repeat;repeater delay 60;')
	
	--shout 2=2@ pt d=dd c=cor t=tank w=whm
	send_command('alias seg2dctw repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ tank healer 2/6;repeater repeat;repeater delay 60;')
	
	--shout 2=2@ pt d=dd b=brd t=tank w=whm
	send_command('alias seg2dbtw repeater command input /yell odyssey SEG C farm LFM dd/r20+ brd/r20+ tank healer 2/6;repeater repeat;repeater delay 60;')
	
	--shout 2=2@ pt b=brd c=cor t=tank w=whm
	send_command('alias seg2bctw repeater command input /yell odyssey SEG C farm LFM brd/r20+ cor/r20+ tank healer 2/6;repeater repeat;repeater delay 60;')
	


--shout 3=3@


--shout 3=3@ pt b=brd t=tank w=whm
send_command('alias seg3btw repeater command input /yell odyssey SEG C farm LFM  brd tank healer 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt c=cor t=tank w=whm
send_command('alias seg3ctw repeater command input /yell odyssey SEG C farm LFM cor/r20+ healer tank 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt d=dd t=tank w=whm
send_command('alias seg3dtw repeater command input /yell odyssey SEG C farm LFM dd/r20+ tank healer 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt d=dd b=brd w=whm
send_command('alias seg3dbw repeater command input /yell odyssey SEG C farm LFM dd/r20+ brd/r20+ healer 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt d=dd c=cor w=whm
send_command('alias seg3dcw repeater command input /yell odyssey SEG C farm LFM dd/r20+ cor/r20+ healer 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt d=dd c=cor b=brd 
send_command('alias seg3dcb repeater command input /yell odyssey SEG C farm LFM dd/r20+ brd/r20+ cor/r20+ 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt b=brd c=cor w=whm
send_command('alias seg3bcw repeater command input /yell odyssey SEG C farm LFM brd/r20+ cor/r20+ healer 3/6;repeater repeat;repeater delay 60;')
--shout 3=3@ pt b=brd c=cor t=tank
send_command('alias seg3bct repeater command input /yell odyssey SEG C farm LFM brd/r20+ cor/r20+ tank 3/6;repeater repeat;repeater delay 60;')

--shout 4=4@
--shout 4=4@ pt t=tank w=whm
send_command('alias seg4tw repeater command input /yell odyssey SEG C farm LFM tank healer 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt b-brd w=whm
send_command('alias seg4bw repeater command input /yell odyssey SEG C farm LFM brd healer 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt b-brd t=tank
send_command('alias seg4bt repeater command input /yell odyssey SEG C farm LFM brd tank 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd b-brd
send_command('alias seg4db repeater command input /yell odyssey SEG C farm LFM dd brd 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt c=cor b-brd 
send_command('alias seg4cb repeater command input /yell odyssey SEG C farm LFM cor brd 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd c=cor 
send_command('alias seg4dc repeater command input /yell odyssey SEG C farm LFM dd cor 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd t=tank 
send_command('alias seg4dt repeater command input /yell odyssey SEG C farm LFM dd tank 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd w=whm
send_command('alias seg4dw repeater command input /yell odyssey SEG C farm LFM dd healer 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt c=cor t=tank
send_command('alias seg4ct repeater command input /yell odyssey SEG C farm LFM cor tank 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt c=cor w=whm
send_command('alias seg4cw repeater command input /yell odyssey SEG C farm LFM cor healer 4/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd b-brd t=tank
send_command('alias seg4dbt repeater command input /yell odyssey SEG C farm LFM dd brd tank 4/6;repeater repeat;repeater delay 60;')

--shout 5=5@

--shout 4=4@ pt t=tank
send_command('alias seg5t repeater command input /yell odyssey SEG C farm LFM tank 5/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt w=whm
send_command('alias seg5w repeater command input /yell odyssey SEG C farm LFM healer 5/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt b-brd
send_command('alias seg5b repeater command input /yell odyssey SEG C farm LFM brd 5/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt c=cor
send_command('alias seg5c repeater command input /yell odyssey SEG C farm LFM cor 5/6;repeater repeat;repeater delay 60;')
--shout 4=4@ pt d=dd
send_command('alias seg5d repeater command input /yell odyssey SEG C farm LFM dd 5/6;repeater repeat;repeater delay 60;')
--shout 5=5@ pt d=dd t=tank
send_command('alias seg5dt repeater command input /yell odyssey SEG C farm LFM dd tank 5/6;repeater repeat;repeater delay 60;')

--sortie

--sortiec / c = Casual
send_command('alias sortiec repeater command input /yell sortie Casual AECG mb magical method Looking for members. geo blm sch run cor 2/6;repeater repeat;repeater delay 60;')
--sortie2m6 / 2m6 = 2=pt m=magical 6=nms
send_command('alias sortiem repeater command input /yell sortie ABCECG mb magical method Looking for members. geo blm sch run cor 2/6;repeater repeat;repeater delay 60;')
send_command('alias sortie2m6 repeater command input /yell sortie ABCECG mb magical method Looking for members. geo blm sch run cor 2/6;repeater repeat;repeater delay 60;')
send_command('alias sortie3m6 repeater command input /yell sortie ABCECG mb magical method Looking for members. geo blm sch run cor 3/6;repeater repeat;repeater delay 60;')
send_command('alias sortie4m6 repeater command input /yell sortie ABCECG mb magical method Looking for members. geo blm sch run cor 4/6;repeater repeat;repeater delay 60;')
send_command('alias sortie5m6 repeater command input /yell sortie ABCECG mb magical method Looking for members. geo blm sch run cor 5/6;repeater repeat;repeater delay 60;')
--sortie2p6 / 2p6 = 2=pt p=Physical 6=nms
send_command('alias sortie repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 2/6;repeater repeat;repeater delay 60;')
send_command('alias sortiep repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 2/6;repeater repeat;repeater delay 60;')
send_command('alias sortie2p6 repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 2/6;repeater repeat;repeater delay 60;')
send_command('alias sortie3p6 repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 3/6;repeater repeat;repeater delay 60;')
send_command('alias sortie4p6 repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 4/6;repeater repeat;repeater delay 60;')
send_command('alias sortie5p6 repeater command input /yell sortie ABCECG melee method Looking for members. dd/r20+ cor/r20+ brd/r20+ rdm/r20+ healer 5/6;repeater repeat;repeater delay 60;')


---------------------------------------------------------
--  SORTIE SHOUT SYSTEM (sor)
-- Organized aliases with job abbreviations:
-- d = DD, c = COR, b = BRD, w = WHM/Healer
-- m = Magical method (MB team)
-- p = Physical method (Melee team)
-- Example: //sor3dcb = sortie 3/6 with DD + COR + BRD
---------------------------------------------------------

---------------------------------------------------------
-- MAGICAL METHOD (MB TEAM)
---------------------------------------------------------

-- sor2gbsr = 2/6 party members (GEO + BLM + SCH + RUN + COR + Healer)
send_command('alias sor2gbsr repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ BLM/R20+ SCH/R20+ RUN/R20+ COR/R20+ Healer 2/6"; repeater repeat; repeater delay 60;')

	-- sor3gbsr = 3/6 party members (GEO + BLM + SCH + RUN + COR)
	send_command('alias sor3gbsr repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ BLM/R20+ SCH/R20+ RUN/R20+ COR/R20+ 3/6"; repeater repeat; repeater delay 60;')
	
	-- sor3gbsw = 3/6 party members (GEO + BLM + SCH + Healer)
	send_command('alias sor3gbsw repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ BLM/R20+ SCH/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sor3gbrw = 3/6 party members (GEO + BLM + RUN + Healer)
	send_command('alias sor3gbrw repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ BLM/R20+ RUN/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sor3bsrw = 3/6 party members (BLM + SCH + RUN + Healer)
	send_command('alias sor3bsrw repeater command input /yell "Sortie ABCECG MB Magical method LFM BLM/R20+ SCH/R20+ RUN/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sor4gb = 4/6 party members (GEO + BLM)
	send_command('alias sor4gb repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ BLM/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor4gs = 4/6 party members (GEO + SCH)
	send_command('alias sor4gs repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ SCH/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor4gr = 4/6 party members (GEO + RUN)
	send_command('alias sor4gr repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ RUN/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor4bw = 4/6 party members (BLM + Healer)
	send_command('alias sor4bw repeater command input /yell "Sortie ABCECG MB Magical method LFM BLM/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor4sw = 4/6 party members (SCH + Healer)
	send_command('alias sor4sw repeater command input /yell "Sortie ABCECG MB Magical method LFM SCH/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor4rw = 4/6 party members (RUN + Healer)
	send_command('alias sor4rw repeater command input /yell "Sortie ABCECG MB Magical method LFM RUN/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sor5w = 5/6 party members (Healer only)
	send_command('alias sor5w repeater command input /yell "Sortie ABCECG MB Magical method LFM Healer 5/6"; repeater repeat; repeater delay 60;')
	
	-- sor5g = 5/6 party members (GEO only)
	send_command('alias sor5g repeater command input /yell "Sortie ABCECG MB Magical method LFM GEO/R20+ 5/6"; repeater repeat; repeater delay 60;')
	
	-- sor5b = 5/6 party members (BLM only)
	send_command('alias sor5b repeater command input /yell "Sortie ABCECG MB Magical method LFM BLM/R20+ 5/6"; repeater repeat; repeater delay 60;')
	
	-- sor5s = 5/6 party members (SCH only)
	send_command('alias sor5s repeater command input /yell "Sortie ABCECG MB Magical method LFM SCH/R20+ 5/6"; repeater repeat; repeater delay 60;')
	
	-- sor5r = 5/6 party members (RUN only)
	send_command('alias sor5r repeater command input /yell "Sortie ABCECG MB Magical method LFM RUN/R20+ 5/6"; repeater repeat; repeater delay 60;')
	
	---------------------------------------------------------
	-- ⚔️ PHYSICAL METHOD (MELEE TEAM)
	---------------------------------------------------------
	
	-- sorp2dcbw = 2/6 party members (DD + COR + BRD + Healer)
	send_command('alias sorp2dcbw repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ COR/R20+ BRD/R20+ Healer 2/6"; repeater repeat; repeater delay 60;')
	
	-- sorp3dcb = 3/6 party members (DD + COR + BRD)
	send_command('alias sorp3dcb repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ COR/R20+ BRD/R20+ 3/6"; repeater repeat; repeater delay 60;')
	
	-- sorp3dbw = 3/6 party members (DD + BRD + Healer)
	send_command('alias sorp3dbw repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ BRD/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sorp3dcw = 3/6 party members (DD + COR + Healer)
	send_command('alias sorp3dcw repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ COR/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sorp3bcw = 3/6 party members (BRD + COR + Healer)
	send_command('alias sorp3bcw repeater command input /yell "Sortie ABCECG Melee method LFM BRD/R20+ COR/R20+ Healer 3/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4db = 4/6 party members (DD + BRD)
	send_command('alias sorp4db repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ BRD/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4dc = 4/6 party members (DD + COR)
	send_command('alias sorp4dc repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ COR/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4bc = 4/6 party members (BRD + COR)
	send_command('alias sorp4bc repeater command input /yell "Sortie ABCECG Melee method LFM BRD/R20+ COR/R20+ 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4dw = 4/6 party members (DD + Healer)
	send_command('alias sorp4dw repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4cw = 4/6 party members (COR + Healer)
	send_command('alias sorp4cw repeater command input /yell "Sortie ABCECG Melee method LFM COR/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp4bw = 4/6 party members (BRD + Healer)
	send_command('alias sorp4bw repeater command input /yell "Sortie ABCECG Melee method LFM BRD/R20+ Healer 4/6"; repeater repeat; repeater delay 60;')
	
	-- sorp5w = 5/6 party members (Healer only)
	send_command('alias sorp5w repeater command input /yell "Sortie ABCECG Melee method LFM Healer 5/6"; repeater repeat; repeater delay 60;')
	
	-- sorp5d = 5/6 party members (DD only)
	send_command('alias sorp5d repeater command input /yell "Sortie ABCECG Melee method LFM DD/R20+ 5/6"; repeater repeat; repeater delay 60;')
	
	
		send_command('alias sorwsall input /p WS ALL BOSSES: DRK=Judgment/Savage WAR=Ukko\'s/Metatron RDM=Black Halo BRD=Savage COR=Savage SAM=Shoha BLU=Savage/Black Halo DNC=Shark Bite DRG=Camlann\'s NIN=Metsu/Kamu/Savage/Judgment";')
		send_command('alias sorwsf input /p WS F DRK=Cross Reaper/Origin WAR=Fimbulvetr/Impulse RDM=Black Halo BRD=Rudra/Mordant/Ruthless COR=Evisceration SAM=Fudo BLU=Expiacion DNC=Rudra/Ruthless/Pyrrhic')
		send_command('alias sorwsaceg input /p WS ACEG: DRK=Torcleaver/Insurgency WAR=Upheaval/Ukko\'s/Metatron RDM=Black Halo BRD=Savage/Exenterator/Mordant COR=Savage/Last Stand SAM=Shoha/Kagero BLU=Savage/Black Halo DNC=Exenterator/Shark DRG=Camlann\'s/Drakesbane NIN=Shun/Metsu/Kamu/Kasha(AMBU GK)/Savage/Judgment')
    -- DNC / Aminon
		send_command('alias aminon_dnc input /p "AMINON(DNC): Keep 10 FM pre-pull. Presto→Step→Presto→Step to 10; Building pre-fight; WS→TP→Climatic→WS→Reverse→WS. High/Super Jump to drop hate."; repeater repeat; repeater delay 60;')

    --  Nakuuals 

    send_command('alias sornakweak input /p "NAKUUAL WEAKS: Bztavian=Ice Rockfin=Thunder Gabbrath=Water Yggdreant=Wind Waktza=Earth Cehuetzi=Fire"')

--------




-- send_command('alias ambuseal input /item "Abdhaljs Seal" <me>')
send_command('alias rads temps buy Radialens')
-- send_command('alias molli temps buy Mollifier')
-- send_command('alias temps temps buy')
-- send_command('alias tonic tonic buffup')

-----------------------------------------
-- Auto SEG Switcher (Standalone / No Repeater)
-- Completely stops after zone change
-----------------------------------------

-- Configurable settings
local AUTO_SEG        = false   -- Enable/Disable the system manually
local YELL_INTERVAL   = 60      -- Seconds between automatic yells
local POST_ZONE_DELAY = 5       -- Delay after zoning before allowing yells (not used after system stops)
local COOLDOWN_SWITCH = 3       -- Delay to prevent rapid switching

-- Operational variables
local last_party_size = -1
local last_yell_t     = 0
local last_switch_t   = 0
local zone_changed_t  = 0
local tick_accum      = 0
local TICK_EVERY      = 0.5

-- Safely count party size (includes Trusts)
local function get_party_size_safe()
	local party = windower.ffxi.get_party()
	if not party then return 0 end
	if party.party1_count and type(party.party1_count) == 'number' then
		return party.party1_count
	end
	local n = 0
	for i = 1, 6 do
		local m = party['p'..i]
		if m and m.name then
			n = n + 1
		end
	end
	return n
end

-- Builds the yell text based on party size
local function build_seg_yell(size)
	local label = tostring(size) .. "/6"
	return ('input /yell "odyssey SEG C farm LFM dd/r20+ brd/r20+ cor/r20+ healer tank %s"'):format(label)
end

-- Sends the actual yell
local function do_yell(size)
	if size < 2 or size > 5 then return end
	send_command(build_seg_yell(size))
	last_yell_t = os.clock()
end

-- After zone change: completely stop the system
windower.register_event('zone change', function()
	zone_changed_t  = os.clock()
	last_party_size = -1
	last_yell_t     = 0
	AUTO_SEG        = false      -- ← Complete stop after zoning
	-- Optional: Silent message (commented out)
	-- windower.add_to_chat(207, '[SEG] stopped after zone change.')
end)

-- Periodic watcher
local function seg_watcher_tick(dt)
	if not AUTO_SEG then return end

	-- Check interval
	tick_accum = tick_accum + (dt or 0)
	if tick_accum < TICK_EVERY then return end
	tick_accum = 0

	-- Conditions that prevent operation
	local info = windower.ffxi.get_info()
	if not info or info.loading or info.mog_house then return end
	if os.clock() - zone_changed_t < POST_ZONE_DELAY then return end

	local size = get_party_size_safe()

	-- Stop when solo or 6/6
	if size <= 1 or size >= 6 then
		if size >= 6 then last_yell_t = 0 end
		last_party_size = size
		return
	end

	local now = os.clock()
	local size_changed = (size ~= last_party_size)

	-- Immediate yell on size change with a short cooldown
	if size_changed then
		if now - last_switch_t >= COOLDOWN_SWITCH then
			do_yell(size)
			last_switch_t   = now
			last_party_size = size
			return
		else
			last_party_size = size
			return
		end
	end

	-- Periodic yell every YELL_INTERVAL
	if now - last_yell_t >= YELL_INTERVAL then
		do_yell(size)
		last_switch_t   = now
		last_party_size = size
		return
	end
end

-- Bind the watcher to prerender
do
	local prev_clock = os.clock()
	windower.register_event('prerender', function()
		local now = os.clock()
		local dt  = now - prev_clock
		prev_clock = now
		seg_watcher_tick(dt)
	end)
end




-- -- تسجيل حدث لتحديث الأمر عند تغيير الفريق
-- windower.register_event('party change', function()
--     windower.add_to_chat(207, '[SEG] Party change detected.')
--     update_seg_command()
-- end)

-- -- استدعاء الدالة عند تحميل الإضافة
-- windower.add_to_chat(207, '[SEG] Loading SEG command updater.')
-- update_seg_command()

windower.register_event('action', function(act)
	-- if act.category == 6 then
    --     windower.add_to_chat(158, 'Roll action detected.')
    --     if rollInfo and table.containskey(rollInfo, act.param) then
    --         windower.add_to_chat(158, 'RollInfo contains key: ' .. act.param)
    --         if act.targets and act.targets[1] and act.targets[1].actions and act.targets[1].actions[1] then
    --             local rollNum = act.targets[1].actions[1].param
    --             windower.add_to_chat(158, 'Roll number: ' .. rollNum)
	-- 			if rollNum >= 1 and rollNum <= 12 then
    --                 windower.add_to_chat(158, 'Lucky Roll! Equipping Roller Ring.')
    --                 windower.send_command('input /equip ring1 "Roller Ring"')
    --             end
    --         else
    --             windower.add_to_chat(158, 'Targets or actions not found.')
    --         end
    --     else
    --         windower.add_to_chat(158, 'RollInfo does not contain key: ' .. act.param)
    --     end
    -- end
    --It is from the highest secrets.
	local actor = (act.actor_id and windower.ffxi.get_mob_by_id(act.actor_id)) or 'unknown'
	if type(actor) == "table" then
		actor = actor.name
	end

	local monster_ability = res.monster_abilities[act.targets[1].actions[1].param]
	local spell_start = res.spells[act.targets[1].actions[1].param]
	--It is from the highest secrets.
	if (actor == 'Agon Defender' or actor == 'Agon Clearmind' or 
	actor == 'Agon Infidel' or actor == 'Agon Ritualist' or
	 actor == 'Agon Sharpshooter' or actor == 'Agon Shieldsaint' or
	  actor == 'Agon Rabblerouser' or actor == 'Agon Adjudicator' or
	   actor == 'Agon Yojimbo' or actor == 'Agon Scallywag' or
	    actor == 'Agon Vizier' or actor == 'Agon Marksman') then
		local monster_ability = res.monster_abilities[act.param]
		if monster_ability == nil then
			return
		elseif monster_ability.en == 'Rising Swell' then
			windower.add_to_chat(207, 'Monster Ability Detected: ' .. monster_ability.en)
			send_command('gs c update') 
			style_lock = true
		elseif monster_ability.en == 'Torrent' then
			windower.add_to_chat(207, 'Monster Ability Detected: ' .. monster_ability.en)
			send_command('gs c update') 
			style_lock = true			-- coroutine.schedule(function()
			-- 	windower.add_to_chat(207, 'Wing Cutter  is off!')
			-- end, 30)
		end
	end
	if actor == 'Minaruja' then
		local monster_ability = res.monster_abilities[act.param]
		if monster_ability == nil then
			return
		elseif monster_ability.en == 'Hurricane Breath' then
			windower.add_to_chat(207, 'Hurricane Breath')
			send_command('gs c update') 
			style_lock = true
		end
	end
	if actor == 'Sedna' then
		local monster_ability = res.monster_abilities[act.param]
		if monster_ability == nil then
			return
		elseif monster_ability.en == 'Hydro Wave' then
			windower.add_to_chat(207, 'Monster Ability Detected: ' .. monster_ability.en)
			send_command('gs c update') 
			style_lock = true
		end
	end
	if actor == 'Sedna' then
		local monster_ability = res.monster_abilities[act.param]
		if monster_ability == nil then
			return
		elseif monster_ability.en == 'Rising Swell' then
			windower.add_to_chat(207, 'Rising Swell')
			send_command('gs c update') 
			style_lock = true
		end
	end

end)


notified_hippo = false  

function Warping()
	local party = windower.ffxi.get_party()
	local current_zone = windower.ffxi.get_info().zone

	if player.status ~= 'Dead' and not buff == "weakness" and not buffactive.doom and being_attacked and player.equipment.ring2 == "Warp Ring" then
	    windower.send_command('input /p Never Die Again >> Warping Hollaaaa ;')
	-- tickdelay = os.clock() + 1
    end   

	if party.count ~= 0 and player.equipment.feet == "Hippo. Socks +1" and not data.areas.cities:contains(world.area) and not notified_hippo then
        windower.send_command('input /p >> Hippo feet equiped for pull mobs << ;')
        notified_hippo = true
    -- elseif player.equipment.feet ~= "Hippo. Socks +1" then
    --     notified_hippo = false  -- يعيد السماح إذا قمت بنزعها، يمكن إزالة هذا السطر إذا تريدها مرة فقط حتى تغيير الزون
    end
end

function check_self_healing()
	-- local abil_recasts = windower.ffxi.get_ability_recasts()

    -- if not state.Buff['SJ Restriction'] and player.sub_job == 'DNC' and player.tp > 500 and player.hpp < 40 and abil_recasts[187] < latency then
    --     windower.chat.input('/ja "Curing Waltz II" <me>')
    --     tickdelay = os.clock() + 3.1
    --     return true
    -- end
    -- return false
end

-- local last_check = 0

-- windower.register_event('prerender', function()
--     if os.clock() - last_check < 8 then return end
--     last_check = os.clock()	
-- 	if player.equipment.ring2 == "Warp Ring" then
-- 		Warping()
-- 		tickdelay = os.clock() + 1
-- 	end
-- end)

-- function user_status_change(new_status, old_status)
-- 	if player.equipment.ring2 == "Warp Ring" then
-- 		Warping()
-- 		tickdelay = os.clock() + 1
-- 	end
-- end

-- Delay for user_tick
-- local next_user_tick = 0
-- local user_tick_delay = 0.5 -- نصف ثانية

-- function user_tick()
--     local now = os.clock()
--     if now < next_user_tick then return false end
--     next_user_tick = now + user_tick_delay
--     -- if player.equipment.ring2 == "Warp Ring" then
-- 	if Warping() then return true end
	
-- 	if check_self_healing() then return true end

-- 	if check_steps_subjob() then return true end

-- 	tickdelay = os.clock() + 1.5

-- 	return false
-- end

-- bayld_items = {'Tlalpoloani','Macoquetza','Camatlatia','Icoyoca','Tlamini','Suijingiri Kanemitsu',
-- 'Zoquittihuitz','Quauhpilli Helm','Chocaliztli Mask','Xux Hat','Quauhpilli Gloves','Xux Trousers',
-- 'Chocaliztli Boots','Maochinoli','Xiutleato','Hatxiik','Kuakuakait','Azukinagamitsu','Atetepeyorg',
-- 'Kaquljaan','Ajjub Bow','Baqil Staff','Ixtab','Tamaxchi','Otomi Helm','Otomi Gloves','Kaabnax Hat',
-- 'Kaabnax Trousers','Ejekamal Mask','Ejekamal Boots','Quiahuiz Helm','Quiahuiz Trousers','Uk\'uxkaj Cap'}

--[[ List of all Bayld Items.
bayld_items = {'Tlalpoloani','Macoquetza','Camatlatia','Icoyoca','Tlamini','Suijingiri Kanemitsu','Zoquittihuitz',
'Quauhpilli Helm','Chocaliztli Mask','Xux Hat','Quauhpilli Gloves','Xux Trousers','Chocaliztli Boots','Maochinoli',
'Hatxiik','Kuakuakait','Azukinagamitsu','Atetepeyorg','Kaquljaan','Ajjub Bow','Baqil Staff','Ixtab','Otomi Helm',
'Otomi Gloves','Kaabnax Hat','Kaabnax Trousers','Ejekamal Mask','Ejekamal Boots','Quiahuiz Helm','Quiahuiz Trousers',
'Uk\'uxkaj Cap'}
]]


-------------------------------------------------------------------------------------------------------------------
-- Global event-handling functions.
-------------------------------------------------------------------------------------------------------------------


function user_job_state_change(field, newVal, oldVal)

	-- state.Skillchainerws = M{['description']='Skillchainerws','Upheaval','Fell Cleave','Ukko\'s Fury','Exudation','Realmrazer','Last Stand','Black Halo','Blade: Yu','Blade: Teki','Blade: Chi','Blade: To','Blade: Shun','Tachi: Shoha','Tachi: Jinpu','Tachi: Kagero','Tachi: Goten','Tachi: Koki','Tachi: Fudo','Tachi: Kaiten','Torcleaver','Dimidiation','Savage Blade','Requiescat','Victory Smite','Shijin Spiral','Mordant Rime','Evisceration','Rudra\'s Storm','Aeolian Edge','Cross Reaper','Spiral Hell','Insurgency','Vorpal Scythe','Impulse Drive',}

	if state.Skillchainermode.value then
		-- if player.equipment.main == "Caladbolg" then
		-- 	send_command('gs c set Skillchainerws Torcleaver;gs c Skillchainerws')
		-- elseif player.equipment.main == "Twashtar" then
		-- 	send_command('gs c set Skillchainerws Rudra\'s Storm;gs c Skillchainerws')
		-- elseif player.equipment.main == "Liberator" then
		-- 	send_command('gs c set Skillchainerws Insurgency;gs c Skillchainerws')
		-- elseif player.equipment.main == "Chango" then
		-- 	windower.send_command('gs c set Skillchainerws Upheaval;gs c Skillchainerws')
		-- elseif player.equipment.main == "Heishi Shorinken" then
		-- 	send_command('gs c set Skillchainerws Blade: Shun;gs c Skillchainerws')
		-- elseif player.equipment.main == "Dojikiri Yasutsuna" then
		-- 	send_command('gs c set Skillchainerws Tachi: Shoha;gs c Skillchainerws')
		-- elseif player.equipment.main == "Trishula" then
		-- 	send_command('gs c set Skillchainerws Stardiver;gs c Skillchainerws')
		-- elseif player.equipment.main == "Anguta" then
		-- 	send_command('gs c set Skillchainerws Cross Reaper;gs c Skillchainerws')
		-- elseif player.equipment.main == "Drepanum" then
		-- 	send_command('gs c set Skillchainerws "Spiral Hell";gs c Skillchainerws')
		-- elseif player.equipment.main == "Godhands" then
		-- 	send_command('gs c set Skillchainerws Shijin Spiral;gs c Skillchainerws')
		-- elseif player.equipment.main == "Aeneas" then
		-- 	send_command('gs c set Skillchainerws Rudra\'s Storm;gs c Skillchainerws')
		-- elseif player.equipment.main == "Apocalypse" then
		-- 	send_command('gs c set Skillchainerws Catastrophe;gs c Skillchainerws')
		-- elseif player.equipment.main == "Amanomurakumo" then
		-- 	send_command('gs c set Skillchainerws Tachi: Kaiten;gs c Skillchainerws')
		-- elseif player.equipment.main == "Carnwenhan" then
		-- 	send_command('gs c set Skillchainerws Mordant Rime;gs c Skillchainerws')
		-- elseif player.equipment.main == "Idris" then
		-- 	send_command('gs c set Skillchainerws Exudation;gs c Skillchainerws')
		-- elseif player.equipment.main == "Epeolatry" then
		-- 	send_command('gs c set Skillchainerws Dimidiation;gs c Skillchainerws')
		-- elseif player.equipment.main == "Masamune" then
		-- 	windower.send_command('gs c set Skillchainerws Tachi: Fudo;gs c Skillchainerws')
		-- elseif player.equipment.main == "Shining One" then
		-- 	windower.send_command('wait 1;gs c set Skillchainerws "Impulse Drive";gs c Skillchainerws')
		-- elseif player.equipment.main == "Hachimonji" then
		-- 	windower.send_command('gs c set Skillchainerws "Tachi: Jinpu";gs c Skillchainerws')
		-- elseif player.equipment.main == "Nandaka" then
		-- 	windower.send_command('gs c set Skillchainerws "Ground Strike";gs c Skillchainerws')
		-- elseif player.equipment.main == "Dolichenus" then
		-- 	windower.send_command('gs c set Skillchainerws "Decimation";gs c Skillchainerws')
		-- elseif player.equipment.main == "Naegling" then
		-- 	local ws_name = "Savage Blade"
		-- 	windower.send_command('gs c set Skillchainerws "' .. ws_name .. '";gs c Skillchainerws')
		-- elseif player.equipment.main == "Tauret" then
		-- 	send_command('gs c set Skillchainerws Evisceration;gs c Skillchainerws')
		-- elseif player.equipment.main == "Karambit" then
		-- 	windower.send_command('gs c set Skillchainerws "Asuran Fists";gs c Skillchainerws')
		-- elseif player.equipment.main == "Lycurgos" then
		-- 	windower.send_command('gs c set Skillchainerws" Fell Cleave";gs c Skillchainerws')
		-- elseif player.equipment.main == "Xoanon" then
		-- 	windower.send_command('gs c set Skillchainerws Cataclysm;gs c Skillchainerws')
		-- end
		-- 	-- equip by skill
		-- if res.items[item_name_to_id(player.equipment.main)].skill == 1 then --Hand-to-Hand lub in main hand.
		-- 	send_command('gs c set Skillchainerws Asuran Fists;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 2 then --Dagger in main hand.
		-- 	send_command('gs c set Skillchainerws Evisceration;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 3 then --Sword in main hand.
		-- 	send_command('gs c set Skillchainerws Savage Blade;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 4 then --Great Sword in main hand.
		-- 	send_command('gs c set Skillchainerws Torcleaver;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 5 then --Axe in main hand.
		-- 	send_command('gs c set Skillchainerws Decimation;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 6 then --Great Axe in main hand.
		-- 	windower.send_command('gs c set Skillchainerws Fell Cleave;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 7 then --Scythe  in main hand.
		-- 	send_command('gs c set Skillchainerws Cross Reaper;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 8 then --Polearm in main hand.
		-- 	send_command('gs c set Skillchainerws Impulse Drive;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 9 then --Katana in main hand.
		-- 	send_command('gs c set Skillchainerws Blade: Shun;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 10 then --Great Katana in main hand.
		-- 	send_command('gs c set Skillchainerws Tachi: Jinpu;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 11 then --Club in main hand.
		-- 	windower.send_command('gs c set Skillchainerws Black Halo;gs c Skillchainerws')
		-- elseif res.items[item_name_to_id(player.equipment.main)].skill == 12 then --Staff in main hand.
		-- 	send_command('gs c set Skillchainerws Cataclysm;gs c Skillchainerws')
		-- end
	end
	



	-- if field == 'ShieldMode' then
	-- 	if newVal == 'Normal' then
	-- 		internal_enable_set("Shield")
	-- 	else
	-- 		internal_disable_set(sets.shield[newVal], "Shield")
	-- 	end
	-- end
end



step_timer = 0

function check_steps_subjob()
	local abil_recasts = windower.ffxi.get_ability_recasts()
    
    if state.AutostepssubjobMode.value and not buffactive['SJ Restriction'] then -- state.AutoBuffMode.value ~= 'Off'
        if player.sub_job == 'DNC' and player.tp > 140 and not silent_check_amnesia() and os.clock() > step_timer and abil_recasts[220] < latency and player.status == 'Engaged' then
            windower.add_to_chat('[AutoStep] Using Box Step')
            windower.chat.input('/ja "Box Step" <t>')
            tickdelay = os.clock() + 3.5
            step_timer = os.clock() + 35
            return true
        else
            return false
        end
    else
        return false
    end
end


-- function getAngle(index)
--     local P = windower.ffxi.get_mob_by_target('me') --get player
--     local M = index and windower.ffxi.get_mob_by_id(index) or windower.ffxi.get_mob_by_target('t') --get target
--     local delta = {Y = (P.y - M.y),X = (P.x - M.x)} --subtracts target pos from player pos
--     local angleInDegrees = (math.atan2( delta.Y, delta.X) * 180 / math.pi)*-1 
--     local mult = 10^0
--     return math.floor(angleInDegrees * mult + 0.5) / mult
-- end

function user_pretarget(spell, spellMap, eventArgs)
	--It is from the highest secrets.
    if state.TargetMode.value and spell.type == "WeaponSkill" and spell.targets.Enemy then
		if spell.target.raw == '<t>' and spell.target.type == 'MONSTER' then
			change_target('<stnpc>')
			eventArgs.cancel = true

			windower.chat.input('/ws "'..spell.name..'" <stnpc>')
            tickdelay = os.clock() + 1.1

			return
		end
    end

end
-- Global intercept on precast.
function user_precast(spell, action, spellMap, eventArgs)
	--It is from the highest secrets. 
    if spell.english == 'Warcry' then
        if buffactive['Warcry'] then
            cancel_spell()
            add_to_chat(207, spell.name..' Canceled: Warcry its up [active]')
        end
    end
	--[[ 
	attack = player.attack
	if attack > attack2 then
		windower.send_command('gs c set WeaponskillMode PDL')

		--WeaponskillMode:set('PDL') 
    else
		windower.send_command('gs c set WeaponskillMode Match')
    end
]]

-- if spell.type == 'Waltz' then
--     refine_waltz(spell, action, spellMap, eventArgs)
-- end
    cancel_conflicting_buffs(spell, action, spellMap, eventArgs)
    refine_waltz(spell, action, spellMap, eventArgs)
end
-- Global intercept on midcast.
function user_midcast(spell, action, spellMap, eventArgs)
	-- Default base equipment layer of fast recast.
	if spell.action_type == 'Magic' and sets.midcast and sets.midcast.FastRecast then
		equip(sets.midcast.FastRecast)
	end

end

function user_post_precast(spell)
	-- if spell.name == "Holy Water" then
	-- 	equip(sets.precast.Item['Holy Water'])
	-- 	if buffactive['doom'] then
	-- 		equip(sets.precast.Item['Holy Water'],sets.Reraise)
	-- 	end
    -- end
    --[[if spell.type == 'WeaponSkill' and state.WeaponskillMode.value == 'SubtleBlow' then
	equip(sets.precast.WS.SubtleBlow)
    end
    ]]

    -- if state.WeaponskillMode.value == 'SubtleBlow' and spell.type == 'WeaponSkill' then
	--     equip(sets.precast.WS.SubtleBlow)
    -- end
	--It is from the highest secrets.
	attack = player.attack -- auto equip to PDL ws set - code add by kastra,modi.(Aragan@Asura)
    if spell.type == 'WeaponSkill' then
        if state.WeaponskillMode.value == 'SubtleBlow' then --and (attack > attack2 or attack < attack2)
            equip(sets.precast.WS.SubtleBlow)
		elseif state.WeaponskillMode.value == 'Proc'
			and sets.precast.WS[spell.name]
            and sets.precast.WS[spell.name].Proc
        then
            equip(sets.precast.WS[spell.name].Proc)
		elseif state.AutoPDLwstmode.value and player.main_job == 'DNC' and buffactive["Climactic Flourish"] 
		and sets.precast.WS[spell.name]
		and sets.precast.WS[spell.name].PDL
		and sets.precast.WS[spell.name].PDL.Clim then
			if not data.weaponskills.elemental:contains(spell.name) and attack > attack2 then
				equip(sets.precast.WS[spell.name].PDL.Clim)
			elseif sets.precast.WS and sets.precast.WS[spell.name]
				and sets.precast.WS[spell.name].PDL and attack > attack2 then
				equip(sets.precast.WS[spell.name].PDL)
			end
		end
			 --windower.add_to_chat(207, 'Auto WS Mode: PDL')
        --[[else
            equip(sets.precast.WS[spell.name])
			]]
    end
end

function user_aftercast(spell, spellMap, eventArgs)
	-- if pet.isvalid then
	-- 	if (spell.action_type == 'Magic' and player.hpp < Breath_HPP) or spell.english == 'Steady Wing' or spell.english == 'Restoring Breath' then
	-- 		petWillAct = os.clock()
	-- 		equip(sets.HealingBreath)
	-- 		eventArgs.handled = true
	-- 	elseif spell.english == 'Smiting Breath' and sets.SmitingBreath then
	-- 		petWillAct = os.clock()
	-- 		equip(sets.SmitingBreath)
	-- 		eventArgs.handled = true
	-- 	end
	-- end
	-- < this mean low  
	--It is from the highest secrets.
	if spell.type == 'WeaponSkill' then
		if (spell.english == "Shell Crusher" or spell.english == "Armor Break") then
			if player.tp >= 2750 then  
				send_command('timers c "Defense Down '..spell.name..' ['..spell.target.name..'] " 540 down')
				send_command('@input /p  >>> "Defense Down on '..spell.name..' ['..spell.target.name..']. 9 min. ')
			    return
			elseif player.tp < 2001 then  
				send_command('timers c "Defense Down '..spell.name..' ['..spell.target.name..']" 360 down')
				send_command('@input /p  >>> "'..spell.name..' Defense Down on  ' ..tostring(spell.target.name).. '. 6 min. ')
				return
			elseif player.tp < 1001 then  
				send_command('timers c "Defense Down '..spell.name..' ['..spell.target.name..']" 180 down')
				send_command('@input /p  >>> "Defense Down on '..spell.name..' ['..spell.target.name..']. 3 min. ')
			end
		end
	end


	-- if spell.skill == 'Elemental Magic' then
	-- 	windower.send_command('input /p  ')
	-- 	-- windower.chat.input('/p  ')

	-- end
	if state.AutoLoggerMode.value and not spell.interrupted then
		if spell.action_type == 'Magic' or spell.type == 'WeaponSkill' or spell.type == 'JobAbility' then
			windower.chat.input('/p used: '..spell.name..' on -> '..(spell.target.name or '<t>'))
		end
    end
	--Warp Ring
	if spell.english == "Warp Ring" and not spell.interrupted then
		send_command('timers c "Warp Ring Cooldown" 300 down')
		-- add_to_chat(207, ' Warp Ring: 5 minutes cooldown timer started!')
	end
	--[[
	send_command('@timers c "Gambit ['..spell.target.name..']" '..gambit_duration..' down spells/00136.png')
	send_command('wait '..gambit_duration..';input /p <t> [Gambit just wore off!];')
	send_command('@input /p  >>> Gambit on ['..spell.target.name..']. Second left: '..gambit_duration..'')
	]]
	--[[if spell.english == "Meditate" then
				send_command('wait 169;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
	 ]]

end

-- Handle notifications of general user state change.
function user_state_change(stateField, newValue, oldValue)
    if state.WeaponLock.value == true then
        disable('main','sub')
    else
        enable('main','sub')
    end
	-- if state.AutogearbuffMode.value then
	-- 	if buffactive['Endark'] then
	-- 		state.HybridMode:set('DreadSP') 	
	-- 	elseif buff == "Endark" and not gain then
	-- 			add_to_chat(207, " off Amnesia")
	-- 		state.HybridMode:set('Normal') 
	-- 	end
	-- 	-- send_command('@wait 0.5;gs c update')
	-- end	
	-- if (player.main_job == 'BST' or player.main_job == 'DRK'
	--    or player.main_job == 'PLD' or player.main_job == 'SAM' or player.main_job == 'WAR') then
    --    if player.hpp < 5 then
	--     equip(sets.Reraise)
	-- 	--send_command('gs c update')
	-- 	disable('head','body')
	--     end
    -- else
    --     enable('head','body')
    -- end
	if state.CraftingMode.value ~= 'None' then
		equip(sets.crafting[state.CraftingMode.value])

    elseif state.CraftQuality.value ~= 'Normal' then
		equip(sets.crafting[state.CraftQuality.value])
		
	end
    --It is from the highest secrets.
	if state.NeverDieMode.value or state.AutoCureMode.value then 

		local abil_recasts = windower.ffxi.get_ability_recasts()
		local spell_recasts = windower.ffxi.get_spell_recasts()
		-- local spellCost = actual_cost(spell)

		--[[if player.tp > 350 and player.max_hp - player.hp > 600 and abil_recasts[186] < latency then
			windower.send_command('input /ja Curing Waltz II <me>')
			]]



	    -- if not state.Buff['SJ Restriction'] and player.sub_job == 'DNC' and  player.tp > 500 and player.hpp < 25 and abil_recasts[187] < latency then			
		-- 	windower.chat.input('/ja Curing Waltz III <me>')
		-- 	tickdelay = os.clock() + 1.1
		-- end
		local safe_latency = latency or 1
		if player.sub_job == 'WAR' and not buffactive['SJ Restriction'] and not buffactive.Defender and abil_recasts[3] ~= nil and abil_recasts[3] < safe_latency and (player.in_combat or being_attacked) and player.hpp < 25 then
			windower.chat.input('/ja "Defender" <me>')
			tickdelay = os.clock() + 1.1
		elseif not state.Buff['SJ Restriction'] and (player.sub_job == 'SCH' or player.sub_job == 'RDM' or player.sub_job == 'pld' or player.sub_job == 'WHM')
		    and player.hpp < 25 and being_attacked and spell_recasts[4] < spell_latency then 
				windower.send_command('gs c smartcure')
			-- windower.chat.input('/ma "Cure IV" <me>')
			tickdelay = os.clock() + 1.1
		elseif not state.Buff['SJ Restriction'] and player.sub_job == 'NIN' and (player.in_combat or being_attacked) and player.hpp < 10 then
			state.AutoShadowMode:set('true')
			tickdelay = os.clock() + 1.1
		elseif player.inventory['Vile Elixir'] and being_attacked and player.hpp < 6 then
            send_command('input /item "Vile Elixir" <me>')
            tickdelay = os.clock() + 1.1
            return true
		elseif player.inventory['Vile Elixir +1'] and being_attacked and player.hpp < 5 then
            send_command('input /item "Vile Elixir +1" <me>')
            tickdelay = os.clock() + 1.1
            return true
		end
	end

end

--[[
	gearinfo(commandArgs, eventArgs)
	
	This function processes the 'gearinfo' command and updates global variables 
	related to Dual Wield (DW) and Haste based on the provided arguments. It also 
	triggers a job update if no action is currently in progress.

	Parameters:
	- commandArgs: A table containing the command and its arguments.
		- commandArgs[1]: The command name, expected to be 'gearinfo'.
		- commandArgs[2]: A number or string indicating the desired DW state.
			- If a number, it sets the required DW level (DW_needed).
			- If the string 'false', it disables DW (sets DW_needed to 0 and DW to false).
		- commandArgs[3]: A number indicating the desired Haste level.
	- eventArgs: Additional event arguments (not used in this function).

	Behavior:
	- Updates the global variable `DW_needed` if a new DW level is provided.
	- Updates the global variable `Haste` if a new Haste level is provided.
	- Sets the global variable `DW` to true or false based on the DW state.
	- Calls `job_update()` if no mid-action is currently in progress.

	Notes:
	- The function assumes the existence of global variables `DW_needed`, `DW`, and `Haste`.
	- The function also assumes the existence of `midaction()` and `job_update()` functions.
]]

function gearinfo(commandArgs, eventArgs)
    if commandArgs[1] == 'gearinfo' then
        if type(tonumber(commandArgs[2])) == 'number' then
            if tonumber(commandArgs[2]) ~= DW_needed then
            DW_needed = tonumber(commandArgs[2])
            DW = true
            end
        elseif type(commandArgs[2]) == 'string' then
            if commandArgs[2] == 'false' then
                DW_needed = 0
                DW = false
            end
        end
        if type(tonumber(commandArgs[3])) == 'number' then
            if tonumber(commandArgs[3]) ~= Haste then
                Haste = tonumber(commandArgs[3])
            end
        end
        if not midaction() then
            job_update()
        end
    end
end


	

-- Modify the default idle set after it was constructed.
function user_customize_idle_set(idleSet)

	local abil_recasts = windower.ffxi.get_ability_recasts()
	local spell_recasts = windower.ffxi.get_spell_recasts()
    local last_healing_waltz_t = last_healing_waltz_t or 0

	if state.NakedMode and state.NakedMode.value then
        return  
    end
	--It is from the highest secrets.
	-- This code checks the current state of the "RP" variable and performs actions accordingly.
	-- If the "RP" state is set to "on", it equips the "RP" gear set and disables changes to the "neck" slot.
	-- Otherwise, it enables changes to the "neck" slot.
    if state.RP.current == 'on' then
        equip(sets.RP)
        disable('neck')
    else
        enable('neck')
    end
	if state.SalvageMode.value and (world.area:contains('Zhayolm Remnants') or world.area:contains('Bhaflau Remnants') or world.area:contains('Arrapago Remnants') or world.area:contains('Silver Sea Remnants')) then
		if player.main_job == 'THF' then
			-- state.Weapons:set('Twashtar')
			-- state.TreasureMode:set('Fulltime')
			-- state.IdleMode:set('Refresh')
			-- state.IdleMode:set('DT')
			-- state.AutoWSMode:set(true)
			-- send_command('gs c set weapons Naegling;gs c set AutoWSMode True') --Turns addon on hide show off some no need in city on screen.
			-- send_command('gs c set Stylenotwingsemode off;gs c update') 
			-- send_command('gs c update') 
			style_lock = true
		end
		-- if not player.equipment.main or player.equipment.main == 'empty' then
		-- 	equip({ main = "Twashtar" })
		-- 	add_to_chat(207, '[AutoWeapon] Main was empty -> equipped Twashtar.')
		-- 	tickdelay = os.clock() + 1.5
		-- end
	end
	-- if data.areas.cities:contains(world.area) and state.DefenseMode.value ~= 'None' then
    --     if player.movement then
    --         idleSet = set_combine(idleSet, sets.Kiting)
    --     end
    -- end
	if world.area:contains('Adoulin') then
		idleSet = set_combine(idleSet, {body="Councilor's Garb"})
	end
	if state.CraftingMode.value ~= 'None' then
		idleSet = set_combine(idleSet, sets.crafting[state.CraftingMode.value])

    elseif state.CraftQuality.value ~= 'Normal' then
		idleSet = set_combine(idleSet,sets.crafting[state.CraftQuality.value])
	end
	-- sets.idle.rollers = set_combine(sets.idle, {lring="Roller's Ring",})
	-- idleSet.rollers = set_combine(sets.idle[state.IdleMode.value], {lring="Roller's Ring"})
	idleSet.rollers = set_combine(sets.idle.Regain, {lring="Roller's Ring"}) --work

	-- -- Ensure Roller's Ring is equipped above all other idle sets
	-- if buffactive['roll'] < 6 then
	-- 	idleSet = set_combine(idleSet, sets.idle.rollers)
	-- end

	-- if not data.areas.cities:contains(world.area) and not state.Buff['SJ Restriction'] and state.NeverDieMode.value or state.AutoCureMode.value and player.sub_job == 'DNC' and  player.tp > 500 and player.hpp < 30 then
	-- 	windower.chat.input('/ja Curing Waltz II <me>')
	-- 	tickdelay = os.clock() + 1.1
	-- end

	if not state.Buff['SJ Restriction'] and player.sub_job == 'DNC' and player.tp > 500 and player.hpp < 40 and abil_recasts[187] < latency then			
		windower.chat.input('/ja "Curing Waltz II" <me>')
		tickdelay = os.clock() + 3.1
	end

    return idleSet
end

function user_customize_defense_set(defenseSet)
	if world.area:contains('Adoulin') then
		defenseSet = set_combine(defenseSet, {body="Councilor's Garb"})
	end
	if state.CraftingMode.value ~= 'None' then
		defenseSet = set_combine(defenseSet, sets.crafting[state.CraftingMode.value])

    elseif state.CraftQuality.value ~= 'Normal' then
		defenseSet = set_combine(defenseSet,sets.crafting[state.CraftQuality.value])
	end
	return defenseSet
end
function user_customize_kiting_set(baseSet)

    if data.areas.cities:contains(world.area) and moving and state.DefenseMode.value ~= 'None' then
		baseSet = set_combine(baseSet, sets.Kiting)
	end
	if world.area:contains('Adoulin') and moving and state.DefenseMode.value ~= 'None' then
		baseSet = set_combine(baseSet, sets.Kiting, {body="Councilor's Garb"})
	end
	if state.HippoMode.value then 
		baseSet = set_combine(baseSet, {feet="Hippo. Socks +1"})
	end
	return baseSet
end

-- Modify the default melee set after it was constructed.
function user_customize_melee_set(meleeSet)

	local abil_recasts = windower.ffxi.get_ability_recasts()
	local spell_recasts = windower.ffxi.get_spell_recasts()
    --It is from the highest secrets.
	-- This code snippet checks the current state of the "RP" variable.
	-- If the "RP" state is set to "on", it equips the "RP" gear set and disables the "neck" equipment slot.
	-- Otherwise, it enables the "neck" equipment slot, allowing it to be modified.
	if state.RP.current == 'on' then
        equip(sets.RP)
        disable('neck')
    else
        enable('neck')
    end
	if state.SalvageMode.value and (world.area:contains('Zhayolm Remnants') or world.area:contains('Bhaflau Remnants') or world.area:contains('Arrapago Remnants') or world.area:contains('Silver Sea Remnants')) then
		if player.main_job == 'THF' then -- or player.main_job == 'DNC'
			-- Windower.send_command('lua r autows;wait 1;aws on')
			state.Weapons:set('Swords')
			state.TreasureMode:set('Fulltime')
			state.IdleMode:set('Regain')
			state.AutoWSMode:set(true)
			-- send_command('gs c set weapons Naegling;gs c set AutoWSMode True') --Turns addon on hide show off some no need in city on screen.
			-- send_command('gs c set Stylenotwingsemode off;gs c update') 
			-- send_command('gs c update') 
			style_lock = true
		elseif player.main_job == 'BLU' then -- or player.main_job == 'DNC'
            Windower.send_command('aset spellset salvage')
			state.Weapons:set('Nuking')
			state.TreasureMode:set('Fulltime')
			state.IdleMode:set('Refresh')
			-- state.AutoWSMode:set(true)
			-- send_command('gs c set weapons Naegling;gs c set AutoWSMode True') --Turns addon on hide show off some no need in city on screen.
			-- send_command('gs c set Stylenotwingsemode off;gs c update') 
			-- send_command('gs c update') 
			style_lock = true
		else
			state.IdleMode:reset()
			state.TreasureMode:set('Fulltime')

 			style_lock = true

		end
		if player.main_job == 'THF' and (not player.equipment.main or player.equipment.main == 'empty') then
			equip({ main = "Naegling" })
			add_to_chat(207, '[AutoWeapon] Main was empty -> equipped Twashtar.')
		end
	end

    -- if state.TreasureMode.value == 'Fulltime' then
    --     meleeSet = set_combine(meleeSet, sets.TreasureHunter)
    -- end
	-- if buffactive["Slow"] then
	-- 	meleeSet = set_combine(meleeSet,sets.buff.Slow)
	-- end
	-- If HP drops under 45% then equip Re-raise head/body
	-- if (player.main_job == 'BST' or player.main_job == 'DRG' or player.main_job == 'DRK'
	-- 	or player.main_job == 'PLD' or player.main_job == 'SAM' or player.main_job == 'WAR') then
    --     if player.hpp < 5 then --code add from Aragan Asura
    --     meleeSet = set_combine(meleeSet, sets.Reraise)
	-- 	disable('head','body')
    --     else
    --     enable('head','body')
	--     end
	-- end

	-- if not data.areas.cities:contains(world.area) and not state.Buff['SJ Restriction'] and state.NeverDieMode.value or state.AutoCureMode.value and player.sub_job == 'DNC' and  player.tp > 500 and player.hpp < 10 then
	-- 	windower.chat.input('/ja Curing Waltz II <me>')
	-- 	tickdelay = os.clock() + 1.1
	-- end

	if not data.areas.cities:contains(world.area) and not state.Buff['SJ Restriction'] and player.sub_job == 'DNC' and player.tp > 500 and player.hpp < 40 and abil_recasts[187] < latency then			
		windower.chat.input('/ja "Curing Waltz II" <me>')
		tickdelay = os.clock() + 3.1
	end
	tickdelay = os.clock() + 0.5
    return meleeSet
end




-- Global intercept on buff change.
function user_buff_change(buff, gain, eventArgs)



    -- add_to_chat(207, 'job_buff_change: '..buff..'  Gain: '..tostring(gain))

	local abil_recasts = windower.ffxi.get_ability_recasts()
	local spell_recasts = windower.ffxi.get_spell_recasts()
	local last_healing_waltz_t = last_healing_waltz_t or 0
	-- if state.AutogearbuffMode.value then
	-- 	-- if buffactive['Endark'] then
	-- 	if buff == "Endark" then
	-- 		state.HybridMode:set('DreadSP') 	
	-- 	else
	-- 		state.HybridMode:set('Normal') 
	-- 	end
	-- 	-- send_command('@wait 0.5;gs c update')
	-- end
    if state.Autodebugemode.value == 'On' then
        windower.add_to_chat(207, '[Debug] Buff change detected: ' .. buff .. ', Gain: ' .. tostring(gain))
    end
    --It is from the highest secrets.
	if state.NeverDieMode.value or state.AutoCureMode.value then 
		if player.sub_job == 'DNC' and not state.Buff['SJ Restriction'] and player.tp > 200 and abil_recasts[215] < latency and (
			buffactive['poison'] or buffactive['slow'] or buffactive['Rasp'] or
			buffactive['Dia'] or buffactive['Defense Down'] or buffactive['Magic Def. Down'] or buffactive['Max HP Down'] or
			buffactive['Evasion Down'] or buffactive['Magic Evasion Down'] or buffactive['Bio'] or buffactive['Bind'] or
			buffactive['weight'] or buffactive['Attack Down'] or buffactive['Accuracy Down'] or buffactive['VIT Down'] or
			buffactive['INT Down'] or buffactive['MND Down'] or buffactive['STR Down'] or buffactive['AGI Down']
		) then		
		    local now = os.clock()
            if now - last_healing_waltz_t > 1 then
                windower.chat.input('/ja Healing Waltz <me>')
                tickdelay = now + 1.1
                last_healing_waltz_t = now
                return
            end
		end
	end

	-- -- Create a timer when we gain weakness.  Remove it when weakness is gone.
	-- if buff:lower() == 'weakness' then
	-- 		send_command('timers create "Weakness" 300 up abilities/00255.png')
	-- else
	-- 		send_command('timers delete "Weakness"')
		
	-- end

	-- if state.AutogearbuffMode.value then
	-- 	if buffactive['Sentinel\'s Scherzo'] then
	-- 		state.HybridMode:set('Normal') 
	-- 		send_command('@wait 0.5;gs c update')

	-- 	else
	-- 		state.HybridMode:set('DT') 
	-- 		send_command('@wait 0.5;gs c update')

	-- 	end
	-- end
	
	-- if state.AutogearbuffMode.value then
	-- 	if buffactive['amnesia'] then
	-- 		state.OffenseMode:set('CRIT') 
	-- 		send_command('@wait 0.5;gs c update')

	-- 	else
	-- 		state.OffenseMode:reset()  
	-- 		send_command('@wait 0.5;gs c update')

	-- 	end
	-- end
	
	-- if buff == "Endark" and not gain then
	-- 	add_to_chat(207, " off Amnesia")
	--     state.HybridMode:set('Normal') 
	-- end
    --It is from the highest secrets.
	if state.NeverDieMode.value or state.AutoCureMode.value then 
		--Sortie
		if buffactive['poison'] and world.area:contains('Outer Ra\'Kaznar [U2]') and (player.sub_job == 'SCH' or player.sub_job == 'WHM') and spell_recasts[14] < spell_latency then 
			windower.chat.input('/ma "Poisona" <me>')
			tickdelay = os.clock() + 1.1
		end
	end


	-- if state.AutogearbuffMode.value and buff == "Slow" then
	-- 	if gain then
	-- 		equip(sets.buff.Slow)
	-- 		add_to_chat(207, "[GearSwap] Slow detected: Equipping haste gear!")
	-- 	end
	-- end

--It is from the highest secrets.
-- update code version 2.1.1 by Author:Aragan
--------------- for Amnesia debuff
	previous_hybrid_mode = previous_hybrid_mode or nil
    --It is from the highest secrets.
    if state.AutogearbuffMode.value and buff == "Amnesia" then
		if gain then
            if not previous_hybrid_mode then
				previous_hybrid_mode = state.OffenseMode.value
			    -- add_to_chat(207, '[GS] Amnesia AutogearbuffMode ON → OffenseMode set CRITICAL '..previous_hybrid_mode..'  ')
		    end
			state.OffenseMode:set('CRIT')-- SWITCH TO CRITICAL SET
			    add_to_chat(207, '[GS] Amnesia AutogearbuffMode ON  set  '..state.OffenseMode.value..'  ')
			else
			if previous_hybrid_mode then
                state.OffenseMode:set(previous_hybrid_mode) -- back to previous mode value
                add_to_chat(122, "OffenseMode restored  "..previous_hybrid_mode)
                previous_hybrid_mode = nil -- reset saved
            else
				state.OffenseMode:reset() -- if all previous of this buff false , then reset
                add_to_chat(122, "OffenseMode reset (no saved value)")
            end
        end
	end

--It is from the highest secrets.
-- update code version 2.1.1 by Author:Aragan
------------ for scherzo buff
	previous_hybrid_mode = previous_hybrid_mode or nil

    --It is from the highest secrets. 
	if state.AutogearbuffMode.value and buff == "Scherzo" then
		if gain then
			if not previous_hybrid_mode then
				previous_hybrid_mode = state.HybridMode.value
				add_to_chat(207, '[GS] Scherzo ON  save '..previous_hybrid_mode..'  ')
			end
			state.HybridMode:set('Normal') -- SWITCH TO Normal SET
			add_to_chat(207, '[GS] Scherzo ON  save '..state.HybridMode.value..'  ')
		else
			if previous_hybrid_mode then
				state.HybridMode:set(previous_hybrid_mode) -- back to previous hybrid mode value
				add_to_chat(122, "HybridMode restored  "..previous_hybrid_mode)
				previous_hybrid_mode = nil  -- reset saved
			else
				state.HybridMode:set('DT') -- if all previous of this buff false , then reset set HybridMode to DT for safety
				add_to_chat(122, "HybridMode reset (no saved value)")
			end
		end
	end
	tickdelay = os.clock() + 0.5

end


--[[		elseif buff == "Warcry" then
			if gain then  
				send_command('input /item "remedy" <me>')
			end
		elseif buff == "Berserk" then
			if gain then  
				send_command('input /item "remedy" <me>')
			end
		elseif buff == "Defender" then
			if gain then  
				send_command('input /item "remedy" <me>')
			end
		elseif buff == "Aggressor" then
			if gain then  
				send_command('input /item "remedy" <me>')
			end
		end]]


	--[[if buff == "Defense Down" then
        if gain then  			
            send_command('input /item "Panacea" <me>')
        end
    elseif buff == "Magic Def. Down" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Max HP Down" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Evasion Down" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Magic Evasion Downn" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Dia" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end  
    elseif buff == "Bio" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Bind" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "slow" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "weight" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Attack Down" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "Accuracy Down" then
        if gain then  			
            send_command('@input /item "panacea" <me>')
        end
    end

    if buff == "VIT Down" then
        if gain then
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "INT Down" then
        if gain then
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "MND Down" then
        if gain then
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "STR Down" then
        if gain then
            send_command('@input /item "panacea" <me>')
        end
    elseif buff == "AGI Down" then
        if gain then
            send_command('@input /item "panacea" <me>')
        end
    end
    if buff == "curse" then
        if gain then  
            send_command('input /item "Holy Water" <me>')
			equip(sets.precast.Item['Holy Water'])
        end
    end
	if buff == "poison" then
        if gain then  
        send_command('input /item "remedy" <me>')
        end
    end]]


	
function user_tick()
	-- if check_arts() then return true end
	if user_state_change() then return true end
	-- if user_buff_change() then return true end
	if check_steps_subjob() then return true end
	if Warping() then return true end
	-- if check_self_healing() then return true end
	
	return false
end


function user_zone_change(new_id,old_id)
	current_zone = windower.ffxi.get_info().zone
	state.Stance:reset()
	notified_hippo = false
	if player.main_job == 'DRK' and data.areas.cities:contains(world.area)  then
	    send_command('gs c set DefenseMode Physical;gs c set PhysicalDefenseMode SEboost') --Turns addon on hide show off some no need in city on screen.
	end

	if data.areas.cities:contains(world.area) and not world.area:contains('Nashmau') then
		send_command('lua l invspace;lua l invtracker;lua l Clock;tr autodrop off;gs c set AutoCleanupMode false;lua u Skillchainer;asc hide;gs c set DefenseMode Physical;gs c set PhysicalDefenseMode hp') --Turns addon on hide show off some no need in city on screen.
	elseif player.main_job == 'DRK' and data.areas.cities:contains(world.area)  then
		send_command('gs c set DefenseMode Physical;gs c set PhysicalDefenseMode SEboost') --Turns addon on hide show off some no need in city on screen.
	else
		send_command('lua u invspace;lua u invtracker;stats hide;lua U Clock;tr autodrop on;gs c set AutoCleanupMode true;gs c reset DefenseMode;gs c set IdleMode hp') --Turns addon off on show hide. stats=craftstats addon

	end
	if data.areas.cities:contains(world.area) and state.CraftingMode.value ~= 'None' then
		equip(sets.crafting[state.CraftingMode.value])
		send_command('wait 2;gs c reset DefenseMode;gs c reset IdleMode;') --Turns addon off on show hide. stats=craftstats addon
	elseif data.areas.cities:contains(world.area) and state.CraftQuality.value ~= 'Normal' then
		equip(sets.crafting[state.CraftQuality.value])
		send_command('wait 2;gs c reset DefenseMode;gs c reset IdleMode;') --Turns addon off on show hide. stats=craftstats addon
	end

	if (data.areas.assault:contains(world.area) or data.areas.old_Dynamis:contains(world.area)) or world.area:contains('Dynamis - Valkurm') or world.area:contains('Dynamis - Qufim') or world.area:contains('Nashmau') or world.area:contains('Hazhalm Testing Grounds') or world.area:contains('Caedarva Mire') or world.area:contains('Alzadaal Undersea Ruins') then
		send_command('gs c reset DefenseMode;gs c reset IdleMode;gs c set Stylenotwingsemode on;gs c update') 
		send_command('gs c update') 
        style_lock = true
	else
		send_command('gs c set Stylenotwingsemode off;gs c update') 
		send_command('gs c update') 
        style_lock = true
	end
	if data.areas.laggy:contains(world.area)  then
		send_command('gs c set AutoDefenseMode true;gs c set AutoWSRestore true') --Turns mode on.
	else
		--send_command('gs c set AutoWSRestore false;') --Turns  off. -- 
	end

	if world.area:contains('Nyzul Isle') then
		send_command('lua l NyzulHelper;NyzulHelper show;lua l NyzulBuddy;NyzulBuddy start;lua l iSpy;iSpy;lua l widescantool;gs c set AutoWSRestore true;gs c reset DefenseMode;gs c reset IdleMode;') --Turns addon on.
	else
		send_command('NyzulHelper hide;NyzulBuddy stop;lua u NyzulBuddy;lua u widescantool') --Turns addon off. -- iSpy
	end
	-- if not world.area:contains('Abyssea - Empyreal Paradox') and world.area:contains('Abyssea') then
	-- 	send_command('input /lockstyleset 1;ept show;gs c set SkipProcWeapons false;get *"Forbidden Key" all;') --Turns addon on.

	-- else
	-- 	send_command('ept hide;') --Turns addon off.
	-- end

	--Sortie -- ody

	if (world.area:contains('Outer Ra\'Kaznar [U2]') or world.area:contains('Odyssey') or world.area:contains('Walk of Echoes [P2]')) then 		--Sortie -- ody c Walk of Echoes [P2]
	    send_command('gs c reset DefenseMode;gs c reset IdleMode;gs c update') 
		send_command('AutoItem on') --Turns addon on.
		send_command('gs c set AutoStunMode on') --Turns addon on.

	--Sortie
	elseif world.area:contains('Outer Ra\'Kaznar [U2]') then
		    if player.main_job == 'WHM' then
		        add_to_chat(207,' Melee strat: whm Boost-STR  Auspice  Aurorastorm  Regen IV AOE. A E BOSS DO Barpoison Barwatera C G BOSS DO Baramnesra Barparalyzra F BOSS Wind Hands: Use Asylum it start fight then cor wc and whm repeat')
		    -- elseif
		    end
	end
	tickdelay = os.clock() + 0.5

end


--------------------------------------------------------------------------------
--  Auto Style Lock in Assault / Nyzul / Salvage / Hazhalm
--------------------------------------------------------------------------------

-- Add the Sets library if not already included
if not S then
	require('sets')
end

-- Special zones to prevent weapon appearance changes
local special_zones = S{
	48,  -- Alzadaal Undersea Ruins      (Assault)
	51,  -- Nashmau                      (city)
	52,  -- Caedarva Mire                (Assault)
	72,  -- Hazhalm Testing Grounds      (Assault Testing)
	79,  -- Nyzul Isle                   (Nyzul Isle)
	41,  -- Arrapago Remnants            (Salvage)
	58,  -- Bhaflau Remnants             (Salvage)
	72,  -- Zhayolm Remnants             (Salvage)
	73,  -- Silver Sea Remnants          (Salvage)
	50,  -- Aht Urhgan Whitegate         (city)
}
--------------------------------------------------------------------------------
--  Auto Style Lock for special zones (Assault / Nyzul / Salvage / Hazhalm)
--  Relies on your current state: state.Stylenotwingsemode (same name as in your files)
--------------------------------------------------------------------------------

if not S then require('sets') end
local res = require('resources')

-- List of official zone names as they appear in res.zones[zone_id].english
-- (Exact comparison instead of contains to avoid writing differences)
local stylelock_zones = S{
	'Alzadaal Undersea Ruins',   -- Assault
	'Nashmau',                   -- Transit point for Assault
	'Caedarva Mire',             -- Assault
	'Hazhalm Testing Grounds',   -- Testing Grounds
	'Nyzul Isle',                -- Nyzul
	'Arrapago Remnants',         -- Salvage
	'Bhaflau Remnants',          -- Salvage
	'Silver Sea Remnants',       -- Salvage
	'Zhayolm Remnants',          -- Salvage
	'Aht Urhgan Whitegate'
}

-- Function to check the zone name and enable/disable Stylenotwingsemode as needed
local function update_style_lock_by_zone()

	if not state.Autostylemode.value then return end

	local info = windower.ffxi.get_info()
	if not info or not info.zone then return end

	local z = res.zones[info.zone]
	if not z or not z.english then return end
	local zname = z.english

	-- Enable/disable Stylenotwingsemode based on the list
	if stylelock_zones:contains(zname) then
		-- Enable style lock for special zones
		windower.send_command('gs c set Stylenotwingsemode on')
		windower.send_command('gs c update')
		style_lock = true
	else
		-- Disable style lock outside special zones
		windower.send_command('gs c set Stylenotwingsemode off')
		windower.send_command('gs c update')
		style_lock = true
	end
end

-- Trigger on login (add a delay to ensure the environment is ready)
windower.register_event('login', function()
	coroutine.schedule(update_style_lock_by_zone, 5) -- 5 seconds for safety
end)

-- Trigger on zone change (add a small delay as well)
windower.register_event('zone change', function(new_id, old_id)
	coroutine.schedule(update_style_lock_by_zone, 3)
end)

-- Trigger initially when the file is loaded (if already inside a zone)
coroutine.schedule(update_style_lock_by_zone, 3)




--[[
	Function: user_sub_job_change
	Description: This function is triggered when the player's sub-job changes. It schedules the application of a specific lockstyle 
				 after a delay of 7 seconds. The function is designed to ensure that the player's appearance is updated automatically 
				 when switching sub-jobs.
	
	Parameters:
		newSubjob (string): The name of the new sub-job being switched to.
		oldSubjob (string): The name of the previous sub-job being switched from.
	
	Notes:
		- The `user_job_lockstyle` function is scheduled with a delay of 7 seconds using the `:schedule` method.
		- The commented-out lines suggest alternative approaches or additional functionality that may be implemented in the future.
]]

function user_sub_job_change(newSubjob, oldSubjob)	-- sub_job_change(new,old) -- style on auto with change sub job
	-- user_job_lockstyle()
	-- tickdelay = os.clock() + 6.5
	user_job_lockstyle:schedule(7)
end



-- windower.register_event('zone change', function()
-- 	if data.areas.assault or world.area:contains('Nashmau') or world.area:contains('Hazhalm Testing Grounds') or world.area:contains('Caedarva Mire') or world.area:contains('Alzadaal Undersea Ruins') then
-- 	    send_command('gs c reset DefenseMode;gs c reset IdleMode;gs c set Stylenotwingsemode on;gs c update') 
-- 		send_command('gs c update') 
--         style_lock = true
-- 	else
-- 		send_command('gs c set Stylenotwingsemode off;gs c update') 
-- 		send_command('gs c update') 
--         style_lock = true
-- 	end
-- end)

-- windower.register_event('job change', function()
-- 	if data.areas.assault or world.area:contains('Nashmau') or world.area:contains('Hazhalm Testing Grounds') or world.area:contains('Caedarva Mire') or world.area:contains('Alzadaal Undersea Ruins') then
-- 	    send_command('gs c reset DefenseMode;gs c reset IdleMode;gs c set Stylenotwingsemode on;gs c update') 
-- 		send_command('gs c update') 
--         style_lock = true
-- 	else
-- 		send_command('gs c set Stylenotwingsemode off;gs c update') 
-- 		send_command('gs c update') 
--         style_lock = true
-- 	end
-- end)

-- function user_lockstyle()
--     if world.area:contains('Abyssea') then
--         windower.chat.input:schedule(5,'/lockstyleset 1')
--     end
-- end

-- If HP drops under 45% then equip Re-raise head/body
-- windower.register_event('hpp change', -- code add from Aragan Asura
-- function(new_hpp,old_hpp)
--     if player.main_job == 'BST' or player.main_job == 'DRG' or player.main_job == 'DRK'
--             or player.main_job == 'PLD' or player.main_job == 'SAM' or player.main_job == 'WAR' then
--         if new_hpp < 5 then
-- 			equip(sets.Reraise)
--         end
--     end
-- end)

--[[
	Function: user_target_change
	Description:
		This function is triggered when the target changes in the game. It performs specific actions based on the target's name 
		and the player's main job. The function is designed to handle notifications and commands for specific non-playable 
		characters (NPCs) or monsters in the game.

	Parameters:
		target - The current target in the game, retrieved using `windower.ffxi.get_mob_by_target('t')`.

	Behavior:
		- Checks if the `AutoinfoNMMode` state is enabled and if there is a valid target.
		- Maintains a table `already_announced_by_name` to track which targets have already been announced to avoid duplicate notifications.
		- For specific target names (e.g., "Dhartok", "Triboulex", "Gartell", etc.), it sends specific commands or messages to the game.
		- If the player's main job is "WHM" (White Mage), additional commands related to melee strategy and buffs are sent.

	Notes:
		- The function includes commented-out code for additional targets and actions, which can be enabled or modified as needed.
		- The function uses Windower commands to interact with the game, such as `windower.chat.input` and `windower.send_command`.
		- The `already_announced_by_name` table is used to ensure that announcements for a specific target are made only once.

	Dependencies:
		- Windower API: `windower.ffxi.get_mob_by_target`, `windower.chat.input`, `windower.send_command`.
		- State variable: `state.AutoinfoNMMode.value`.
		- Player's main job: `player.main_job`.

	Example Usage:
		This function is intended to be used as part of a GearSwap script for Final Fantasy XI, where it is automatically 
		triggered when the target changes.
--]]



function user_target_change(target)  
	local already_announced_by_name = already_announced_by_name or {}
	local target = windower.ffxi.get_mob_by_target('t')
	local sub = windower.ffxi.get_mob_by_target('st')    --It is from the highest secrets.
    --It is from the highest secrets.

	if (state.SmartMode.value or state.AutoinfoNMMode.value) and target ~= nil and sub == nil then
		-- Add new NM data to the already_announced_by_name logic
		local nm_data = {
		--sortie bosses
			--Boss A
			["Ghatjot"] = "Weakness:Earth HP ~1,224 MP EVA 1,581 .DEF 100/ Fire: 70% Ice: 50% Wind: 70% Earth: 70% Lightning: 70% Water: Absorb Dark: Absorb Light: 55%",
			["Leshonn"] = "Weakness:Ice/Earth HP ~870,000 MP EVA 1,229 .DEF 100 / Fire: 55% Ice: 70% Wind: Absorb Earth: 55% Lightning: Absorb Water: 70% Dark: 70% Light: 70%",
			["Skomora"] = "Weakness:Fire HP ~810,000 MP EVA 1,224 .DEF 100/ Fire: 60% Ice: 70% Wind: 60% Earth: 70% Lightning: 70% Water: 70% Dark: Absorb Light: 55%",
			["Degeei"] = "HP ~1,249 MP EVA 1,249 .DEF 100/ Fire: 70% Ice: 70% Wind: 70% Earth: 70% Lightning: 70% Water: 70% Dark: 70% Light: 55%",
			--Boss E
			["Dhartok"] = "Weakness:Earth HP ~1,560,000 MP EVA 1,581 .DEF 100 INT: 363 MND: 338 / Fire: 70% Ice: 50% Wind: 70% Earth: 70% Lightning: 70% Water: Absorb Dark: Absorb Light: 70%",
			["Gartell"] = "Weakness:Ice/Earth HP ~1,560,000 MP EVA 1,581 .DEF 100 INT: 350 MND: 394 / Fire: 70% Ice: 70% Wind: 70% Earth: 70% Lightning: 70% Water: 70% Dark: 70% Light: 55%",
			["Triboulex"] = "Weakness:Fire HP ~1,500,000 MP EVA 1,581 .DEF 100 INT: 504 MND: 367 / Fire: 60% Ice: 30% Wind: Absorb Earth: 70% Lightning: Absorb Water: 70% Dark: Absorb Light: 55%",
			["Aita"] = "HP ~1,600,000 MP EVA 1,581 .DEF 122 INT: 494 MND: 427 / Fire: 70% Ice: 70% Wind: 70% Earth: 70% Lightning: 70% Water: 70% Dark: 70% Light: 55%",
			--NAKUULAS
			["Bztavian"] = "Weakness:Ice, Weakness: Piercing, Level: Lv140, HP: 1,390,000, Evasion: 1,525,  100, INT: 381, MND: 315",
			["Waktza"] = "Weakness:Earth, Weakness: Slashing, Level: Lv140, HP: 1,380,000, Evasion: 1,510,  100, INT: 391, MND: 351",
			["Cehuetzi"] = "Weakness:Fire, Weakness: Piercing, Level: Lv140, HP: 1,380,000, Evasion: 1,514, 100, INT: 344, MND: 379",
			["Yggdreant"] = "Weakness:Wind, Weakness: Slashing, Level: Lv140, HP: 1,340,000, Evasion: 1,530,  100, INT: 318, MND: 376",
			["Gabbrath"] = "Weakness:Water, Weakness: Slashing, Level: Lv140, HP: 1,380,000, Evasion: 1,523,  100, INT: 414, MND: 350",
			["Rockfin"] = "Weakness:Thunder, Weakness: Blunt, Level: Lv140, HP: 1,380,000, Evasion: 1,523,  100, INT: 362, MND: 392",		
		}
	
		if nm_data[target.name] and not already_announced_by_name[target.name] then
				already_announced_by_name[target.name] = true
				windower.send_command('input /echo ['..target.name..'] '..nm_data[target.name])
			
		end
		if (target.name == "Ghatjot" or target.name == "Dhartok") and not already_announced_by_name[target.name] then
			windower.send_command('input /echo ['..target.name..'] Dhartok HP ~1,620,000 MP EVA 1,581  .DEF 100 INT: 363 MND: 338 /posion dangeros remove it fast /move nm from pos if black cloud up .')
			if player.main_job == 'SCH' then
				windower.send_command('@wait 0.2;input /echo A E BOSS SCH Klimaform , STONE Storm SCH: SC Scission spam. STONE MB')					
			end

			already_announced_by_name[target.name] = true

		elseif (target.name == "Skomora" or target.name == "Triboulex") and not already_announced_by_name[target.name] then
			already_announced_by_name[target.name] = true
	
			if player.main_job == 'SCH' then
				windower.send_command('@input /echo C G BOSS SCH IF G BOSS USE Tabula RASA ,Embrava Klimaform , Fire Storm ')					
				windower.send_command('@wait 0.2;input /echo SCH: SC Fusion spam. FIRE MB SC liquefaction and fusion two step SC MB Immanence >Stone.>IMM.>Fire>IMM.>Ionohelix')
			end
		elseif (target.name == "Leshonn"  or target.name == "Gartell") and not already_announced_by_name[target.name] then
			already_announced_by_name[target.name] = true
			if player.main_job == 'SCH' then
				windower.send_command('@input /echo B F BOSS  Everyone must remove Shell V  SCH  Tabul a Rasa , Embrava IF F BOSS Klimaform IF Thunder hand SANDSTORM 2  IF Wind hand Hail storm II ')					
				windower.send_command('@wait 0.2;input  /echo  SCH DO SCH Induration or Scission Wind hand: SC Induration  MB BLIZZARD, Thunder hand: SC Scission MB STONE')
			end
		end
		if (target.name == "Dhartok" or target.name == "Triboulex" or target.name == "Gartell" or target.name == "Ghatjot" or target.name == "Leshonn" or target.name == "Skomora") and not already_announced_by_name[target.name] then
			already_announced_by_name[target.name] = true
			--It is from the highest secrets.
			-- windower.send_command('input /echo ['..target.name..'] HP ~1,620,000 MP:have EVA 1,581 M.DEF 100 INT: 363 MND: 338 /posion dangeros remove it fast /move nm from pos if black cloud up .')
			if player.main_job == 'WHM' then
				windower.send_command('input /echo Melee strat: WHM: Boost-STR  Auspice  Aurorastorm  Regen IV AOE. A E BOSS DO Barpoison Barwatera C G BOSS DO Baramnesra Barparalyzra')
				windower.send_command('@wait 0.2;input /echo F BOSS Wind Hands: Use Asylum it start fight then cor wc and whm repeat ')
					-- add_to_chat(122,'"Boost-STR  Auspice  Aurorastorm  Regen IV AOE.A E BOSS DO Barpoison Barwatera C G BOSS DO Baramnesra Barparalyzra F BOSS Wind Hands: Use Asylum it start fight then cor wc and whm repeat"')
			end
		end
	
	
        -- if (target.name == "Ironshell" or target.name == "Ghast") and not already_announced_by_name[target.name] then
		-- 	already_announced_by_name[target.name] = true
	    
		-- 	windower.chat.input('/p >>> '..auto_translate('Rayke')..''..auto_translate(target.name)..' ['..target.name..'] Wind hand: 70% Ice, Thunder hand: 70% Earth. Only Ice damage effective.')
		-- 	windower.send_command('input /echo ['..target.name..'] RUN Thunder hand USE Tellus / Wind hand USE Gelus .. Wind hand: 70% Ice, Thunder hand: 70% Earth. Only Ice damage effective.')
		-- end
		-- if target.name == "Dhartok" or target.name == "Triboulex" or target.name == "Gartell" or target.name == "Ghatjot" or target.name == "Leshonn" or target.name == "Skomora" and not already_announced_by_name[target.name] then
		-- 	already_announced_by_name[target.name] = true
        --     --It is from the highest secrets.
		-- 	-- windower.send_command('input /echo ['..target.name..'] HP ~1,620,000 MP:have EVA 1,581 M.DEF 100 INT: 363 MND: 338 /posion dangeros remove it fast /move nm from pos if black cloud up .')
		-- 	if player.main_job == 'WHM' then
		-- 		windower.send_command('input /echo Melee strat: WHM: Boost-STR  Auspice  Aurorastorm  Regen IV AOE. A E BOSS DO Barpoison Barwatera C G BOSS DO Baramnesra Barparalyzra')
		-- 		windower.send_command('@wait 0.2;input /echo F BOSS Wind Hands: Use Asylum it start fight then cor wc and whm repeat ')
		-- 			-- add_to_chat(122,'"Boost-STR  Auspice  Aurorastorm  Regen IV AOE.A E BOSS DO Barpoison Barwatera C G BOSS DO Baramnesra Barparalyzra F BOSS Wind Hands: Use Asylum it start fight then cor wc and whm repeat"')

		-- 	end
		-- end

	end

	-- -- local previous_state = {
	-- -- 	weapons = nil
	-- -- }
	-- local party = windower.ffxi.get_party()
	-- if world.area:contains('Walk of Echoes [P2]') and target ~= nil and sub == nil and target.name ~= player.name and not target.in_party then
	-- 	local lamia = {"agon defender", "agon clearmind", "agon infidel", "agon ritualist", "agon sharpshooter", "agon shieldsaint", "agon rabblerouser", "agon adjudicator", "agon yojimbo", "agon scallywag", "agon vizier", "agon marksman"}

	-- 	local is_lamia = false
	-- 	for _, name in ipairs(lamia) do
	-- 		if name == target.name:lower() then
	-- 			is_lamia = true
	-- 			break
	-- 		end
	-- 	end

	-- 	if is_lamia then
	-- 		-- previous_state.weapons = type(player.equipment.main) == "string" and player.equipment.main or "Masamune"

	-- 		windower.send_command('@gs c Weapons Shining')

	-- 		state.Weapons:set('Shining')
	-- 		state.AutoWSMode:set(true)

	-- 	elseif target.name:lower():find("Skeleton") or target.name:lower():find("Ghost") then
	-- 		-- previous_state.weapons = type(player.equipment.main) == "string" and player.equipment.main or "Masamune"

	-- 		windower.send_command('@gs c Weapons Loxotic')

	-- 		state.Weapons:set('Loxotic')
	-- 		state.AutoWSMode:set(true)
	-- 	else
	-- 		windower.send_command('@gs c Weapons Naegling')

	-- 	-- state.Weapons:set(previous_state.weapons)
	-- 	-- previous_state.weapons = nil

	-- 	end
	--  end

	    --It is from the highest secrets.
        local previous_weapon = nil
        local previous_ws = nil

		-- local target = windower.ffxi.get_mob_by_target('t')
		-- local sub = windower.ffxi.get_mob_by_target('st')
		if not target or not target.is_npc then return end
		if target.name == player.name then return end

		local name = target.name:lower()
		local zone = world.area --windower.ffxi.get_info().zone --
		local job = player.main_job 
		local ws = nil
		local weapon = nil
		------------------------------------------------------------
		--  Works only inside Odyssey  Walk of Echoes [P1]
		-- code version 2.1. create  by Author:Aragan
		------------------------------------------------------------
		if not zone:contains('Walk of Echoes [P1]')  then return end  -- or zone:contains('Sea Serpent Grotto') test
		if not state.BloodMode.value or not state.OdyAutowsMode.value then return end 

		------------------------------------------------------------
		--  Determine the enemy's weakness type
		------------------------------------------------------------
		local weakness = 'none'

		--It is from the highest secrets.
		previous_weapon = state.Weapons.value
		previous_ws = state.AutoWSMode.value or nil

		-- elseif target.name == "Royal Leech" or (name:find('ghast') or name:find('royal leech') or name:find('iron')

		-- if target and target.name and target.name:find('flux') then
		-- 	return
		-- end
			------------------------------------------------------------
			--  Determine the appropriate weapon and WS based on the job
			------------------------------------------------------------


	if name:find('skeleton') or name:find('ghost') or name:find('crab') or 
		name:find('bugard') or name:find('imp') or name:find('Corse') or
		name:find('draugar') or name:find('ghoul') or name:find('ghast') then
			weakness = 'blunt'
		
		--  Piercing Weakness + Lamia
	elseif name:find('bat') or name:find('fly') or name:find('wyrm') or 
		name:find('wyvern') or name:find('rarab') or name:find('Gandji') or
		name:find('Langmeidong') or name:find('Roc') or name:find('Zacatzontli') or
		name:find('jagil') 
		-- Lamia leader
		or name:find('agon monarch') or name:find('agon dignitary') 
		--lamia
		or name:find('agon adjudicator') or name:find('agon rabblerouser')
		or name:find('agon scallywag')
		or name:find('agon yojimbo') or name:find('agon vizier')
		or name:find('agon marksman') or name:find('bigbird')
		then
			weakness = 'piercing'
		
		--  Slashing Weakness + Trolls + Mamool Ja + Agon Leaders
	elseif name:find('evil weapon') or name:find('beetle') or
		 name:find('footsoldier') or name:find('spider')
		or name:find('mantis') or name:find('worm') or name:find('mandragora') or
		 name:find('tiger')
		or name:find('Flytrap')
		-- Mamool Ja
		-- Trolls
		or name:find('agon defender') or name:find('agon clearmind')
		or name:find('agon infidel') or name:find('agon ritualist')
		or name:find('agon sharpshooter') or name:find('agon shieldsaint')
		or name:find('agon phalanx')
		or name:find('agon initiate') or name:find('agon instigator')
		or name:find('agon viscount')
		or name:find('agon marquess') or name:find('agon praetor')
		or name:find('agon footsoldier')
		--unm
		or name:find('asena') 
		or name:find('chaos steward') or name:find('dabbat al-ard')
		or name:find('lotanu')
		then
			weakness = 'slashing'
		
		--  Magic Weakness 
	elseif name:find('cluster') or name:find('slime') or name:find('colibri') 
		or name:find('amemet') or name:find('kurma') or name:find('jagil')
		then
			weakness = 'magic'
		
		-- else
		-- 	weakness = 'none'
	end
	
	
	
    if job == 'COR' then
		-- weapon = "Naegling"
        -- ws = "Savage Blade"
		if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		end
        ------------------------------------
        --  Blunt Weakness (Bone / Crab / Imp / Bugard)
        ------------------------------------
        if 
        name:find('bugard') or name:find('imp') then
        weapon = "Naegling"
        ws = "Savage Blade"
	    
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        ------------------------------------
        --  Piercing Weakness (Bat / Wyrm / Rarab / Leech / Lamia)
        ------------------------------------
        elseif name:find('bat') or name:find('fly') or name:find('wyvern') or
           name:find('wyrm') then
        weapon = "Fomalhaut"
        ws = "Last Stand"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Fomalhaut')
		    end
        ------------------------------------
        --  Magic Weakness (Cluster / Slime / Iron Shell)
        ------------------------------------
        elseif name:find('cluster') or name:find('slime') or name:find('evil weapon') or 
	    name:find('qutrub') or name:find('slime') or name:find('ghoul') or
		name:find('skeleton') or name:find('ghost')
	    then
        weapon = "DeathPenalty"
        ws = "HotShot"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun DeathPenalty')
		    end
        elseif name:find('beetle') or name:find('crab') or name:find('jagil') or  name:find('karakul') or
		name:find('footsoldier') or name:find('spider') or name:find('korrigan') or
		name:find('puk') or name:find('ram') or name:find('rarab') or  name:find('wyvern') or
		name:find('leopard') or name:find('marid') or 
		name:find('mantis') or name:find('worm') or 
		name:find('tiger') or name:find('agon praetor') or name:find('agon phalanx') or
		name:find('agon marquess') or name:find('agon instigator') or 
		name:find('agon initiate') or name:find('Eruca')  
	    then
        weapon = "DeathPenalty"
        ws = "Leaden Salute"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun DeathPenalty')
		    end
        ------------------------------------
        --  UNM Weakness
        ------------------------------------
        elseif name:find('asena') then
        weapon = "Naegling"
        ws = "Savage Blade"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        elseif name:find('bygul') then
        weapon = "Naegling"
        ws = "Savage Blade"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        elseif name:find('chaos steward') then
        weapon = "Naegling"
        ws = "Savage Blade"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        elseif name:find('dabbat al-ard') then
        weapon = "Naegling"
        ws = "Savage Blade"
		if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        elseif name:find('kurma') then
        weapon = "Naegling"
        ws = "Savage Blade"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
        elseif name:find('lotanu') then
        weapon = "DeathPenalty"
        ws = "Leaden Salute"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun DeathPenalty')
		    end
        elseif name:find('wayra tata') then
            weapon = "Naegling"
            ws = "Savage Blade"
		    if player.main_job == 'COR' then
			send_command('gs c set Weapongun Anarchy')
		    end
	    
        ------------------------------------
        -- 🗡 Default
        ------------------------------------
        else
            -- weapon = "Fomalhaut"
            -- ws = "Last Stand"

            --     elseif job == 'COR' then
		    --     weapon = "Naegling"
            --     ws = "Savage Blade"
			if weakness == 'slashing' then
				weapon = "Naegling"
				ws = "Savage Blade"
				if player.main_job == 'COR' then
					send_command('gs c set Weapongun Anarchy')
				end
			elseif weakness == 'magic' then
				weapon = "DualRostam"
				ws = "Leaden Salute"
				if player.main_job == 'COR' then
					send_command('gs c set Weapongun DeathPenalty')
				end
			elseif (weakness == 'piercing' or weakness == 'blunt') then
				weapon = "DualKustawi"
				ws = "Last Stand"
				if player.main_job == 'COR' then
					send_command('gs c set Weapongun Fomalhaut')
				end
			end
		end
    
    elseif job == 'NIN' then
        -- weapon = "Heishi Shorinken"
	    -- ws = "Blade: Chi"  -- Blunt WS
		    -- weapon = "Naegling"
            -- ws = "Savage Blade"
        ------------------------------------
        --  Nostos وحوش سهلين (Blunt)
        ------------------------------------
        if name:find('bugard') or name:find('mantico') or name:find('mantis') or 
            name:find('blug') or name:find('souff') then
			weapon = "Heishi"
			ws = "Blade: Chi"  -- Hybrid WS EARTH
        ------------------------------------
        --  Piercing Weakness (Bats / Wyrm / Rarab / Leech / Flans)
        ------------------------------------
        elseif name:find('bat') or name:find('bats') or name:find('fly') or
		name:find('wyrm') or name:find('rarab') or 
		name:find('ziz') or  name:find('leech') then
			weapon = "Heishi"
			ws = "Blade: To" -- Hybrid WS ICE


        ------------------------------------
        --  Magic Weak / Absorb (Cluster / Slime / Iron Shell)
        ------------------------------------
        elseif  name:find('slime') or name:find('dahak') or
		 name:find('karakul') or name:find('tiger')
	    then
			weapon = "Heishi"
			ws = "Blade: Teki"


        ------------------------------------
        --  Skeleton / Ghost / Ghast
        ------------------------------------
        elseif name:find('skeleton') or name:find('ghost') or name:find('bhoot') or 
		name:find('crab') or name:find('draugar') or name:find('imp') or 
        name:find('leopard') or name:find('qutrub') or 
		name:find('wyvern') or name:find('ram') or name:find('raptor') or  
		name:find('rarab') 
		then
			weapon = "Heishi"
			ws = "Blade: Chi"
	
        ------------------------------------
        -- Lamia + Agon Mobs (حسب الصورة Piercing)
        ------------------------------------
	    --lamia
		elseif name:find('agon adjudicator') or name:find('agon rabblerouser') or 
	    name:find('agon scallywag') or name:find('agon yojimbo') or
		name:find('agon vizier')
	    or name:find('agon marksman') or name:find('bigbird') 
		-- Lamia leader
	    or name:find('agon monarch') or name:find('agon dignitary') 
		then
			weapon = "CLUB"
			ws = "Judgment"
        elseif name:find('bigbird') or name:find('bugard') or
	    name:find('manticore') or name:find('marid') or
	    name:find('puk') then
			weapon = "Heishi"
			ws = "Blade: To" -- Piercing

        ------------------------------------
        --  UNM
        ------------------------------------
        elseif name:find('asena') then 
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('bygul') then 
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('chaos steward') then 
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('dabbat al-ard') then 
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('kurma') then
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('lotanu') then
		    weapon = "Naegling"
            ws = "Savage Blade"
        elseif name:find('wayra tata') then 
		    weapon = "Naegling"
            ws = "Savage Blade"

        ------------------------------------
        --  Default
        ------------------------------------
        else
            -- ws = "Blade: Chi" -- fallback
            -- elseif job == 'NIN' then
            --     weapon = "Heishi Shorinken"
	        -- 	ws = "Blade: Chi"

            if weakness == 'blunt' then
				weapon = "CLUB"
				ws = "Judgment"
			elseif weakness == 'magic' then
				weapon = "Heishi"
				ws = "Blade: Teki"
			elseif (weakness == 'slashing' or weakness == 'piercing') then
				weapon = "Naegling"
				ws = "Savage Blade"
			end
		end


    elseif job == 'WAR' then
		    weapon = "Naegling"
            ws = "Savage Blade"
	-- 	if name:find('skeleton') or name:find('ghost') or name:find('crab') or 
	-- name:find('bugard') or name:find('imp') or name:find('Corse') or
	-- name:find('draugar') or name:find('ghoul') or name:find('ghast')then
	-- 	weakness = 'blunt'
	--     end
        if weakness == 'blunt' or weakness == 'magic' then --or weakness == 'magic' 
            weapon = "Loxotic"
            ws = "Judgment"
        elseif weakness == 'slashing' then
            weapon = "Naegling"
            ws = "Savage Blade"
		elseif weakness == 'piercing' then
			weapon = "Shining"
            ws = "Impulse Drive"
		-- else
		--     weapon = "Naegling"
        --     ws = "Savage Blade"
        end


	elseif job == 'DRK' then
		weapon = "Caladbolg" -- default
		ws = "Torcleaver"-- default

		------------------------------------
		--  Blunt Weakness
		------------------------------------
		if name:find('skeleton') or name:find('ghost') or
		   name:find('crab') or name:find('bugard') or name:find('imp') then
			weapon = "Loxotic"
			ws = "Judgment"
	
		------------------------------------
		--  Piercing Weakness
		------------------------------------
		elseif name:find('bat') or name:find('fly') or name:find('wyvern') or
			   name:find('wyrm') or name:find('rarab') or name:find('leech') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
	
		------------------------------------
		--  Slashing Weakness
		------------------------------------
		elseif name:find('evil weapon') or name:find('beetle') or
			   name:find('footsoldier') or name:find('spider') or
			   name:find('mantis') or name:find('worm') or
			   name:find('tiger') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
	
		------------------------------------
		-- Magic Weakness
		------------------------------------
		elseif name:find('cluster') or name:find('slime') 
		 then
			weapon = "Caladbolg"
			ws = "Torcleaver"
	
		------------------------------------
		--  Odyssey UNM
		------------------------------------
		elseif name:find('asen') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
		elseif name:find('bygul') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
		elseif name:find('chaos steward') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
		elseif name:find('dabbat al-ard') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
		elseif name:find('kurma') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
		elseif name:find('wayra tata') then
			weapon = "Caladbolg"
			ws = "Torcleaver"
	
		------------------------------------
		-- 🗡 Default fallback
		------------------------------------
		else

			if weakness == 'blunt' then
				weapon = "Loxotic"
				ws = "Judgment"
			elseif weakness == 'slashing' then
				weapon = "Caladbolg"
				ws = "Torcleaver"
			elseif weakness == 'piercing' then
				weapon = "Shining"
				ws = "Impulse Drive"
			elseif weakness == 'magic' then
				weapon = "Caladbolg"
				ws = "Torcleaver"
			end
			
		end
	

    elseif job == 'DRG' then

        if weakness == 'piercing' or weakness == 'blunt' then
			weapon = "Trishula"
            ws = "Stardiver"
        else
			weapon = "DualNaegling"
            ws = "Savage Blade"
        --     ws = "Camlann's Torment"
        end
	elseif job == 'BRD' then
        weapon = "DualNaeglingCrepuscular"
        ws = "Savage Blade"
        if weakness == 'blunt' then
        weapon = "DualNaeglingCrepuscular"
        ws = "Savage Blade"
        elseif weakness == 'piercing' then
        weapon = "DualTwashtarCrepuscular"
        ws = "Rudra's Storm"
        elseif weakness == 'magic' then
        weapon = "DualNaeglingCrepuscular"
        ws = "Savage Blade"
        elseif weakness == 'slashing' then
        weapon = "DualNaeglingCrepuscular"
        ws = "Savage Blade"
		else
        weapon = "DualNaeglingCrepuscular"
        ws = "Savage Blade"        
        end
	elseif job == 'THF' then
		weapon = "Naegling"  -- Default
		ws = "Savage Blade"
		if weakness == 'blunt' then
		weapon = "Naegling"
		ws = "Savage Blade"
		elseif weakness == 'piercing' then
		weapon = "Twashtar"
		ws = "Rudra's Storm"
		elseif weakness == 'magic' then
		weapon = "Naegling"
		ws = "Savage Blade"
		elseif weakness == 'slashing' then
		weapon = "Naegling"
		ws = "Savage Blade"
	    else
		weapon = "Naegling"
        ws = "Savage Blade"        
        end
	-- elseif job == 'DNC' then
    --     weapon = "Twashtar"
    --     ws = "Rudra's Storm"
	-- elseif job == 'RDM' then
	-- 	weapon = "DualSWORDS2"
	-- 	ws = "Savage Blade"
    -- elseif job == 'MNK' then
    --     weapon = "Godhands"
	-- 	ws = "Victory Smite"
    --     if weakness == 'blunt' then
    --         ws = "Victory Smite"
    --     else
    --         ws = "Shijin Spiral"
    --     end
    -- elseif job == 'BLU' then
	-- 	weapon = "Naegling"
    --     ws = "Savage Blade"

    --     if weakness == 'magic' then
    --         ws = "Expiacion"
    --     else
    --         ws = "Chant du Cygne"
    --     end

    -- elseif job == 'PUP' then
    --     weapon = "Godhands"
	-- 	ws = "Victory Smite"
    --     if weakness == 'blunt' then
    --         ws = "Victory Smite"
    --     else
    --         ws = "Stringing Pummel"
    --     end
    
    elseif job == 'SAM' then
		weapon = "Masamune"
		ws = "Tachi: Fudo"
	
		------------------------------------
		--   Magic Weakness Blunt Weakness (Bone / Crab / Imp...)
		------------------------------------
		if name:find('skeleton') or name:find('ghost') or name:find('bat') or 
		   name:find('bugard') or name:find('imp') or
		   name:find('leopard') or name:find('marid') or name:find('ram') or name:find('rarab') or
		   name:find('ziz') or name:find('slime') or name:find('Eruca')   
		   
		   then
			weapon = "Dojikiri"
			ws = "Tachi: Jinpu"
		------------------------------------
		--  Piercing Weakness (Bat / Wyrm / Rarab / Leech)
		------------------------------------
		elseif name:find('vulture') or name:find('fly') or name:find('wyvern') or
			   name:find('wyrm')  then
			weapon = "Polearm"
			ws = "Impulse Drive"
	
		------------------------------------
		--  Fire Magic Weakness 
		------------------------------------
		elseif  name:find('skeleton') or name:find('ghost') or name:find('crab') or 
		name:find('qutrub') or name:find('karakul') or name:find('draugar') or
		name:find('cluster') or name:find('evil weapon') or name:find('bhoot') or 
		name:find('puk') or name:find('Black Pudding') or name:find('clot') or
		name:find('Corse') or name:find(' Flan') then
			weapon = "Dojikiri"
			ws = "Tachi: Kagero"
	
		------------------------------------
		--  UNM Weaknesses
		------------------------------------
		elseif name:find('asena') then 
		    weapon = "Masamune"
		    ws = "Tachi: Fudo"
		elseif name:find('bygul') then 
		    weapon = "Masamune"
		    ws = "Tachi: Fudo"
		elseif name:find('chaos steward') then
			weapon = "Masamune"
			ws = "Tachi: Fudo"
		elseif name:find('dabbat al-ard') then 
		    weapon = "Masamune"
		    ws = "Tachi: Fudo"
		elseif name:find('kurma') then 
			ws = "Impulse Drive"
		elseif name:find('lotanu') then 
			weapon = "Masamune"
			ws = "Tachi: Fudo"
		elseif name:find('wayra tata') then 
		    weapon = "Masamune"
		    ws = "Tachi: Fudo"
	
		------------------------------------
		-- 🗡 Default
		------------------------------------
		else
			if weakness == 'slashing' then
				weapon = "Masamune"
				ws = "Tachi: Fudo"
			elseif weakness == 'magic' then
				weapon = "Dojikiri"
				ws = "Tachi: Jinpu"
			elseif weakness == 'piercing' or weakness == 'blunt' then
				weapon = "Polearm"
				ws = "Impulse Drive"
			end
		end
	end


		------------------------------------------------------------
		-- Perform the actual switch
		------------------------------------------------------------
    if weapon then
        windower.add_to_chat(207, ('[Auto WeaponSet] %s  %s (%s weak)'):format(target.name, weapon, weakness))
        send_command('@gs c Weapons ' .. weapon)
        state.Weapons:set(weapon)
    end

    if ws then
        windower.add_to_chat(207, ('[Auto WS] %s'):format(ws))
        state.AutoWSMode:set(true)
        -- state.AutoWS:set(ws)
		send_command('@gs c AutoWS ' .. ws)

    else
        windower.add_to_chat(207, ('[Auto WS] No WS rule for %s'):format(target.name))
		send_command('@gs c Weapons ' .. previous_weapon)
		state.Weapons:set(previous_weapon)
		state.AutoWS = previous_ws
		previous_weapon = nil
		previous_ws = nil    
	end
	-- tickdelay = os.clock() + 0.5

end


-- -- Function poke to interact with targets using packets
-- function poke(c)
-- 	local packet = packets.new('outgoing', 0x01A, {
-- 		["Target"] = c['Target'],
-- 		["Target Index"] = c['Target Index'],
-- 		["Category"] = 0,
-- 		["Param"] = 0,
-- 		["_unknown1"] = 0
-- 	})
-- 	packets.inject(packet)
-- end

-- -- Calculate the distance between the player and the target
-- local function get_distance(player, target)
-- 	return math.sqrt((player.x - target.x)^2 + (player.y - target.y)^2)
-- end

-- -- Trigger the code when the target changes
-- windower.register_event('target change', function(target_id)
-- 	-- Get the current target
-- 	local target = windower.ffxi.get_mob_by_target('t') -- 't' means the current target
-- 	local player = windower.ffxi.get_mob_by_target('me') -- Get the player's position

-- 	if target and target.name and target.name:lower():contains("door") then
-- 		if target.is_npc then
-- 			-- Check the distance between the player and the door
-- 			local distance = get_distance(player, target)
-- 			if distance and distance < 3 then
-- 				-- Automatically move the arrow to the door
-- 				-- windower.ffxi.run(target.x, target.y, target.z)
-- 				-- coroutine.sleep(0.5) -- Small wait before interacting
-- 				-- windower.ffxi.run(false) -- Stop movement
-- 			end

-- 			-- Use poke to interact with the door
-- 			poke({
-- 				["Target"] = target.id,
-- 				["Target Index"] = target.index
-- 			})
-- 			add_to_chat(217, "Automatically opening the door using poke.")

-- 			-- Select "Yes" from the menu after opening the door using setkey
-- 			coroutine.schedule(function()
-- 				windower.send_command('setkey up down') -- Press the up arrow
-- 				coroutine.sleep(0.1) -- Small wait
-- 				windower.send_command('setkey up up') -- Release the up arrow
-- 				coroutine.sleep(0.1) -- Small wait
-- 				windower.send_command('setkey enter down') -- Press "Enter"
-- 				coroutine.sleep(0.1) -- Small wait
-- 				windower.send_command('setkey enter up') -- Release "Enter"
-- 				add_to_chat(217, "Selected 'Yes' from the menu using setkey.")
-- 			end, 1) -- Small delay before selecting "Yes"
-- 		else
-- 			-- If the target is not an NPC, use lockon and sendkey
-- 			windower.chat.input('/lockon')
-- 			windower.send_command:schedule(1, '@sendkey enter')
-- 		end
-- 	end
-- end)

-- -- Function to find the nearest door to the player
-- local function find_nearest_door(player)
-- 	local nearest_door = nil
-- 	local nearest_distance = math.huge -- Set a very large distance as the initial value
-- 	local mobs = windower.ffxi.get_mob_array() -- Get a list of all entities

-- 	for _, mob in pairs(mobs) do
-- 		if mob and mob.name and mob.name:lower():contains("door") and mob.is_npc then
-- 			local distance = math.sqrt((player.x - mob.x)^2 + (player.y - mob.y)^2)
-- 			if distance < 3 and distance < nearest_distance then
-- 				nearest_door = mob
-- 				nearest_distance = distance
-- 			end
-- 		end
-- 	end

-- 	return nearest_door
-- end

-- local function press(key, times, delay)
-- 	times = times or 1
-- 	delay = delay or 0.2 -- Default delay
-- 	for _ = 1, times do
-- 		windower.send_command(('setkey %s down'):format(key))
-- 		coroutine.sleep(0.05)
-- 		windower.send_command(('setkey %s up'):format(key))
-- 		coroutine.sleep(delay)
-- 	end
-- end

-- windower.register_event('prerender', function()
-- 	local player = windower.ffxi.get_mob_by_target('me') -- Get the player's position
-- 	if not player then return end

-- 	-- Find the nearest door
-- 	local door = find_nearest_door(player)
-- 	if door then
-- 		-- Target the door using id and index
-- 		local packet = packets.new('outgoing', 0x01A, {
-- 			["Target"] = door.id,
-- 			["Target Index"] = door.index,
-- 			["Category"] = 0,
-- 			["Param"] = 0,
-- 			["_unknown1"] = 0
-- 		})
-- 		packets.inject(packet) -- Send the packet to target the door

-- 		-- Move the arrow up and then press "Enter"
-- 		coroutine.schedule(function()
-- 			windower.send_command('setkey up down') -- Press the up arrow
-- 			coroutine.sleep(0.2) -- Small wait
-- 			windower.send_command('setkey up up') -- Release the up arrow
-- 			coroutine.sleep(0.2) -- Additional wait
-- 			windower.send_command('setkey down down') -- Press the down arrow (to ensure the correct option is selected)
-- 			coroutine.sleep(0.2) -- Small wait
-- 			windower.send_command('setkey down up') -- Release the down arrow
-- 			coroutine.sleep(0.2) -- Additional wait
-- 			windower.send_command('setkey enter down') -- Press "Enter"
-- 			coroutine.sleep(0.2) -- Small wait
-- 			windower.send_command('setkey enter up') -- Release "Enter"
-- 			add_to_chat(217, "Selected 'Yes' from the menu using setkey.")
-- 		end, 1) -- Small delay before executing the commands
-- 	end
-- end)

-- windower.register_event('incoming text',function(org)     
-- 	if string.find(org, "Amun") then
-- 		windower.send_command('timers c "Amun Respawn" 600 down')
-- 		-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
-- 		already_announced_timers = true
-- 	end
-- end)




-- res = require('resources')
-- packets = require('packets')
-- packets.raw_fields.incoming[0x009] = L{
--     {ctype='unsigned int',      label='ID',},             -- 04
--     {ctype='unsigned short',    label='Index',},          -- 08
--     {ctype='unsigned short',    label='Message'},         -- 0A
--     {ctype='unsigned char',     label='Attr'},            -- 0C
--     {ctype='char*',             label='data'},            -- 0D
-- }

-- windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
--     if not state.AutoDropItemsMode.value then return end

-- 	if id ~= 0x009 or injected then return end
--     local packet = packets.parse('incoming', original)
--     if packet.Message ~= 180 then return end -- Item dropped
--     local _, item_id_string, _, quantity_string = unpack(packet.data:split(' '))
--     local item_data = res.items[tonumber(item_id_string)]
--     local quantity = tonumber(quantity_string) or 1
    
--     windower.add_to_chat(207, 'Detected that you dropped a "%s" x%d':format(item_data.en, quantity))
    
--     windower.send_command('treasury drop add '..item_data.en)
-- end)


-- local res = require('resources')
require('chat')

-- local alerted_items = S{}

windower.raw_register_event('incoming text',function(org, original, modified)
	if string.find(org, "MyHome:") then
		send_command('gs c useitem ring1 Warp Ring;')
		tickdelay = os.clock() + 0.5
	end
	if string.find(org, "Valkyrie: No Lamp") then
		send_command('@wait 5;lua r valkyrie')
		tickdelay = os.clock() + 0.5
	end
	-- -- New code to check if you threw something away
	-- if string.find(org, "AutoTargetAssist targeting: on")  then
	-- 	windower.send_command('input /echo ((Attack is ON.)) >> killer machine ready <<')  -- code add by (Aragan@Asura)
    --     -- windower.send_command('input /t '..player.name..' '..player.name..' >> '..item_name..' << ITS DROP LOT IT ! <call14> ' )
	-- end
    --It is from the highest secrets.
	--[[
		This script automates party joining and disbanding in the game.

		Features:
		1. Auto-Join Party:
		   - Automatically joins a party when an invitation is received.
		   - Triggers when the invitation message contains "invites you to her party" or "invites you to his party".
		   - Executes the `/join` command after a short delay (1.2 seconds).
		   - Displays a chat message indicating that the party was auto-joined.
		   - Introduces a delay (`tickdelay`) to prevent rapid execution.

		2. Auto-Disband Party:
		   - Automatically disbands the party if the player is the only member in the party.
		   - Ensures the party is not part of an alliance (no secondary party leaders).
		   - Checks that the only party member is not an NPC (Trust).
		   - Executes the `/pcmd leave` command after a short delay (1.0 seconds).
		   - Displays a chat message indicating that the party was auto-disbanded.
		   - Introduces a delay (`tickdelay`) to prevent rapid execution.

		Dependencies:
		- `windower.ffxi.get_party`: Retrieves the current party information.
		- `data.npcs.trusts`: A dataset used to identify NPCs (Trusts) in the party.

		Notes:
		- The script assumes the presence of the `state.Autojoinptmode.Value` flag to enable or disable the automation.
		- The `add_to_chat` function is used to display messages in the game chat.
		- Timing delays are implemented to ensure smooth execution and avoid conflicts.
	]]
	if state.Autojoinptmode.Value then
	-- if not state.Autojoinptmode.value then return end

		if string.find(org, "invites you to her party") or string.find(org, "invites you to his party") then
			-- local sender = org:match("invites you to (.+) party")		
				windower.send_command('wait 1.2;input /join')
			-- add_to_chat(207, 'Auto-joined party from: ' .. sender)
			add_to_chat(207, 'Auto-joined party ')
			tickdelay = os.clock() + 1.1

		end
		
		--  Auto Disband 
		local party = windower.ffxi.get_party()
		if party and party.count == 1 and not (party.party2_leader or party.party3_leader) then
			-- Ensure the data.npcs.trusts table exists
			if data and data.npcs and data.npcs.trusts then
				-- Check the first party member and ensure it's not a Trust
				local member = party.p0
				if member and member.name and not data.npcs.trusts:contains(member.name) then
					windower.send_command('wait 1.0;input /pcmd leave')
					add_to_chat(207, 'Auto-disbanded (solo only, no alliance, no trusts)')
					tickdelay = os.clock() + 1.1
				end
			end
		end
	end

	--[[
		This script manages the state transitions for the player's AutoWSMode and Weapons settings 
		in the GearSwap addon for Final Fantasy XI. It is designed to handle specific conditions 
		when the DefenseDownMode is active and the player's main job is Warrior (WAR).

		Variables:
		- previous_state: A table that stores the previous AutoWSMode and Weapons settings 
		  to allow reverting back to them after temporary changes.

		Logic:
		1. Checks if the DefenseDownMode is not set to 'None'.
		2. Saves the current AutoWSMode and Weapons settings into the `previous_state` table.
		3. If the player's main job is Warrior (WAR):
		   - Sets the Weapons state to 'Chango'.
		   - Enables AutoWSMode.
		4. If the `org` string contains "Armor Break" and the player's name:
		   - Debugging messages (commented out) are available to display the previous settings.
		   - Executes new commands (commented out) to cycle DefenseDownMode and set Weapons to default.
		   - Waits for 1 second, then reverts to the previous AutoWSMode and Weapons settings.
		   - Resets the `previous_state.weapons` value to nil.

		Notes:
		- The script includes Arabic comments for additional context.
		- Debugging messages and some commands are commented out, indicating they are optional or for testing purposes.
		- The script assumes the presence of GearSwap's state management and command execution functions.
	--]]
	--It is from the highest secrets.
	-- Table to store previous commands
	local previous_state = {
		autows = nil,
		weapons = nil
	}

	if state.DefenseDownMode.Value ~= 'None' then
		previous_state.autows = type(state.AutoWSMode.value) == "string" and state.AutoWSMode.value or "default"
		previous_state.weapons = type(state.Weapons.value) == "string" and state.Weapons.value or "default"
		if player.main_job == 'WAR' then
			-- send_command('gs c set AutoWSMode on;aws off')
			state.Weapons:set('Chango')
			state.AutoWSMode:set(true)
			tickdelay = os.clock() + 0.5

		end
		if string.find(org, "Armor Break") and string.find(org, player.name) then			-- حفظ الأوامر السابقة

					-- Display debug messages
					-- windower.add_to_chat(207, '[Debug] Previous AutoWS: ' .. previous_state.autows)
					-- windower.add_to_chat(207, '[Debug] Previous Weapons: ' .. previous_state.weapons)

					-- Execute new commands
					-- send_command('gs c Weapons default; gs c cycle DefenseDownMode;')

					-- Wait and then revert to previous commands
					send_command('@wait 1; gs c autows ' .. previous_state.autows .. '; gs c Weapons ' .. previous_state.weapons)
					state.Weapons:set(previous_state.weapons)

					-- Set the value to nil
					previous_state.weapons = nil
					-- state.Weapons:set(nil)
					tickdelay = os.clock() + 0.5

				end
			end

	-- if string.find(org, "Okyupete") then
	-- 	windower.send_command('timers c "Okyupete" 3600 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end


	-- if string.find(org, "Deelgeed") then
	-- 	windower.send_command('timers c "Deelgeed" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end

	-- if string.find(org, "Hrosshvalur") then
	-- 	windower.send_command('timers c "Hrosshvalur" 600 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end

	-- if string.find(org, "Cactuar Cantautor") then
	-- 	windower.send_command('timers c "Cactuar Cantautor" 7200 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	


	-- if string.find(org, "Gloomanita") then
	-- 	windower.send_command('timers c "Gloomanita" 7200 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	

	-- if string.find(org, "Keeper of Halidom") then
	-- 	windower.send_command('timers c "Keeper of Halidom dead" 3900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end

	-- if string.find(org, "Valkurm Emperor") then
	-- 	windower.send_command('timers c "Valkurm Emperor" 3600 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end

	-- if string.find(org, "Intulo") then
	-- 	windower.send_command('timers c "Intulo dead" 3600 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end


    -- --It is from the highest secrets.
	-- if not state.AutoDropItemsMode.value then return end

	-- local item_name = original:match('You throw away a (.+)%.') or original:match('You toss (.+)%.') or original:match('You throw away an (.+)%.')
	-- item_name = item_name and item_name:strip_format()
	-- if item_name and item_name:lower() ~= "glowing lamp" and item_name:lower() ~= "warp cudgel" then
    --     windower.send_command('treasury drop add '..item_name..'')
	-- 	windower.send_command('treasury drop add "Warp Cudgel"')
    --     windower.add_to_chat(207, '[Treasury] Added dropped item: ' .. item_name)
    -- end

	

		-- if not state.AutoDropItemsMode.value then return end

		-- -- List of prohibited items
		-- local prohibited_items = {
		-- 	"glowing lamp",
		-- 	"warp cudgel",
		-- 	"airmid's gorget",
		-- 	"reraise earring"
		-- }

		-- -- Extract the item name
		-- local item_name = original:match('You throw away a (.+)%.') or original:match('You toss (.+)%.') or original:match('You throw away an (.+)%.')

		-- if item_name then
		-- 	item_name = item_name:strip_format():lower()
		-- 	-- Check if the item is prohibited
		-- 	for _, prohibited_item in ipairs(prohibited_items) do
		-- 		if item_name == prohibited_item then
		-- 			windower.add_to_chat(207, '[Treasury] Prohibited item detected and not added: ' .. item_name)
		-- 			return
		-- 		end
		-- 	end

		-- 	-- Add the item if it is not prohibited
		-- 	windower.send_command('treasury drop add '..item_name..'')
		-- 	windower.add_to_chat(207, '[Treasury] Added dropped item: ' .. item_name)
		-- end

		----

		-- --beetle shell --beetle jaw
		-- if string.find(org, "You throw away a lizard egg") or string.find(org, "You find a volte tights") or string.find(org, "You find a volte tiara") 
		-- or string.find(org, "You find a volte boots") or string.find(org, "You find a volte hose") 
		-- or string.find(org, "You find a volte bracers") or string.find(org, "You find a crepuscular cloak") 
		-- or string.find(org, "You find a volte moufles") or string.find(org, "You find a volte brayettes")
		-- or string.find(org, "You find a fu's scale") or string.find(org, "You find a kin's scale")
		-- or string.find(org, "You find a kyou's scale") or string.find(org, "You find a kei's scale")
		-- or string.find(org, "You find a gin's scale") then
		-- 	local item_name = org:match("You find a (.+)")
		-- Send a message to the chat
		-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << ITS DROP LOT IT ! <call14>!')  -- code add by (Aragan@Asura)
		-- windower.send_command('input /t '..player.name..' '..player.name..' >> '..item_name..' << ITS DROP LOT IT ! <call14> ')
		-- end

		--[[
			This script is designed to monitor and identify specific items from a predefined list 
			when they appear in the game log. If an item from the list is detected, it sends a 
			notification to the player via an echo message and a tell command, prompting them to 
			lot the item.

			Variables:
			- items_to_find: A table containing the names of items to look for in the game log.
			
			Logic:
			- Iterates through the `items_to_find` list.
		- Checks if the current item exists in the `org` string (case-insensitive).
		- If a match is found, extracts the item name from the log message using a pattern match.
		- Sends two commands:
			1. An echo message to the player with the item name and a call-to-action.
			2. A tell message to the player with the same information.
		- Introduces a delay (`tickdelay`) to prevent rapid execution of subsequent actions.

		Notes:
		- The script assumes the `org` variable contains the relevant log message.
		- The `player.name` variable is used to personalize the messages.
		- The `windower.send_command` function is used to execute in-game commands.
		- The script breaks out of the loop after the first match is found to avoid redundant notifications.
	--]]

	local items_to_find = {
		"volte tights",
		"volte tiara",
		"volte boots",
		"volte hose",
		"volte bracers",
		"crepuscular cloak",
		"volte moufles",
		"volte brayettes",
		"fu's scale",
		"kin's scale",
		"kyou's scale",
		"kei's scale",
		"gin's scale"
	}
	
	for _, item in ipairs(items_to_find) do
		if string.find(org:lower(), item:lower()) then
			local item_name = org:match("You find a (.+)")
			if item_name then

				windower.send_command('input /echo '..player.name..' >> '..item_name..' << ITS DROP LOT IT ! <call14>!')  -- code add by (Aragan@Asura)
				windower.send_command('input /t '..player.name..' '..player.name..' >> '..item_name..' << ITS DROP LOT IT ! <call14> ')
				windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav') -- Play the sound

				tickdelay = os.clock() + 1
			end
			break 
		end
	end

    --It is from the highest secrets.
	--[[
		This code snippet is part of a Lua script for the Windower4 GearSwap addon.
		It handles the automatic addition of dropped items to a "treasury" list, 
		provided the AutoDropItemsMode state is enabled.

		Functionality:
		- Checks if the AutoDropItemsMode is active; if not, the function exits early.
		- Extracts the name of the item being thrown away from the provided message.
		- Strips any formatting from the item name.
		- Ensures the item name is valid and not "glowing lamp" (case-insensitive).
		- Sends a command to add the item to the treasury list.
		- Displays a chat message indicating the item has been added to the treasury.

		Notes:
		- The `original` variable is expected to contain the message about the thrown item.
		- The `state.AutoDropItemsMode.value` determines whether the auto-drop functionality is active.
		- The `windower.send_command` function is used to interact with the treasury system.
		- The `windower.add_to_chat` function is used to provide feedback to the user.
	--]]
	if not state.AutoDropItemsMode.value then return end

	local item_name = original:match('You throw away a (.+)%.') or original:match('You toss (.+)%.') or original:match('You throw away an (.+)%.')
	item_name = item_name and item_name:strip_format()
	if item_name and item_name:lower() ~= "glowing lamp" then
        windower.send_command('treasury drop add '..item_name..'')
        windower.add_to_chat(207, '[Treasury] Added dropped item: ' .. item_name)
		tickdelay = os.clock() + 1.1
	end

	if string.find(org, "Cuijatender") then
		windower.send_command('timers c "Cuijatender Respawn" 1200 down')
		-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
		already_announced_timers = true
	end

	-- if string.find(org, "Hazhdiha") then
	-- 	windower.send_command('timers c "Hazhdiha Respawn" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	-- if string.find(org, "Sisyphus") then
	-- 	windower.send_command('timers c "Sisyphus Respawn" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end

	-- if string.find(org, "Lord Varney") then
	-- 	windower.send_command('timers c "Lord Varney Respawn" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	-- if string.find(org, "Lord Varney") then
	-- 	windower.send_command('timers c "Lord Varney Respawn" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	-- if string.find(org, "Fistule") then
	-- 	windower.send_command('timers c "Fistule Respawn" 1200 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	-- if string.find(org, "Gukumatz ") then
	-- 	windower.send_command('timers c "Gukumatz  Respawn" 900 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	--  if string.find(org, "Jaculus") then
	--  	windower.send_command('timers c "Jaculus  Respawn" 900 down')
	-- -- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	--  	already_announced_timers = true
	--  end
	-- if string.find(org, "La Velue") then
	-- 	windower.send_command('timers c "La Velue  Respawn" 3600 down')
	-- 	-- windower.send_command('input /echo '..player.name..' >> '..item_name..' << Amun Respawn time start 10 min!')  -- code add by (Aragan@Asura)
	-- 	already_announced_timers = true
	-- end
	tickdelay = os.clock() + 1.1

end)
--[[
	Function: is_sc_element_today
	Description:
		Determines if the skillchain element(s) of a weapon skill match the current day's element.
		This function is specifically designed to work with the GearSwap addon for Final Fantasy XI.
	
	Parameters:
		spell (table): A table representing the spell being checked. It is expected to have the following fields:
			- type (string): The type of the spell. This function only processes spells of type 'WeaponSkill'.
			- skillchain_a (string): The primary skillchain property of the weapon skill.
			- skillchain_b (string): The secondary skillchain property of the weapon skill (optional).
			- skillchain_c (string): The tertiary skillchain property of the weapon skill (optional).

	Returns:
		boolean: 
			- true if the weapon skill's skillchain elements include the current day's element.
			- false if the weapon skill's skillchain elements do not include the current day's element.
			- nil if the spell is not of type 'WeaponSkill'.

	Notes:
		- This function uses the global variable `world.day_element` to determine the current day's element.
		- The `skillchain_elements` table and the `S` set utility are assumed to be defined elsewhere in the code.
]]

function is_sc_element_today(spell)
    if spell.type ~= 'WeaponSkill' then
        return
    end

   local weaponskill_elements = S{}:
    union(skillchain_elements[spell.skillchain_a]):
    union(skillchain_elements[spell.skillchain_b]):
    union(skillchain_elements[spell.skillchain_c])

    if weaponskill_elements:contains(world.day_element) then
        return true
    else
        return false
    end

end

-- windower.register_event('chat message', function(message, sender, mode, gm)
--     -- نتحقق إذا الرسالة تحتوي على موت Amun
--     if message:contains("defeats the Amun") then
--         -- يرسل للـ plugin timers مؤقت 30 دقيقة
--         send_command('timers c "Amun Respawn" 1800 down')
--     end
-- end)

trust_activation_time = nil  -- تعريف المتغير في أعلى ملفك
last_auto_trust_mode = nil   -- لتتبع آخر قيمة

function check_trust()
    local current_time = os.clock()

    -- إذا تغيرت قيمة AutoTrustMode، نعيد ضبط المؤقت
    if last_auto_trust_mode ~= state.AutoTrustMode.value then
        trust_activation_time = current_time
        last_auto_trust_mode = state.AutoTrustMode.value
        return false  -- لا نفعل شيئًا هذه الدورة، ننتظر 10 ثواني
    end

    -- لا نكمل إلا بعد مرور 10 ثواني
    if not trust_activation_time or (current_time - trust_activation_time < 4) then
        return false
    end
		
	if not moving and state.AutoTrustMode.value ~= false and state.AutoTrustMode.value ~= 'Off' and state.AutoTrustMode.value ~= nil and not data.areas.cities:contains(world.area) and (buffactive['Reive Mark'] or buffactive['Elvorseal'] or not player.in_combat) then
		local party = windower.ffxi.get_party()
		local spell_recasts = windower.ffxi.get_spell_recasts()
        -- شرط خاص لـ Temenos: لا تستدعي إلا إذا p3 فاضية
        -- if world.area == 'Temenos' and party.p3 ~= nil then
	    if (world.area == 'Temenos' or world.area == 'Apollyon') and party.p3 ~= nil then

            return false
        end
		if party.p5 == nil then
		
			if state.AutoTrustMode.value == 'Auto' then

			    if spell_recasts[998] < spell_latency and not have_trust("Ygnas") then
				    windower.chat.input('/ma "Ygnas" <me>')
				    tickdelay = os.clock() + 4.5
				    return true
				elseif spell_recasts[981] < spell_latency and not have_trust("Sylvie (UC)") then
					windower.chat.input('/ma "Sylvie (UC)" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[1018] < spell_latency and not have_trust("Koru-Moru") then
					windower.chat.input('/ma "Koru-Moru" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[911] < spell_latency and not have_trust("Joachim") then
					windower.chat.input('/ma "Joachim" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[967] < spell_latency and not have_trust("Qultada") then
					windower.chat.input('/ma "Qultada" <me>')
					tickdelay = os.clock() + 4.5
					return true
				else
					return false
				end
			end
			if state.AutoTrustMode.value == 'Cleave' then
			    if spell_recasts[998] < spell_latency and not have_trust("Ygnas") then
				    windower.chat.input('/ma "Ygnas" <me>')
				    tickdelay = os.clock() + 4.5
				    return true
				elseif spell_recasts[981] < spell_latency and not have_trust("Sylvie (UC)") then
					windower.chat.input('/ma "Sylvie (UC)" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[1018] < spell_latency and not have_trust("Koru-Moru") then
					windower.chat.input('/ma "Koru-Moru" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[911] < spell_latency and not have_trust("Joachim") then
					windower.chat.input('/ma "Joachim" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[967] < spell_latency and not have_trust("Qultada") then
					windower.chat.input('/ma "Qultada" <me>')
					tickdelay = os.clock() + 4.5
					return true
				else
					return false
				end
			end
			
			if state.AutoTrustMode.value == 'DI' then
				if spell_recasts[1013] < spell_latency and not have_trust("Lilisette II") then
					windower.chat.input('/ma "Lilisette II" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[981] < spell_latency and not have_trust("Sylvie (UC)") then
					windower.chat.input('/ma "Sylvie (UC)" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[998] < spell_latency and not have_trust("Ygnas") then
					windower.chat.input('/ma "Ygnas" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[914] < spell_latency and not have_trust("Ulmia") then
					windower.chat.input('/ma "Ulmia" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[979] < spell_latency and not have_trust("Selh\'teus") then
					windower.chat.input('/ma "Selh\'teus" <me>')
					tickdelay = os.clock() + 4.5
					return true
				else
					return false
				end
			end
			if state.AutoTrustMode.value == 'corfarm' then

				if spell_recasts[999] < spell_latency and not have_trust("Monberaux") then
					windower.chat.input('/ma "Monberaux" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[981] < spell_latency and not have_trust("Sylvie (UC)") then
					windower.chat.input('/ma "Sylvie (UC)" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[989] < spell_latency and not have_trust("King of Hearts") then
					windower.chat.input('/ma "King of Hearts" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[911] < spell_latency and not have_trust("Joachim") then
					windower.chat.input('/ma "Joachim" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[935] < spell_latency and not have_trust("Star Sibyl") then
					windower.chat.input('/ma "Star Sibyl" <me>')
					tickdelay = os.clock() + 4.5
					return true
				else
					return false
				end
			end
			if state.AutoTrustMode.value == 'MLfarm' then
				if spell_recasts[999] < spell_latency and not have_trust("Monberaux") then
					windower.chat.input('/ma "Monberaux" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[981] < spell_latency and not have_trust("Sylvie (UC)") then
					windower.chat.input('/ma "Sylvie (UC)" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[1018] < spell_latency and not have_trust("Koru-Moru") then
					windower.chat.input('/ma "Koru-Moru" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[911] < spell_latency and not have_trust("Joachim") then
					windower.chat.input('/ma "Joachim" <me>')
					tickdelay = os.clock() + 4.5
					return true
				elseif spell_recasts[935] < spell_latency and not have_trust("Star Sibyl") then
					windower.chat.input('/ma "Star Sibyl" <me>')
					tickdelay = os.clock() + 4.5
					return true
				else
					return false
				end
	
		    end
		end
	end
	return false
end




--It is from the highest secrets.
------AutoBuyAuctionHouse final version



local delay = 8
local price_increment = 10000
local res = require('resources').items
local bag_ids = {"inventory","safe","safe2","locker","satchel","sack","case","wardrobe"}

-- Define groups
local ah_groups = {
   
        -- Escha AH Price List for AutoPurchase/Tracking
    ["Echa Zitah"] = {
        -- Tier I NMs
       -- Tier I NMs
    {name = "Darksteel Ingot", quantity = 1, max_price = 100000, max_increment = 200000, target_count = 24}, 

    -- Tier II NMs
    {name = "Ethereal Incense", quantity = 1, max_price = 600000, max_increment = 800000, target_count = 15}, 
    {name = "Ayapec's Shell", quantity = 1, max_price = 80000, max_increment = 150000, target_count = 15}, 

    -- Tier III NMs
    {name = "Riftborn Boulder", quantity = 0, max_price = 2000, max_increment = 10000, target_count = 5}, 
    {name = "Beitetsu", quantity = 0, max_price = 10000, max_increment = 50000, target_count = 5}, 
    {name = "Pluton", quantity = 0, max_price = 2000, max_increment = 10000, target_count = 5}, 

    -- Tier HELM NMs
    {name = "Ashweed", quantity = 0, max_price = 10000, max_increment = 50000, target_count = 3}, 
    {name = "Gravewood Log", quantity = 0, max_price = 190000, max_increment = 230000, target_count = 3}, 
    {name = "Duskcrawler", quantity = 0, max_price = 40000, max_increment = 80000, target_count = 3}, 

    },

    ["Echa Ru'Aun"] = {
        -- Tier I NMs
        {name = "Steel Ingot", quantity = 0, max_price = 100000, max_increment = 200000, target_count = 13},
        -- {name = "Darksteel Ingot", quantity = 1, max_price = 100000, max_increment = 200000, target_count = 1},

        -- Tier II NMs
        {name = "Mhuufya's Beak", quantity = 1, max_price = 350000, max_increment = 600000, target_count = 5},
        {name = "Vedrfolnir's Wing", quantity = 1, max_price = 80000, max_increment = 200000, target_count = 5},
        {name = "Tuft of Camahueto's Fur", quantity = 0, max_price = 60000, max_increment = 150000, target_count = 5},
        {name = "Vidmapire's Claw", quantity = 0, max_price = 80000, max_increment = 200000, target_count = 5},
        {name = "Centurio's Armor", quantity = 0, max_price = 120000, max_increment = 300000, target_count = 5},
        {name = "Azrael's Eye", quantity = 1, max_price = 300000, max_increment = 400000, target_count = 5},

        -- Tier III NMs
        {name = "Yggdreant Root", quantity = 0, max_price = 50000, max_increment = 100000, target_count = 1},
        {name = "Waktza Crest", quantity = 0, max_price = 600000, max_increment = 900000, target_count = 1},
        {name = "Cehuetzi Pelt", quantity = 0, max_price = 700000, max_increment = 900000, target_count = 1},

        -- Ark Angels
        {name = "Ashen Crayfish", quantity = 0, max_price = 40000, max_increment = 100000, target_count = 3},
        {name = "Ashweed", quantity = 0, max_price = 10000, max_increment = 80000, target_count = 2},
        {name = "Gravewood Log", quantity = 0, max_price = 190000, max_increment = 230000, target_count = 3},
        {name = "Duskcrawler", quantity = 0, max_price = 50000, max_increment = 800000, target_count = 2},
        {name = "Parchment", quantity = 1, max_price = 150000, max_increment = 230000, target_count = 5},
        -- {name = "Illuminink", quantity = 0, max_price = 25000, max_increment = 50000, target_count = 5},
    },

    ["Reisenjima"] = {
        -- Tier I NMs
        {name = "Behem. Leather", quantity = 1, max_price = 70000, max_increment = 180000, target_count = 12},

        -- Tier II NMs (Level 135)
        -- {name = "Gramk-Droog's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 1},
        -- {name = "Ignor-Mnt's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 2},
        -- {name = "Durs-Vike's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 2},
        -- {name = "Liij-Vok's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 2},
        -- {name = "Tryl-Wuj's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 2},
        -- {name = "Ymmr-Ulvid's Grand Coffer", quantity = 0, max_price = 120000, max_increment = 240000, target_count = 2},

        -- Tier III NMs (Level 145)
        {name = "Sovereign Behemoth's Hide", quantity = 0, max_price = 20000, max_increment = 80000, target_count = 1},
        {name = "Tolba's Shell", quantity = 0, max_price = 40000, max_increment = 100000, target_count = 1},
        {name = "Hidhaegg's Scale", quantity = 0, max_price = 40000, max_increment = 100000, target_count = 1},

        -- HELM NMs (Level 150)
        {name = "Ashweed", quantity = 0, max_price = 10000, max_increment = 80000, target_count = 6},
        {name = "Ashen Crayfish", quantity = 0, max_price = 40000, max_increment = 100000, target_count = 3},
        {name = "Bone Chip", quantity = 0, max_price = 10000, max_increment = 100000, target_count = 10},
        {name = "Duskcrawler", quantity = 0, max_price = 50000, max_increment = 800000, target_count = 3},
        {name = "Flan Meat", quantity = 1, max_price = 200000, max_increment = 300000, target_count = 10},
        {name = "Gravewood Log", quantity = 0, max_price = 160000, max_increment = 230000, target_count = 3},
        {name = "Titanite", quantity = 1, max_price = 200000, max_increment = 400000, target_count = 10},
        {name = "Void Crystal", quantity = 1, max_price = 300000, max_increment = 500000, target_count = 9},
        {name = "Void Grass", quantity = 1, max_price = 200000, max_increment = 300000, target_count = 9},
        {name = "Voidsnapper", quantity = 1, max_price = 200000, max_increment = 300000, target_count = 9},
        {name = "Black Pudding", quantity = 0, max_price = 300000, max_increment = 500000, target_count = 1},
        {name = "Coalition Humus", quantity = 0, max_price = 50000, max_increment = 200000, target_count = 1},
        {name = "Leisure Table", quantity = 0, max_price = 150000, max_increment = 300000, target_count = 1},
        {name = "Mistmelt", quantity = 0, max_price = 100000, max_increment = 300000, target_count = 1},
        {name = "Scarletite Ingot", quantity = 0, max_price = 10000, max_increment = 50000, target_count = 1},
        {name = "Siren's Hair", quantity = 0, max_price = 30000, max_increment = 100000, target_count = 1},
        {name = "Scroll of Maiden's Virelai", quantity = 0, max_price = 400000, max_increment = 700000, target_count = 1},
        {name = "Scroll of Tornado", quantity = 0, max_price = 50000, max_increment = 100000, target_count = 1},
        {name = "Trump Card Case", quantity = 0, max_price = 50000, max_increment = 100000, target_count = 1},
        {name = "Vermihumus", quantity = 0, max_price = 50000, max_increment = 200000, target_count = 1},
        {name = "Worm Mulch", quantity = 0, max_price = 400000, max_increment = 700000, target_count = 1},

    },
}

--It is from the highest secrets.
-- Determine the number of pieces available
local function get_item_count(name)
    local count = 0
    local all_items = windower.ffxi.get_items()
    for _, bag_id in ipairs(bag_ids) do
        local bag = all_items[bag_id]
        if bag and type(bag) == 'table' then
            for _, item in pairs(bag) do
                if type(item) == 'table' and item.id and item.id > 0 then
                    local item_info = res[item.id]
                    if item_info and item_info.en:lower() == name:lower() then
                        count = count + (item.count or 1)
                    end
                end
            end
        end
    end
    return count
end
--It is from the highest secrets.
-- Purchase step
local function purchase_step(item, needed)
    if needed <= 0 then
        windower.add_to_chat(207, "[AutoAH] Reached target for "..item.name..".")
        return
    end

    if item.max_price > item.max_increment then
        windower.add_to_chat(207, "[AutoAH] Price reached max for "..item.name..", skipping.")
        return
    end

    -- تحديد كمية الشراء لكل محاولة
    local buy_qty = math.min(item.quantity, needed)

    windower.send_command('input //ah buy "'..item.name..'" '..buy_qty..' '..item.max_price)
    windower.add_to_chat(207, "[AutoAH] Attempting "..buy_qty.."x "..item.name.." at "..item.max_price)

    coroutine.schedule(function()
        local now_count = get_item_count(item.name)
        local remaining = math.max((item.target_count or 1) - now_count, 0)

        if now_count >= (item.target_count or 1) then
            windower.add_to_chat(207, "[AutoAH] Obtained required "..item.name.." (total: "..now_count..").")
            return
        else
            windower.add_to_chat(207, "[AutoAH] Not enough "..item.name.." yet. Remaining: "..remaining..". Increasing price and retrying.")
            item.max_price = math.min(item.max_price + price_increment, item.max_increment)
            if item.max_price >= item.max_increment then
                windower.add_to_chat(207, "[AutoAH] Reached max price for "..item.name..". Skipping to next.")
                return
            end
            coroutine.schedule(function()
                purchase_step(item, remaining)
            end, delay)
        end
    end, 5)
end
--It is from the highest secrets.
-- Attempt to purchase an item completely
local function attempt_purchase_item(item)
    if state.AutoBuyAuctionHouseMod.value ~= true then
        return
    end
    local current = get_item_count(item.name)
    if current >= (item.target_count or 1) then
        windower.add_to_chat(207, "[AutoAH] Already have "..current.." of "..item.name..", skipping.")
        return
    end
    local needed = (item.target_count or 1) - current
    windower.add_to_chat(207, "[AutoAH] Need "..needed.." of "..item.name..", starting purchase.")
    purchase_step(item, needed)
end

-- Purchase a complete group
function purchase_group(group_name)
    if state.AutoBuyAuctionHouseMod.value ~= true then
        windower.add_to_chat(207, "[AutoAH] AutoBuyAuctionHouseMod is OFF. Enable first.")
        return
    end

    local group = ah_groups[group_name]
    if not group then
        windower.add_to_chat(207, "[AutoAH] Group '"..group_name.."' not found.")
        return
    end

    for i, item in ipairs(group) do
        coroutine.schedule(function()
            attempt_purchase_item(item)
        end, (i-1) * delay)
    end
end
--It is from the highest secrets.
-- دعم GS command
windower.register_event('addon command', function(command, ...)
    local args = {...}
    if command == 'buygroup' then
        local group_name = table.concat(args, " ")
        purchase_group(group_name)
    end
end)


---------------






--v11

--It is from the highest secrets.
-- GearSwap AutoTrade with single NPC targeting
--It is from the highest secrets.
-- GearSwap AutoTrade with single NPC targeting
res_items = require('resources').items

local trade_groups = {
    ["zitah"] = {
        npc = "Affi",
        nms = {
            { nm = "Aglaophotis", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Angrboda", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Cunnast", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Ferrodon", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Gestalt", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Gulltop", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Lustful Lydia", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Revetaur", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Tangata Manu", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Vidala", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Vyala", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Wepwawet", command = 'TradeNPC 2 "Darksteel Ingot"' },
            { nm = "Brittlis", command = 'TradeNPC 5 "Ethereal Incense"' },
            { nm = "Ionos", command = 'TradeNPC 5 "Ayapec\'s Shell"' },
            { nm = "Kamohoalii", command = 'TradeNPC 5 "Ayapec\'s Shell"' },
            { nm = "Nosoi", command = 'TradeNPC 5 "Ayapec\'s Shell"' },
            { nm = "Sensual Sandy", command = 'TradeNPC 5 "Ethereal Incense"' },
            { nm = "Umdhlebi", command = 'TradeNPC 5 "Ethereal Incense"' },
            { nm = "Fleetstalker", command = 'TradeNPC 5 "Riftborn Boulder"' },
            { nm = "Shockmaw", command = 'TradeNPC 5 "Beitetsu"' },
            { nm = "Urmahlullu", command = 'TradeNPC 5 "Pluton"' },
            { nm = "Alpluachra, Bucca & Puca", command = 'TradeNPC 1 "Ashweed" 1 "Gravewood Log"' },
            { nm = "Blazewing", command = 'TradeNPC 1 "Duskcrawler" 1 "Gravewood Log"' },
            { nm = "Pazuzu", command = 'TradeNPC 1 "Ashweed" 1 "Duskcrawler"' },
            { nm = "Wrathare", command = 'TradeNPC 1 "Ashweed" 1 "Duskcrawler" 1 "Gravewood Log"' },
        },
    },
    
    --  Escha - Ru'Aun (NPC: Dremi)
    ["ruaun"] = {
        npc = "Dremi",
        nms = {
            -- Tier I NMs
            { nm = "Asida", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Bia", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Emputa", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Khon", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Khun", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Ma", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Met", command = 'TradeNPC 1 "Steel Ingot"' },
            { nm = "Peirithoos", command = 'TradeNPC 1 "Steel Ingot"' },
            { nm = "Ruea", command = 'TradeNPC 1 "Steel Ingot"' },
            { nm = "Sava Savanovic", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Tenodera", command = 'TradeNPC 2 "Steel Ingot"' },
            { nm = "Wasserspeier", command = 'TradeNPC 2 "Steel Ingot"' },
    
            -- Tier II NMs
            { nm = "Amymone", command = 'TradeNPC 5 "Mhuufya\'s Beak"' },
            { nm = "Hanbi", command = 'TradeNPC 5 "Azrael\'s Eye"' },
            { nm = "Kammavaca", command = 'TradeNPC 5 "Vedrfolnir\'s Wing"' },
            { nm = "Naphula", command = 'TradeNPC 5 "Tuft of Camahueto\'s Fur"' },
            { nm = "Palila", command = 'TradeNPC 5 "Vidmapire\'s Claw"' },
            { nm = "Yilan", command = 'TradeNPC 5 "Centurio\'s Armor"' },
    
            -- Tier III NMs
            { nm = "Duke Vepar", command = 'TradeNPC 1 "Yggdreant Root"' },
            { nm = "Pakecet", command = 'TradeNPC 1 "Waktza Crest"' },
            { nm = "Vir\'ava", command = 'TradeNPC 1 "Cehuetzi Pelt"' },
    
            -- Ark Angels
            { nm = "Ark Angel EV", command = 'TradeNPC 1 "Ashen Crayfish" 1 "Ashweed" 1 "Illuminink" 1 "Parchment"' },
            { nm = "Ark Angel GK", command = 'TradeNPC 1 "Ashen Crayfish" 1 "Gravewood Log" 1 "Illuminink" 1 "Parchment"' },
            { nm = "Ark Angel HM", command = 'TradeNPC 1 "Ashweed" 1 "Gravewood Log" 1 "Illuminink" 1 "Parchment"' },
            { nm = "Ark Angel MR", command = 'TradeNPC 1 "Ashen Crayfish" 1 "Duskcrawler" 1 "Illuminink" 1 "Parchment"' },
            { nm = "Ark Angel TT", command = 'TradeNPC 1 "Duskcrawler" 1 "Gravewood Log" 1 "Illuminink" 1 "Parchment"' },
            -- Heavenly Beasts
            { nm = "Byakko", command = 'TradeNPC 3 "Byakko Scrap"' },
            { nm = "Genbu", command = 'TradeNPC 3 "Genbu Scrap"' },
            { nm = "Kirin", command = 'TradeNPC 5 "Byakko Scrap" 5 "Genbu Scrap" 5 "Seiryu Scrap" 5 "Suzaku Scrap"' },
            { nm = "Seiryu", command = 'TradeNPC 3 "Seiryu Scrap"' },
            { nm = "Suzaku", command = 'TradeNPC 3 "Suzaku Scrap"' },
        },
    },

    --  Reisenjima (NPC: Shiftrix)
    ["reisenjima"] = {
        npc = "Shiftrix",
        nms = {
            -- Tier I NMs (Level 129)
            { nm = "Belphegor", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Crom Dubh", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Dazzling Dolores", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Golden Kist", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Kabandha", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Mauve-wristed Gomberry", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Oryx", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Sabotender Royal", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Sang Buaya", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Selkit", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Taelmoth the Diremaw", command = 'TradeNPC 1 "Behem. Leather";' },
            { nm = "Zduhac", command = 'TradeNPC 1 "Behem. Leather";' },
    
            -- Tier II NMs (Level 135)
            { nm = "Bashmu", command = 'TradeNPC 1 "Gramk-Droog\'s Grand Coffer";' },
            { nm = "Gajasimha", command = 'TradeNPC 1 "Ignor-Mnt\'s Grand Coffer";' },
            { nm = "Ironside", command = 'TradeNPC 1 "Durs-Vike\'s Grand Coffer";' },
            { nm = "Old Shuck", command = 'TradeNPC 1 "Liij-Vok\'s Grand Coffer";' },
            { nm = "Sarsaok", command = 'TradeNPC 1 "Tryl-Wuj\'s Grand Coffer";' },
            { nm = "Strophadia", command = 'TradeNPC 1 "Ymmr-Ulvid\'s grand coffer ";' },
    
            -- Tier III NMs (Level 145)
            { nm = "Maju", command = 'TradeNPC 1 "Sovereign Behemoth\'s Hide";' },
            { nm = "Neak", command = 'TradeNPC 1 "Tolba\'s Shell";' },
            { nm = "Yakshi", command = 'TradeNPC 1 "Hidhaegg\'s Scale";' },
    
            -- HELM NMs (Level 150)
            { nm = "Albumen", command = 'TradeNPC 3 "Ashweed" 3 "Void Grass" 1 "Vermihumus" 1 "Coalition Humus";' },
            { nm = "Erinys", command = 'TradeNPC 3 "Voidsnapper" 3 "Ashweed" 1 "mistmelt" 1 "Tornado";' },
            { nm = "Onychophora", command = 'TradeNPC 3 "Void Crystal" 3 "Void Grass" 10 "titanite" 1 "Worm Mulch";' },
            { nm = "Schah", command = 'TradeNPC 3 "Voidsnapper" 3 "Gravewood Log" 1 "leisure table" 1 "trump card case";' },
            { nm = "Teles", command = 'TradeNPC 3 "Void Crystal" 3 "Voidsnapper" 1 "maiden\'s virelai" 1 "siren\'s hair";' },
            { nm = "Vinipata", command = 'TradeNPC 3 "Void Crystal" 3 "Duskcrawler" 1 "bone chip" 1 "scarletite ingot";' },
            { nm = "Zerde", command = 'TradeNPC 3 "Void Grass" 3 "Ashen Crayfish" 10 "Flan Meat" 1 "Black Pudding";' },
        },
    },
}

local running = false
local current_group = nil
local current_index = 1
local trade_delay = 10
local trade_timer = 1

------------------------------------------------------------
-- دالة استخراج أسماء الأيتمات من أمر TradeNPC (من ملف AutoTrade)
------------------------------------------------------------
local function get_items_from_command(cmd)
    local set  = {}
    local list = {}

    if not cmd or cmd == '' then
        return list
    end

    for name in cmd:gmatch('"(.-)"') do
        if name and name ~= '' and not set[name] then
            set[name] = true
            table.insert(list, name)
        end
    end

    return list
end

--It is from the highest secrets.
-- Start auto trade
function start_autotrade(group_name)
    if running then return end

    local group = trade_groups[group_name]
    if not group then
        windower.add_to_chat(8, "[AutoTrade] No group found: "..group_name)
        return
    end

    local target = windower.ffxi.get_mob_by_name(group.npc)
    if not target or not target.valid_target or not target.is_npc or target.distance > 35 then
        windower.add_to_chat(8, "[AutoTrade] NPC not found or too far: "..group.npc)
        return
    end

    running = true
    current_group = group_name
    current_index = 1
    trade_timer = os.clock() + 0.5

    -- Target NPC once
    windower.send_command('input /targetnpc')
    windower.add_to_chat(8, "[AutoTrade] Targeting NPC: "..group.npc)
end

--It is from the highest secrets.
-- Stop trading
function stop_autotrade()
    running = false
    current_group = nil
    current_index = 1
    windower.add_to_chat(8, "[AutoTrade] Stopped.")
end


-- ------------------------------------------------------------------------------
-- -- 🤖 --Auto Invite System within GearSwap only (without using packets)
-- ------------------------------------------------------------------------------

-- windower.register_event('chat message', function(message, sender, mode, gm)
-- 	if mode ~= 3 then return end  -- Only process tell messages

-- 	local msg_l = message:lower()
-- 	if msg_l:find('inv') or msg_l:find('invite') then
-- 		windower.add_to_chat(207, ('[AutoInvite] Inviting %s...'):format(sender))
-- 		coroutine.schedule(function()
-- 			windower.send_command('input /pcmd add ' .. sender)
-- 			windower.add_to_chat(207, ('[AutoInvite] Invited %s'):format(sender))
-- 		end, 0.5)  -- Half-second delay
-- 	end
-- end)


--------------------------------------------------------------------------------
-- Capture Tell messages and invite the sender if AllseenmsgMode = ON


-- --------------------- Auto AllseenmsgMode by Tell (Packet-level)
-- -- It is from the highest secrets.
-- local packets = require('packets')
-- --AllseenmsgMode
-- windower.register_event('incoming chunk', function(id, data)
-- 	if not state.DarknessMode.value or not state.AllseenmsgMode.value then return end
-- 	if id == 0x017 or id == 0x0C8 or id == 0x0C9 then -- Tell, Party, or Linkshell message
-- 		local packet = packets.parse('incoming', data)
-- 		if packet and packet['Sender Name'] and packet['Message'] then
-- 			local sender = packet['Sender Name']
-- 			local message = packet['Message']
-- 			if sender and #sender > 2 and not blacklist[sender] and not invited[sender] then
-- 				if id == 0x017 then
-- 					windower.add_to_chat(207, ('[tell] Message %s via Tell. Message: "%s"'):format(sender, message))
-- 				elseif id == 0x0C8 then
-- 					windower.add_to_chat(207, ('[Party] Message from %s: "%s"'):format(sender, message))
-- 				elseif id == 0x0C9 then
-- 					windower.add_to_chat(207, ('[Linkshell] Message from %s: "%s"'):format(sender, message))
-- 				end
-- 			end
-- 		end
-- 	end
-- end)




-- Allow jobs to override this code
function user_self_command(commandArgs, eventArgs)
	local cmd = commandArgs[1] and commandArgs[1]:lower()

    --------------------------------------------------------
    -- مود العري الكامل: gs c naked
    --------------------------------------------------------
    if cmd == 'naked' then
        state.NakedMode:toggle()

        if state.NakedMode.value then
            -- تفعيل المود: نخلع كل شيء ونقفل كل السلوتات
            send_command('gs equip naked')
            send_command('gs disable main sub range ammo head body hands legs feet neck waist ear1 ear2 ring1 ring2 back')
            windower.add_to_chat(207, '[NakedMode] ON')
        else
            -- إطفاء المود: نفتح السلوتات ونحدث القير
            send_command('gs enable main sub range ammo head body hands legs feet neck waist ear1 ear2 ring1 ring2 back')
            send_command('gs c update')
            windower.add_to_chat(207, '[NakedMode] OFF')
        end

        eventArgs.handled = true
        return
    end
    if commandArgs[1]:lower() == 'autoinv' then
        state.AutoInviteMode:toggle()
        windower.add_to_chat(207, '[AutoInvite] = ' .. tostring(state.AutoInviteMode.value))
    end
    if commandArgs[1]:lower() == 'abyssea' then
        send_command('@ept track "'..state.Abyssea.value..'"')
    end
    if commandArgs[1]:lower() == 'ascws' then
        send_command('@asc ws "'..state.Ascws.value..'"') --asc ws Decimation --explain
    elseif commandArgs[1]:lower() == 'skillchainerws' then --Skillchainer mainws Decimation
        send_command('@Skillchainer mainws "'..state.Skillchainerws.value..'"')
    end

    local input_command = table.concat(commandArgs, " ")
    -- If the command starts with "buygroup", pass the group name to the existing code
    if input_command:lower():sub(1, 8) == "buygroup" then
        -- Remove the word "buygroup" and extract the group name only
        local group_name = input_command:sub(10)
        purchase_group(group_name)
    end

    local cmd = commandArgs[1] and commandArgs[1]:lower() or nil
    local group_name = commandArgs[2] and commandArgs[2]:lower() or nil

    if cmd == 'autotrade' and group_name then
        start_autotrade(group_name)
    elseif cmd == 'stop' then
        stop_autotrade()
    elseif cmd == 'list' then
        windower.add_to_chat(8, "[AutoTrade] Available groups:")
        for k, v in pairs(trade_groups) do
            windower.add_to_chat(8, string.format(" - %s (NPC: %s)", k, v.npc))
        end
    end
end

-- prerender event loop for executing trades
windower.register_event('prerender', function()
    if not running or not current_group then
        return
    end

    if os.clock() < trade_timer then
        return
    end

    local group_data = trade_groups[current_group]
    if not group_data then
        running = false
        current_group = nil
        current_index = 1
        return
    end

    if current_index <= #group_data.nms then
        local nm_data  = group_data.nms[current_index]
        local npc_name = group_data.npc

        --------------------------------------------------
        -- نفس منطق AutoTrade.lua:
        --  1) يسحب الأيتمات من كل الحقائب (get *item all)
        --  2) يقفل أي منيو مفتوحة (Escape)
        --  3) يستهدف الـ NPC
        --  4) يعمل TradeNPC
        --  5) ينزل على أول وحش ويضغط Enter
        --------------------------------------------------
        local item_names = get_items_from_command(nm_data.command)
        local cmd_str

        if #item_names > 0 then
            local first = true
            for _, iname in ipairs(item_names) do
                if first then
                    cmd_str = string.format('get *%s all', iname)
                    first = false
                else
                    cmd_str = cmd_str .. string.format(';@wait 1;get *%s all', iname)
                end
            end

            cmd_str =
                'setkey escape down; wait 0.1; setkey escape up; @wait 0.5;' ..
                cmd_str ..
                ';@wait 1;input /targetnpc;@wait 2;' .. nm_data.command ..
                ';@wait 3;setkey down down;wait 0.1;setkey down up; wait 0.1;setkey enter down; wait 0.1; setkey enter up'
        else
            cmd_str =
                'setkey escape down; wait 0.1; setkey escape up; @wait 0.5;' ..
                'input /targetnpc;@wait 1;' .. nm_data.command ..
                ';@wait 3;setkey down down;wait 0.1;setkey down up; wait 0.1;setkey enter down; wait 0.1; setkey enter up'
        end

        windower.send_command(cmd_str)
        windower.add_to_chat(8, string.format("[AutoTrade] Trading %s → NPC: %s", nm_data.nm, npc_name))

        current_index = current_index + 1
        trade_timer   = os.clock() + trade_delay
    else
        windower.add_to_chat(8, string.format("[AutoTrade] Completed group '%s'.", current_group))
        running       = false
        current_group = nil
        current_index = 1
    end
end)
-- Function to automatically obtain KI "Radialens" from Escha NPCs
function get_radialens_ki()
	local escha_npcs = {
		["Escha - Zi'Tah"] = "Affi",
		["Escha - Ru'Aun"] = "Dremi",
		["Reisenjima"] = "Shiftrix"
	}

	local current_area = windower.ffxi.get_info().zone
	local npc_name = escha_npcs[res.zones[current_area].english]

	if not npc_name then
		windower.add_to_chat(207, "[Radialens] You are not in an Escha zone.")
		return
	end

	local target = windower.ffxi.get_mob_by_name(npc_name)
	if not target or not target.valid_target or not target.is_npc or target.distance > 35 then
		windower.add_to_chat(207, "[Radialens] NPC '" .. npc_name .. "' not found or too far.")
		return
	end

	windower.send_command('setkey escape down; wait 0.1; setkey escape up; wait 0.5;')
	windower.send_command('input /targetnpc; wait 1; input /lockon; wait 1; input /yes')
	windower.add_to_chat(207, "[Radialens] Attempting to obtain KI 'Radialens' from " .. npc_name .. ".")
end

-- Add a command to trigger the function
windower.register_event('addon command', function(command)
	if command:lower() == 'radialens' then
		get_radialens_ki()
	end
end)

    --     windower.add_to_chat(8, "Usage:")
    --     windower.add_to_chat(8, "//gs c autotrade <zitah | ruaun | reisenjima>")
    --     windower.add_to_chat(8, "//gs c stop")
    --     windower.add_to_chat(8, "//gs c list")

-- Function to check the current day
function check_darkday()
	local day = windower.ffxi.get_info().day -- Get the current day
	if (day == 7 or day == 1 or day == 2 or day == 3 or day == 4 or day == 5 or day == 6) then -- If the current day is Darkday
		-- windower.add_to_chat(207, 'Alert: Today is DARKDAY!  <call14>')
		windower.add_to_chat(207, 'Alert: Today is '..world.day_element..'!  <call14>')
		-- windower.play_sound(windower.addon_path .. 'sounds/day_alert.wav') -- Play the sound
		-- windower.send_command('input /t Aragan Alert: Today is '..world.day_element..'!' )
		windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav') -- Play the sound
        -- windower.send_command('input /t Aragan Alert: Today is DARKDAY!' )

	end
	-- Check if the next day is Darkday
	local next_day = (day + 1) % 8 -- Calculate the next day (0 to 7 cycle)
	if (next_day == 7 or day == 1 or day == 2 or day == 3 or day == 4 or day == 5 or day == 6) then -- If the current day is Darkday
		windower.add_to_chat(207, 'Alert: Tomorrow is DARKDAY!  <call14>')
		windower.play_sound(windower.addon_path .. 'sounds/tomorrow_darkday_alert.wav') -- Play the sound
		-- windower.send_command('input /t Aragan Alert: Tomorrow is DARKDAY!' )
	end
end

-- Register event for day change
windower.register_event('day change', check_darkday)

-----------------------------------------
-- Moon Watcher: alert on ANY change
-----------------------------------------
local last_moon_pct = nil  -- Last known moon percentage (0..100)

-- Helper function: Convert percentage to approximate moon phase name
local function moon_name_from_pct(pct)
	-- Divide the circle into eight approximate phases
	if pct >= 0 and pct <= 10 then return "New Moon" end
	if pct > 10 and pct < 25 then return "Waxing Crescent" end
	if pct == 25 then return "First Quarter" end
	if pct > 25 and pct < 50 then return "Waxing Gibbous" end
	if pct == 50 then return "Half Moon" end  -- If you want it as "First Quarter/Half"
	if pct > 50 and pct < 75 then return "Waning Gibbous" end
	if pct == 75 then return "Last Quarter" end
	if pct > 75 and pct < 90 then return "Waning Crescent" end
	if pct >= 90 and pct <= 100 then return "Full Moon" end
	tickdelay = os.clock() + 1

	return "Moon"
end

-- Check for moon phase changes in-game (every minute)
local function check_moon_change()
	local info = windower.ffxi.get_info()
	if not info then return end

	-- Some versions return it as moon_phase, others as moon (percentage 0..100)
	local pct = info.moon_phase or info.moon or 0
	-- Ensure it's a number
	pct = tonumber(pct) or 0

	if last_moon_pct == nil then
		last_moon_pct = pct
		return
	end

	if pct ~= last_moon_pct then
		local name = moon_name_from_pct(pct)
		windower.add_to_chat(207, ('[Moon] Phase changed to %s (%d%%)'):format(name, pct))
		-- If you want the same sound for every change, place it here:
		-- windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav')

		-- Examples of different sounds for specific cases (optional):
		if pct >= 0 and pct <= 10 then
				windower.add_to_chat(207, '[Moon] It is now a New Moon!')
				windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav') -- Play the sound
		elseif pct >= 90 and pct <= 100 then
				windower.add_to_chat(207, '[Moon] It is now a Full Moon!')
				windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav') -- Play the sound
		elseif pct == 100 then
			windower.play_sound(windower.addon_path .. 'sounds/darkday_alert.wav') -- Play the sound

		end

		last_moon_pct = pct
	end
end

-- Execute the check when the addon is loaded (captures the current state)
windower.register_event('load', function()
	local info = windower.ffxi.get_info()
	if info and info.moon_phase then
		last_moon_pct = tonumber(info.moon_phase) or 0
	end
end)

-- Correct event: triggers every in-game minute
windower.register_event('time change', check_moon_change)

---------

------------------------------------------------------------
-- Darkness Aragan Version Anti-Interrupt Movement (Aragan GearSwap Version 2 smart)
------------------------------------------------------------
------------------------------------------------------------
-- Default Keybind: Ctrl+I to toggle the system ON/OFF
-- It is recommended to place these commands inside user_setup() or job_setup()
-- But if left here, they will also work
------------------------------------------------------------
send_command('bind ^i input //gs darkness')
--It is from the highest secrets.
--Darkness Aragan Version (Aragan GearSwap Version 2 smart)
-- If you have a user_unload() or file_unload() function in your file,
-- Add this line to unbind the keybind on exit:
-- send_command('unbind ^i')

-- General variables to save the last coordinates and time
fixed_pos = fixed_pos or ''
fixed_ts  = fixed_ts  or os.time()

-- Flag to enable/disable the feature
-- Start disabled by default
no_interruptions = false -- no_interruptions = (no_interruptions ~= false)

------------------------------------------------------------
--Darkness Aragan Version (Aragan GearSwap Version 2 smart)
--It is from the highest secrets.
------------------------------------------------------------
windower.raw_register_event('outgoing chunk', function(id, original, modified, injected, blocked)
	-- If the feature is disabled or the packet is blocked by another addon, exit immediately
	if not no_interruptions or blocked then
		return
	end

	-- 0x15 = Position Update
	if id == 0x15 then
		local now = os.time()

		-- Check:
		-- 1) If there is an ongoing cast/action (gearswap.cued_packet or midaction())
		-- 2) If there are saved coordinates
		-- 3) If less than 5 seconds have passed since the last save
		if (gearswap and gearswap.cued_packet or midaction())
			and fixed_pos ~= ''
			and (now - fixed_ts) < 5
		then
			------------------------------------------------
			-- Modify the packet: --Darkness Aragan Version (Aragan GearSwap Version 2 smart)
			-- The first 4 bytes remain unchanged
			-- Replace bytes 5 → 16 with the saved coordinates (fixed_pos)
			-- Keep the rest from byte 17 → end of the packet as is
			------------------------------------------------
			return original:sub(1, 4) .. fixed_pos .. original:sub(17)
		else
			------------------------------------------------
			-- If there is no ongoing cast: 
			-- Save the new coordinates and the current time
			------------------------------------------------
			fixed_pos = original:sub(5, 16)
			fixed_ts  = now
		end
	end
end)

------------------------------------------------------------
-- Undefined GearSwap command:
--   //gs darkness --It is from the highest secrets. Darkness Aragan Version (Aragan GearSwap Version 2 smart)
-- This command toggles the no_interruptions flag ON/OFF
------------------------------------------------------------
register_unhandled_command(function (...)
	local commands = {...}
	local first = commands[1] and commands[1]:lower() or nil

	if first == 'darkness' then
		if no_interruptions then
			windower.add_to_chat(160, ('%s :darkness secret Off Disabling no_interruptions'):format(_addon.name or 'GearSwap'))
			no_interruptions = false
		else
			windower.add_to_chat(160, ('%s :darkness secret ON Enabling no_interruptions'):format(_addon.name or 'GearSwap'))
			no_interruptions = true
		end
		return true
	end

	return false
end)





--------

-- windower.register_event('prerender', function()
--     if state.AutoFarmMode.value then
--         local player = windower.ffxi.get_player()
--         if not player or player.status == 1 then return end -- If the player is already busy (in combat)

--         local mobs = windower.ffxi.get_mob_array()
--         local nearest_mob = nil
--         local min_distance = 50 -- Maximum distance to search for targets

--         for _, mob in pairs(mobs) do
--             if mob and mob.valid_target and mob.spawn_type == 16 and mob.distance:sqrt() < min_distance and mob.claim_id == 0 then
--                 nearest_mob = mob
--                 min_distance = mob.distance:sqrt()
--             end
--         end

--         if nearest_mob then
--             windower.add_to_chat(158, 'Engaging target: ' .. nearest_mob.name)
--             local packet = packets.new('outgoing', 0x01A, {
--                 ["Target"] = nearest_mob.id,
--                 ["Target Index"] = nearest_mob.index,
--                 ["Category"] = 2,
--                 ["Param"] = 0,
--                 ["_unknown1"] = 0,
--                 ["X Offset"] = 0,
--                 ["Z Offset"] = 0,
--                 ["Y Offset"] = 0
--             })
--             packets.inject(packet)
--         end
--     end
-- end)


-- -- Register moon change event
-- windower.register_event('moon change', function(new_moon, old_moon)
--     -- Display a message when the moon phase changes
--     windower.add_to_chat(207, string.format('[Info] The moon has changed from %s to %s.', old_moon or 'None', new_moon))
	
--     -- If the moon is in the New Moon phase
--     if new_moon == 'New Moon' then
--         windower.add_to_chat(207, '[Info] The moon is now in New Moon phase!')
--     elseif new_moon == 'Full Moon' then
--         windower.add_to_chat(207, '[Info] The moon is now in Full Moon phase!')
--     end
-- end)

--[[
function get_attack_increase(target)
    local buffs = {'Dia', 'Shell Crusher'}
    local attack_increase = 0
    for _, buff in ipairs(buffs) do
        if target and target.buffs[buff] then
            attack_increase = attack_increase + 1000
        end
    end
    return attack_increase
end

function get_attack_power()
    local base_attack = 3500
    local target = windower.ffxi.get_mob_by_target('t')
    local attack_increase = get_attack_increase(target)
    return base_attack + attack_increase
end
function display_attack_power(attack_power)
    add_to_chat(207, '"Attack Power: " '.. tostring(attack_power)'')
end

function get_attack_power()
    local base_attack = 3500
    local target = windower.ffxi.get_mob_by_target('t')
    local attack_increase = get_attack_increase(target)
    local attack_power = base_attack + attack_increase
    
    display_attack_power(attack_power)
	add_to_chat(207, '"Attack Power: " '.. tostring(attack_power)'')

    return attack_power
end
]]

--[[


function user_job_state_change(stateField, newValue, oldValue)
    if stateField == "Weapons" then
        if newValue:startswith("Naegling") then
            send_command('gs c autows Savage Blade')
            send_command('gs c autows tp 1750')
        elseif newValue == "Trishula" then
            send_command('gs c autows Stardiver')
            send_command('gs c autows tp 1250')
        elseif newValue == "ShiningOne" then
            send_command('gs c autows Impulse Drive')
            send_command('gs c autows tp 1750')
        end
    end
end
]]

--[[


windower.register_event('incoming text',function(org)     
    --It is from the highest secrets.
	--abyssea stagger --red pros
	if string.find(org, "The fiend is frozen in its tracks.") then
		windower.send_command('input /p Stagger! <call21>!')-- code add by (Aragan@Asura)
		-- send_command('gs c Weapons Tauret;gs c set WeaponskillMode Match;gs c set OffenseMode Normal;gs c set TreasureMode Fulltime;gs c set AutoWSMode True')--gs enable all AutoWSMode --gs c Weapons Naegling;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false
		-- send_command('gs c Weapons ProcCRIT2;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false;gs c set ExtraMeleeMode DWFull2')--gs enable all AutoWSMode --gs c Weapons Naegling;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false
	    -- send_command('gs c Weapons ProcCRIT2;gs c set WeaponskillMode Match;gs c set OffenseMode Normal;gs c set TreasureMode None;gs c set AutoWSMode True;gs c set ExtraMeleeMode DWFull')--gs enable all AutoWSMode --gs c Weapons Naegling;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false -- for abyssea track Kukulkan's Fang
		send_command('gs c Weapons ProcSword3;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false;gs c set ExtraMeleeMode DWFull2')--gs enable all AutoWSMode --gs c Weapons Naegling;gs c set WeaponskillMode Match;gs c set OffenseMode CRIT;gs c set TreasureMode Fulltime;gs c set AutoWSMode false

	end

	local last_message = nil
--RED Proc mode
--  set weapon first on ProcGreatSword for Freezebite bcuz its have 1 ws rotate  that for work fine
	if state.WeaponskillMode.value == 'Proc' then  
		if last_message == true then return end

		if string.find(org, "The fiend appears vulnerable to ice elemental weapon skills!")  then
			send_command('gs c Weapons ProcGreatSword;')
			send_command('input /p RED Proc: Ice - Freezebite(GSD);')
			send_command('input /echo RED Proc: Ice - Freezebite(GSD);')
		elseif string.find(org, "The fiend appears vulnerable to wind elemental weapon skills!")  then
			send_command('gs c Weapons ProcGreatKatana;') 
			send_command('input /p RED Proc: Wind - Cyclone(DGR), Tachi: Jinpu(GKT);') 
			send_command('input /echo RED Proc: Wind - Cyclone(DGR), Tachi: Jinpu(GKT);')
			

		elseif string.find(org, "The fiend appears vulnerable to lightning elemental weapon skills!")  then
			send_command('gs c Weapons ProcPolearm;')
			send_command('input /p RED Proc: Lightning - Raiden Thrust(PLM);')
			send_command('input /echo RED Proc: Lightning - Raiden Thrust(PLM);')
			

	    elseif string.find(org, "The fiend appears vulnerable to fire elemental weapon skills!")  then
			send_command('gs c Weapons ProcSword;')
			send_command('input /p RED Proc: Fire - Red Lotus Blade(SWD);')
			send_command('input /echo RED Proc: Fire - Red Lotus Blade(SWD);')
			

	    elseif string.find(org, "The fiend appears vulnerable to earth elemental weapon skills!")  then
			send_command('gs c Weapons ProcStaff;')
			send_command('input /p RED Proc: Earth - Earth Crusher(STF);')
			send_command('input /echo RED Proc: Earth - Earth Crusher(STF);')
			
	    elseif string.find(org, "The fiend appears vulnerable to darkness elemental weapon skills!")  then
			send_command('gs c Weapons ProcScythe;')
			send_command('input /p RED Proc: Dark - Energy Drain(DGR), Shadow of Death(SCY), Blade: Ei(KTN);')
			send_command('input /echo RED Proc: Dark - Energy Drain(DGR), Shadow of Death(SCY), Blade: Ei(KTN);')
			 

		elseif string.find(org, "The fiend appears vulnerable to light elemental weapon skills!")  then
			send_command('gs c Weapons ProcSword2;')
			send_command('input /p RED Proc: Light - Seraph Blade(SWD), Tachi: Koki(GKT), Seraph Strike(CLB), Sunburst(STF);')
			send_command('input /echo RED Proc: Light - Seraph Blade(SWD), Tachi: Koki(GKT), Seraph Strike(CLB), Sunburst(STF);')
		end
		last_message = true

		if string.find(org, "Tachi: Jinpu")  then
			send_command('gs c Weapons ProcDagger2;')
	    elseif string.find(org, "Cyclone")  then
			send_command('gs c Weapons ProcGreatKatana;')
	    elseif string.find(org, "Shadow of Death")  then
				send_command('gs c Weapons ProcDagger;gs c update;')
	    elseif string.find(org, "Energy Drain")  then
				send_command('gs c Weapons ProcKatana;')
	    elseif string.find(org, "Blade: Ei")  then
			send_command('gs c Weapons ProcScythe;')
	    elseif string.find(org, "Seraph Blade")  then
				send_command('gs c Weapons ProcClub;gs c update;')
	    elseif string.find(org, "Seraph Strike")  then
				send_command('gs c Weapons ProcStaff2;')
	    elseif string.find(org, "Sunburst")  then
				send_command('gs c Weapons ProcGreatKatana2;')
	    elseif string.find(org, "Tachi: Koki")  then
				send_command('gs c Weapons ProcSword2;')
		end
		if not midaction() then
			job_update()
		end
	end





	-- handle_equipping_gear(player.status)  
	--It is from the highest secrets.
	--Sortie 	--Vagary
	if string.find(org, "Flaming Kick") or string.find(org, "Demonfire") then
		windower.send_command('gs c set ElementalMode water')
	end
	if string.find(org, "Flashflood") or string.find(org, "Torrential Pain") then
		windower.send_command('gs c set ElementalMode Lightning')
	end
	if string.find(org, "Icy Grasp") or string.find(org, "Frozen Blood") then
		windower.send_command('gs c set ElementalMode Fire')
	end
	if string.find(org, "Eroding Flesh") or string.find(org, "Ensepulcher") then
		windower.send_command('gs c set ElementalMode Wind')
	end
	if string.find(org, "Fulminous Smash") or string.find(org, "Ceaseless Surge") then
		windower.send_command('gs c set ElementalMode Earth')
	end
	if string.find(org, "Blast of Reticence") then
		windower.send_command('gs c set ElementalMode Ice')
	end

	
	if string.find(org, "Aita readies Vivisection") then
		state.MagicalDefenseMode:set('MDT')
		windower.send_command('input /p Aita uses Vivisection <call14>!')  -- code add by (Aragan@Asura)
	end
	if string.find(org, "Degei readies Vivisection") then
		state.MagicalDefenseMode:set('MDT')

		windower.send_command('input /p Degei uses Vivisection <call14>!')  -- code add by (Aragan@Asura)
	end
	if string.find(org, "Triboulex readies Setting the Stage") then
		state.MagicalDefenseMode:set('MDT')

		windower.send_command('input /p Triboulex uses Setting the Stage <call14>!')  -- code add by (Aragan@Asura)
	end
	if string.find(org, "Skomora readies Setting the Stage") then
		state.MagicalDefenseMode:set('MDT')

		windower.send_command('input /p Skomora uses Setting the Stage <call14>!')  -- code add by (Aragan@Asura)
	end
end)


--  --RED Proc mode reset  with Engage و Disengage
windower.register_event('status change', function(new, old)
    if new == 0 or new == 1 then  
        -- 0 = Idle (disengaged), 1 = Engaged
        last_message = nil
    end
end)



]]


--[[ 
disable_priority = T{
    "User",
    "Showset",
    "Crafting",
    "Doom",
    "Sleep",
    "UseItem",
    "OneHour",
    "Shield",
    "Weapons",
    "ShowTP",
    "Ability",
    "TreasureHunter",
}:reverse()
]]

