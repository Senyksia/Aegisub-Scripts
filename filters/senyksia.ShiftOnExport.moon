-- Config
export script_name = "Shift on Export"
export script_description = "Shift timings by some amount during export."
export script_author = "senyksia"
export script_version = "1.0.0"

get_config_panel = (subs, old_settings) ->
    {
        { class: "label", label: "Amount to shift (ms)", x: 0, y: 0 },
        { class: "intedit", name: "shift_ms", value: old_settings.shift_ms or 0, x: 1, y: 0 },
    }

shift_filter = (subs, settings) ->
    for i, line in ipairs subs
        if line.start_time and line.start_time ~= ""
            line.start_time += settings.shift_ms
            line.end_time += settings.shift_ms
            subs[i] = line


aegisub.register_filter script_name, script_description, 0, shift_filter, get_config_panel
