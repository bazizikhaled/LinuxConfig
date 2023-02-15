Config {
       font = "xft:Zekton:size=19:bold:antialias=true"
       , additionalFonts = [ "xft:FontAwesome:size=12" ]
       , allDesktops = True
       , bgColor = "#282c34"
       , fgColor = "#bbc2cf"
       , position = TopW L 110
       , commands = [
                     Run Date "%a %b %_d %I:%M" "date" 300

		    , Run Uptime ["-p", "uptime: <days>d <hours>h"] 50
                    -- battery monitor
                    , Run BatteryP       [ "BAT0" ]
                                         [ "--template" , " <acstatus>"
                                         , "--Low"      , "10"        -- units: %
                                         , "--High"     , "80"        -- units: %
                                         , "--low"      , "#fb4934" -- #ff5555
                                         , "--normal"   , "#bbc2cf"
                                         , "--high"     , "#98be65"

                                         , "--" -- battery specific options
                                                   -- discharging status
                                                   , "-o"   , "<left>% (<timeleft>)"
                                                   -- AC "on" status
                                                   , "-O"   , "<left>% (<fc=#98be65>Charging</fc>)" -- 50fa7b
                                                   -- charged status
                                                   , "-i"   , "<fc=#98be65>Charged</fc>"
                                         ] 50
			, Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{  %uptime% |  %battery% | %date%  |"   -- #69DFFA

       }

