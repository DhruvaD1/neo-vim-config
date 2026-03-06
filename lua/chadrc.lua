---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "aquarium",
	transparency = true,

	hl_override = {
		Comment = { italic = true, fg = "#6a5a7a" },
		["@comment"] = { italic = true, fg = "#6a5a7a" },
		CursorLine = { bg = "#2a1520" },
		CursorLineNr = { fg = "#ff4455", bold = true },
		LineNr = { fg = "#553333" },
		Visual = { bg = "#441122" },
		Search = { bg = "#ff4455", fg = "#000000" },
		IncSearch = { bg = "#ff6677", fg = "#000000" },
		DiagnosticError = { fg = "#ff4455" },
		DiagnosticWarn = { fg = "#ff8844" },
		DiagnosticInfo = { fg = "#ff6677" },
		DiagnosticHint = { fg = "#cc4455" },
		FloatBorder = { fg = "#ff4455" },
		NvDashAscii = { fg = "#ff4455", bg = "NONE" },
		NvDashButtons = { fg = "#cc6666", bg = "NONE" },
	},

	hl_add = {
		NvimTreeRootFolder = { fg = "#ff4455", bold = true },
		NvimTreeGitDirty = { fg = "#ff6677" },
		IndentBlanklineContextChar = { fg = "#ff4455" },
	},
}

M.nvdash = {
	load_on_startup = true,
	header = {
		"",
		"",
		"",
		"",
	},
}

M.ui = {
	tabufline = {
		lazyload = false,
	},
	statusline = {
		separator_style = "arrow",
	},
}

return M
