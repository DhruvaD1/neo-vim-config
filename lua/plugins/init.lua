return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require "configs.conform",
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim", "lua", "vimdoc",
				"html", "css", "scss",
				"javascript", "typescript", "tsx",
				"json", "yaml", "toml",
				"markdown", "markdown_inline",
				"bash", "python", "c", "cpp",
				"rust", "go", "java",
				"dockerfile", "gitignore",
			},
		},
	},

	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "BufReadPost",
		config = function()
			local rainbow = require "rainbow-delimiters"
			vim.g.rainbow_delimiters = {
				strategy = { [""] = rainbow.strategy["global"] },
				query = { [""] = "rainbow-delimiters" },
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterOrange",
					"RainbowDelimiterYellow",
					"RainbowDelimiterRed",
					"RainbowDelimiterOrange",
					"RainbowDelimiterYellow",
					"RainbowDelimiterRed",
				},
			}
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufReadPost",
		main = "ibl",
		opts = {
			indent = { char = "│", highlight = { "IblIndent" } },
			scope = {
				enabled = true,
				show_start = true,
				show_end = false,
				highlight = { "RainbowDelimiterRed" },
			},
		},
	},

	{
		"folke/todo-comments.nvim",
		event = "BufReadPost",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	{
		"karb94/neoscroll.nvim",
		event = "BufReadPost",
		opts = {
			mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "zt", "zz", "zb" },
			hide_cursor = true,
			easing = "quadratic",
		},
	},

	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		opts = {
			stages = "fade_in_slide_out",
			timeout = 2000,
			render = "wrapped-compact",
			top_down = false,
			background_colour = "#1a0a0a",
		},
		config = function(_, opts)
			local notify = require "notify"
			notify.setup(opts)
			vim.notify = notify
		end,
	},

	{
		"NvChad/nvim-colorizer.lua",
		event = "BufReadPost",
		opts = {
			user_default_options = {
				tailwind = true,
				css = true,
				mode = "virtualtext",
				virtualtext = "■",
			},
		},
	},

	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPost",
		opts = {
			current_line_blame = true,
			current_line_blame_opts = { delay = 400 },
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "" },
				topdelete = { text = "" },
				changedelete = { text = "▎" },
			},
		},
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = { preset = "helix" },
	},

	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = function()
			local animate = require "mini.animate"
			return {
				cursor = { timing = animate.gen_timing.linear { duration = 80, unit = "total" } },
				scroll = { enable = false },
				resize = { timing = animate.gen_timing.linear { duration = 80, unit = "total" } },
				open = { enable = false },
				close = { enable = false },
			}
		end,
	},

	{
		"kylechui/nvim-surround",
		event = "BufReadPost",
		opts = {},
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = { check_ts = true },
	},

	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			labels = "asdfghjklqwertyuiopzxcvbnm",
			modes = {
				char = { enabled = true },
				search = { enabled = false },
			},
		},
		keys = {
			{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash jump" },
			{ "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash treesitter" },
		},
	},

	{
		"nvim-pack/nvim-spectre",
		cmd = "Spectre",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		opts = {
			window = {
				width = 90,
				options = {
					number = true,
					relativenumber = true,
				},
			},
		},
	},

	{
		"folke/twilight.nvim",
		cmd = "Twilight",
		opts = { dimming = { alpha = 0.3 } },
	},

	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = {},
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				lsp_doc_border = true,
			},
			cmdline = {
				view = "cmdline_popup",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufReadPost",
		opts = {
			max_lines = 3,
			trim_scope = "outer",
		},
	},

	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		opts = {},
	},

	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		opts = {
			size = 15,
			open_mapping = [[<C-\>]],
			direction = "horizontal",
			shade_terminals = true,
			shading_factor = -30,
			float_opts = {
				border = "curved",
			},
		},
	},

	{
		"j-hui/fidget.nvim",
		event = "LspAttach",
		opts = {
			notification = {
				window = {
					winblend = 0,
				},
			},
		},
	},

	{
		"stevearc/oil.nvim",
		cmd = "Oil",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			view_options = {
				show_hidden = true,
			},
			float = {
				padding = 4,
				max_width = 80,
				max_height = 30,
				border = "rounded",
			},
		},
	},

	{
		"folke/drop.nvim",
		event = "VimEnter",
		opts = {
			theme = "leaves",
			max = 40,
			interval = 150,
			screensaver = 1000 * 60 * 5,
		},
	},

	{
		"utilyre/barbecue.nvim",
		event = "BufReadPost",
		dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	{
		"RRethy/vim-illuminate",
		event = "BufReadPost",
		config = function()
			require("illuminate").configure {
				delay = 200,
				under_cursor = true,
			}
		end,
	},

	{
		"echasnovski/mini.hipatterns",
		event = "BufReadPost",
		config = function()
			local hi = require "mini.hipatterns"
			hi.setup {
				highlighters = {
					fixme = { pattern = "FIXME", group = "MiniHipatternsFixme" },
					hack = { pattern = "HACK", group = "MiniHipatternsHack" },
					note = { pattern = "NOTE", group = "MiniHipatternsNote" },
					hex_color = hi.gen_highlighter.hex_color(),
				},
			}
		end,
	},
}
