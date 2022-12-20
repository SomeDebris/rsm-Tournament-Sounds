
-- Press Control-r in game to reload this file (when kEnableDevBindings = true)
-- all paths are relative to "data/audio/"


-- default event settings
{
   -- samples  = { { file1, file2 }, { file3, file4} }
   -- pick between file1 and file2, and between file3 and file4
   -- play both selected samples when event is triggered
   
   volume         = 1,          -- volume to play samples at (0 is silent)
   pitch          = 1,          -- pitch samples up and down
   pitchRandomize = 0.0,        -- increase or decrease pitch randomly by up to this amount

   rolloff        = 0.8,        -- 3d: how fast the sound attenuates
   minDist        = 100,        -- 3d: point it starts attenuating
   maxDist        = 9999999999, -- 3d: stops attenuating
   
   priority       = 0,          -- lower priorities will skip playback if there are too many sounds
   
   flags          = 0           -- special flags to control playback, connected with "|"
   --  stream:      load files while playing (set this for music tracks). No Polyphony
   --  music:       only play one music track at a time (with crossfading)
   --  loop:        loop event when finished playing
   --  round_robin: cycle through samples instead of picking randomly
   --  crosssync:   keep music offset when changing tracks
   --  cluster:     group event together with spacially nearby events and only play once
   --  cull_vol:    don't play event if volume <kSoundVolumeCull
   --  cull3d_vol:  don't start playing if calculated 3d vol is < kSound3DVolumeCull
}

-- settings for each event
-- event names ('e.g' ButtonPress) are hard coded in the game binary. 

{
   -- when a button is presesed
   -- ButtonPress = {
   --    samples = { "ui/interface_00.ogg" },
   --    pitchRandomize = 0.0,
   --    volume = 2,
   -- },
   
   -- -- when various errors occur 
   -- ButtonError = {
   --    samples = { "world/_concepts/kerplunk_BAD.ogg" },
   -- },

   -- -- when a tutorial objective is achieved
   -- RadarPing = {
   --    samples = { "ui/loRadar.ogg" }
   -- },

   -- -- when a button is hovered
   -- ButtonHover = {
   --    samples = { "ui/UI Button Hover.ogg" },
   --    pitchRandomize = 0.0,
   --    volume = 0.2,
   -- },

   -- -- when a new target is targetted
   -- PlayerTarget = {
   --    samples = { "ui/UI Target.ogg" },
   --    volume = 0.8,
   --    pitch  = 0.8,
   --    priority = 2,
   -- },

   -- -- when a station is activated
   -- Activate = {
   --    samples = { "world/ship/pickUp.ogg" },
   --    volume  = 0.15,
   --    priority = 2,
   -- },

   -- when an agent is destroyed or a new faction is unlocked
   -- LevelUp = {
   --    samples = { "conditions/VICTORY.ogg" },
   --    priority = 2,
   --    volume = 0.5,
   -- },

   -- when a new ship is budded off
   -- Spawn = {
   --    samples = {"world/_concepts/kerplunk.ogg" },
   -- },

   -- when a large R packed is picked up
   -- PickupResourceLarge = {
   --    -- samples = { "world/Resource/Hiresource_00.ogg",
   --    --              "world/Resource/Hiresource_01.ogg",
   --    --              "world/Resource/Hiresource_02.ogg" },
   --    samples = { "world/Resource/resource_00.ogg",
   --                 "world/Resource/resource_01.ogg",
   --                 "world/Resource/resource_02.ogg" },
   --    flags = round_robin,
   --    volume = 0.3
   -- },

   -- when a small R packed is picked upp
   -- PickupResourceSmall = {
   --    samples = { "world/Resource/Hiresource_00.ogg",
   --                 "world/Resource/Hiresource_01.ogg",
   --                 "world/Resource/Hiresource_02.ogg" },
   --    samples = { "world/Resource/SmallResource_00.ogg",
   --                 "world/Resource/SmallResource_01.ogg",
   --                 "world/Resource/SmallResource_02.ogg",
   --                 "world/Resource/SmallResource_03.ogg"
   --                 "world/Resource/SmallResource_04.ogg"
   --                 "world/Resource/SmallResource_05.ogg"
   --                 "world/Resource/SmallResource_06.ogg"
   --                 "world/Resource/SmallResource_07.ogg"
   --                 "world/Resource/SmallResource_08.ogg"
   --                 "world/Resource/SmallResource_09.ogg" },
   --    flags = round_robin,
   --    volume = 0.4
   -- },

   -- sfx when player is killed
   -- Death = {
   --    samples = { "conditions/DEATH.ogg" },
   --    priority = 2,
   --    volume = 0.45,
   -- },

   -- -- music played at main menu
   -- MainMenuMusic = {
   --    samples = { "music/Track3/Track3_Build.ogg" },
   --    flags   = stream|music|loop,
   --    volume  = 0.5,
   -- },

   -- -- general game music playlist
   -- GameMusic = {
   --    samples = {
   --          "music/mastered/agents.ogg",
   --          "music/mastered/coffee.ogg",
   --          "music/mastered/coffeeredux.ogg",
   --          "music/mastered/damagedstation.ogg",
   --          "music/mastered/explore.ogg",
   --          "music/mastered/gammavoid.ogg",
   --          "music/mastered/imminentwormhole.ogg",
   --          "music/mastered/matrixmassacre.ogg",
   --          "music/mastered/newsectors.ogg",
   --          "music/mastered/parallaxuniverse.ogg",
   --          "music/mastered/safejourney.ogg",
   --          "music/mastered/searchingforresources.ogg",
   --          "music/mastered/spaceplants.ogg",
   --          "music/mastered/spectralwarfare.ogg",
   --          "music/mastered/thecommandline.ogg",
   --          "music/mastered/vectorcarnage.ogg"
   --    },
   --    delay   = {5, 12},
   --    flags   = stream|music,
   --    volume  = 0.5,
   -- },

   -- music played near wormholes (see kWormholeMusicFade)
   -- WormholeMusic = {
   --    samples = { "world/_concepts/AGENTLOOP.ogg" },
   --    flags = stream|music|loop,
   --    delay   = 5,
   --    volume = 0.4,
   -- },

   -- code selects layer based on thruster size
   -- Thruster = {
   --    samples = { "world/thrusters/thruster_small.ogg",
   --               "world/thrusters/thruster_medium.ogg",
   --               "world/thrusters/thruster_big.ogg",
   --               "world/thrusters/thruster_huge.ogg" },
   --    flags   = loop,
   --    volume  = 0.4,
   --    -- volume  = 0.4,
   -- },

   -- -- thrustSFX=1 thruster sound
   -- ThrusterMagic = {
   --    samples = { "world/thrusters/thruster_small_magic.ogg",
   --                "world/thrusters/thruster_big_magic.ogg" },
   --    flags   = loop,
   --    volume  = 0.3,
   -- },

   -- fired a medium cannon
   -- code modulates pitch based on cannon size
   Cannon = {
      samples = { "world/sg/sg_00.ogg",
                  -- "world/sg/sg_01.ogg",
                  "world/sg/sg_02.ogg",
                  "world/sg/sg_03.ogg",
                  "world/sg/sg_04.ogg",
                  "world/sg/sg_05.ogg",
                  "world/sg/sg_06.ogg",
                  "world/sg/sg_07.ogg",
                  "world/sg/sg_08.ogg",
                  -- "world/sg/sg_09.ogg",
                  "world/sg/sg_10.ogg",
                  -- "world/sg/sg_11.ogg",
                  "world/sg/sg_12.ogg",
                  "world/sg/sg_13.ogg",
                  "world/sg/sg_14.ogg",
                  "world/sg/sg_15.ogg" }
      flags = 0,
      priority = 0,
      pitch = 1.0,
      minDist = 120,
      volume = 0.75,
      pitchRandomize = 0.05,
   },

   -- fired a small cannon
   CannonSmall = {
      samples = { "world/smallGun2/smallGun2_1_1.ogg",
                  "world/smallGun2/smallGun2_2_1.ogg",
                  "world/smallGun2/smallGun2_3_1.ogg",
                  "world/smallGun2/smallGun2_4_1.ogg" },
      flags = cluster|cull_vol,
      priority = 0,
      pitch = 1,
      volume = 0.7,
      rolloff = 0.6
      minDist = 70,
      pitchRandomize = 0.05,
   },

   -- fired a large cannon
   CannonLarge = {
      samples = { "world/gun_tech_damp/gun_tech_damp_00.ogg",
                   "world/gun_tech_damp/gun_tech_damp_01.ogg"
                   "world/gun_tech_damp/gun_tech_damp_02.ogg"
                   "world/gun_tech_damp/gun_tech_damp_03.ogg"
                   "world/gun_tech_damp/gun_tech_damp_04.ogg"
                   "world/gun_tech_damp/gun_tech_damp_05.ogg" },
      flags = cluster|cull_vol,
      priority = 2
      pitch = 1,
      volume = 0.55,
      minDist = 200,
      pitchRandomize = 0.09,
   },

   -- launched a missile/drone/rocket
   Launcher = {
      samples = { "world/missile_new/missile_new_00.ogg", 
		  "world/missile_new/missile_new_01.ogg",
		  "world/missile_new/missile_new_02.ogg",
		  "world/missile_new/missile_new_03.ogg",
		  "world/missile_new/missile_new_04.ogg",
		  "world/missile_new/missile_new_05.ogg",
                  "world/missile_new/missile_new_06.ogg",
		  "world/missile_new/missile_new_07.ogg",
		  "world/missile_new/missile_new_08.ogg",
		  "world/missile_new/missile_new_09.ogg",
		  "world/missile_new/missile_new_10.ogg" },
      flags = cluster|cull_vol,
      priority = 1
      volume = 0.5,
      rolloff=0.9
      minDist=500,
      pitchRandomize = 0.05,
   },

   -- general block destroyed explosion
   BlockDestroyed = {
      samples = { "world/explosions/explosion_00.ogg",
                   "world/explosions/explosion_01.ogg",
                   "world/explosions/explosion_02.ogg",
                   "world/explosions/explosion_03.ogg",
                   "world/explosions/explosion_04.ogg",
                   "world/explosions/explosion_05.ogg" },
      flags = cluster|cull_vol,
      priority = 3,
      pitchRandomize = 0.2,
      volume = 0.5,
      rolloff = 0.95
      minDist = 130,
   },

   -- block with P < 2 destroyed
   LowBlockDestroyed = {
      samples = { "world/LowExpl/LowExpl_00.ogg" },
      flags = cluster|cull_vol,
      priority = 2,
      pitchRandomize = 0.2,
      volume = 0.3,
   },

   -- command block destroyed
   ExpensiveBlockDestroyed = {
      samples = { "world/explosions/lowExplosion_00.ogg",
                   "world/explosions/lowExplosion_01.ogg",
                   "world/explosions/lowExplosion_02.ogg",
                   "world/explosions/lowExplosion_03.ogg",
                   "world/explosions/lowExplosion_04.ogg",
                   "world/explosions/lowExplosion_05.ogg" },
      flags = cluster,
      rolloff = 0.95
      priority = 4,
      minDist = 400
      pitchRandomize = 0.2,
      volume = 0.7,
   },

   -- player destroyed a ship and got C
   GetXpExplosion = {
      samples = { "world/explosions/lowExplosion_00.ogg",
                   "world/explosions/lowExplosion_01.ogg",
                   "world/explosions/lowExplosion_02.ogg",
                   "world/explosions/lowExplosion_03.ogg",
                   "world/explosions/lowExplosion_04.ogg",
                   "world/explosions/lowExplosion_05.ogg" },
      -- samples = { "world/explosions/death2.ogg" },
      -- pitchRandomize = 0.0,
      --rolloff = 0.5,
      minDist = 1000,
      -- pitch = 0.5,
      volume  = 1.2,
      priority = 10,
      rolloff = 0.98,
      flags = 0,
   },

   -- missile explosions - do damage
   Explosion = {
      samples = { "world/explosions/explosion_00.ogg",
                   "world/explosions/explosion_01.ogg",
                   "world/explosions/explosion_02.ogg",
                   "world/explosions/explosion_03.ogg",
                   "world/explosions/explosion_04.ogg",
                   "world/explosions/explosion_05.ogg" },
      flags = cluster|cull_vol,
      pitchRandomize = 0.5,
      priority=-1,
      volume = 0.6,
      rolloff = 0.4
      minDist = 10,
   },

   -- laser weapons
   Laser = {
      samples = { "world/laser/ll3_v2.ogg" }
      flags = cluster|cull_volume,
      priority = 2
      rolloff=0.4
      volume = 1.7,
   },

   -- agents play these when in range
   -- Jabber = {
   --    samples = { "world/_concepts/jabbers/jabberHi_00.ogg"
   --                "world/_concepts/jabbers/jabberHi_01.ogg"
   --                "world/_concepts/jabbers/jabberHi_02.ogg"
   --                "world/_concepts/jabbers/jabberHi_03.ogg"
   --                "world/_concepts/jabbers/jabberHi_04.ogg"
   --                "world/_concepts/jabbers/jabberHi_05.ogg"
   --                "world/_concepts/jabbers/jabberHi_06.ogg"
   --                "world/_concepts/jabbers/jabberMid_00.ogg"
   --                "world/_concepts/jabbers/jabberMid_01.ogg"
   --                "world/_concepts/jabbers/jabberMid_02.ogg"
   --                "world/_concepts/jabbers/jabberMid_03.ogg"
   --                "world/_concepts/jabbers/jabberMid_04.ogg"
   --                "world/_concepts/jabbers/jabberMid_05.ogg"
   --                "world/_concepts/jabbers/jabberMid_06.ogg"
   --                "world/_concepts/jabbers/jabberMid_07.ogg"
   --                "world/_concepts/jabbers/jabberMid_08.ogg"
   --                "world/_concepts/jabbers/jabberMid_09.ogg"
   --                "world/_concepts/jabbers/jabberSmall_00.ogg"
   --                "world/_concepts/jabbers/jabberSmall_01.ogg"
   --                "world/_concepts/jabbers/jabberSmall_02.ogg" }
   --    delay = { 1, 5 }
   --    rolloff = 0.2,
   --    minDist = 1000,
   -- },
}

