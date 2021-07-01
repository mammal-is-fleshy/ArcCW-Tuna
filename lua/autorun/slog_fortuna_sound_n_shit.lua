player_manager.AddValidModel( "TUNA_ARMS", 		"models/npc/slog_osi_suck/generic_pm1.mdl" );
list.Set( "PlayerOptionsModel", "TUNA_ARMS", 	"models/npc/slog_osi_suck/generic_pm1.mdl" );
player_manager.AddValidHands( "TUNA_ARMS", "models/weapons/arccw/slog_osi_suck/c_arms.mdl", 0, "00000000" )

player_manager.AddValidModel( "TUNA_ARMS_2", 		"models/npc/slog_osi_suck/generic_pm2.mdl" );
list.Set( "PlayerOptionsModel", "TUNA_ARMS_2", 	"models/npc/slog_osi_suck/generic_pm2.mdl" );
player_manager.AddValidHands( "TUNA_ARMS_2", "models/weapons/arccw/slog_osi_suck/c_arms2.mdl", 0, "00000000" )

local NPC = {	Name = "Generic Bad Guy",
	Class = "npc_combine_s",
	Model = "models/npc/slog_osi_suck/generic_bad_guy.mdl",
	KeyValues = { citizentype = CT_UNIQUE },
	Weapons = { "weapon_ar2", "weapon_shotgun", "weapon_smg1" },			
	Category = "Project ForTuna",
}
list.Set( "NPC", "npc_tuna_hostile", NPC )

local tuna_npc = { "models/npc/slog_osi_suck/generic_bad_guy.mdl" } ---specify a local WITH THE MODELS WE HAVE

hook.Add( "PlayerSpawnedNPC", "RandomBodygroupcitizen2", function(ply,npc) 
		if table.HasValue( tuna_npc, npc:GetModel() ) then npc:SetBodygroup( 1, math.random(0,1) ); 
		end
end)


//Handling

//Pistol
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Foley",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Foley2",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/foley2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Foley3",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/foley3.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Out",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.In1",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/in1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.In2",
	channel = 		CHAN_ITEM6,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/in2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Bolt1",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/bolt1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Piss.Bolt2",
	channel = 		CHAN_ITEM8,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/pistol/bolt2.wav"}
})





//Rifle
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Foley",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Foley2",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/foley2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Foley3",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/foley3.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Foley4",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/foley4.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Out",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.In",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.Bolt",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/bolt.wav"}
})
------------------------------------------------------------------------
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Foley",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Foley2",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2foley2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Foley3",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2foley3.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Foley4",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2foley4.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Out",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.In1",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2in1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.In2",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2in2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.Bolt",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2bolt.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.GLIn1",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2glin1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.GLIn2",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2glin2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.GLBolt",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2glbolt.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif.GL",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/2gl.wav"}
})

sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.Bolt",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3bolt.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.In",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.Out",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.SGBolt1",
	channel = 		CHAN_ITEM5,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3sgbolt1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif2.SGBolt2",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3sgbolt2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.SGOut",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3sgout.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif3.SGIn",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/3sgin.wav"}
})

sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif5.Bolt1",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/5bolt1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif5.Bolt2",
	channel = 		CHAN_ITEM6,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/5bolt2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif5.In",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/5in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rif5.Out",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rifle/5out.wav"}
})



//LMG
sound.Add({
	name = 			"ArcCW_Slog_FTuna_LMG.Open",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/lmg/open.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_LMG.Close",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/lmg/close.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_LMG.Chain",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/lmg/belt.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_LMG.Out",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/lmg/out.wav"}
})


//SNIP
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Snip.Foley",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/snip/foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Snip.Bolt1",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/snip/bolt1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Bolt.In",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/snip/in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Snip.Bolt2",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/snip/bolt2.wav"}
})


//DB14
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Shotgun.Foley1",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/foley1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Shotgun.Foley2",
	channel = 		CHAN_ITEM7,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/foley2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Shotgun.Foley3",
	channel = 		CHAN_ITEM8,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/foley2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Shotgun.Foley4",
	channel = 		CHAN_ITEM9,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/foley4.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_shotgun.Pump1",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {
	"weapons/arccw_slog/fortuna/shotgun/pump1a.wav",
	"weapons/arccw_slog/fortuna/shotgun/pump1b.wav",
	"weapons/arccw_slog/fortuna/shotgun/pump1c.wav",
	}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_shotgun.Pump2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = {
	"weapons/arccw_slog/fortuna/shotgun/pump2a.wav",
	"weapons/arccw_slog/fortuna/shotgun/pump2b.wav",
	"weapons/arccw_slog/fortuna/shotgun/pump2c.wav",
	"weapons/arccw_slog/fortuna/shotgun/pump2d.wav",	
	}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Shotgun.In",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {
	"weapons/arccw_slog/fortuna/shotgun/in1.wav",
	"weapons/arccw_slog/fortuna/shotgun/in2.wav",
	"weapons/arccw_slog/fortuna/shotgun/in3.wav",
	"weapons/arccw_slog/fortuna/shotgun/in4.wav",	
	}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_shotgun.Pump3",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/pump3.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_shotgun.Pump4",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/shotgun/pump4.wav"}
})


// Axe
sound.Add({
	name = 			"ArcCW_Slog_FTuna_AxE.Foley",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {
	"weapons/arccw_slog/fortuna/axe/foley1.wav",	
	"weapons/arccw_slog/fortuna/axe/foley2.wav",	
	"weapons/arccw_slog/fortuna/axe/foley3.wav",	
	"weapons/arccw_slog/fortuna/axe/foley4.wav",	
	"weapons/arccw_slog/fortuna/axe/foley5.wav",	
	"weapons/arccw_slog/fortuna/axe/foley6.wav",	
	}
})

sound.Add({
	name = 			"ArcCW_Slog_FTuna_AxE.Blade",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/axe/blade.wav"}
})


//SVR442
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rev.Open",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rev/open.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rev.In",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rev/in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rev.Out",
	channel = 		CHAN_ITEM2,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rev/out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_Rev.Close",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/rev/close.wav"}
})



//SMG
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.Foley",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.Foley1",
	channel = 		CHAN_ITEM3,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/2foley.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.Bolt1",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/bolt1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.In",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/in.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.Out",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/out.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG.Bolt2",
	channel = 		CHAN_ITEM1,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/bolt2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG2.In1",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/2in1.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG2.In2",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/2in2.wav"}
})
sound.Add({
	name = 			"ArcCW_Slog_FTuna_SMG2.Out",
	channel = 		CHAN_ITEM4,
	volume = 		1.0,
	sound = {"weapons/arccw_slog/fortuna/smg/out.wav"}
})