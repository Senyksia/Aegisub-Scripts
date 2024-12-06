# Senyksia's Automation Scripts
A monorepo of simple [Aegisub](https://github.com/arch1t3cht/Aegisub) automation scripts. These do not use [DependencyControl](https://github.com/TypesettingTools/DependencyControl).
## Filters
### ExportLRC
Adds an option to export to the [LRC format](https://en.wikipedia.org/wiki/LRC_(file_format)) (`.lrc`), for use in embedded or sidecar synchronised lyrics.
> [!important]
> You **MUST** select `.txt` when saving the file, to ensure correct formatting.

### ShiftOnExport
A very simple script to shift timings during export. Useful when making temporary shifts, or when exporting for a player which introduces some constant offset.
