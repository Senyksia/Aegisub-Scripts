-- Config
export script_name        = "Export to .lrc"
export script_description = "Export the current file to .lrc format, for embedded synchronised lyrics. You MUST set the format to .txt when exporting!"
export script_author      = "senyksia"
export script_version     = "1.0.0"

--- Convert time in milliseconds to an LRC timestamp.
-- @tparam int ms
ms_to_stamp = (ms) ->
    s = ms / 1000
    string.format("[%.2d:%05.2f]", math.floor(s/60), s%60)

export_lrc = (subs, config) ->
    for i, line in ipairs subs
        if line.class == "dialogue" and not line.comment and line.text ~= ""
            line.text =  ms_to_stamp(line.start_time) .. line.text
            subs[i] = line

    subs

aegisub.register_filter script_name, script_description, -9999, export_lrc
