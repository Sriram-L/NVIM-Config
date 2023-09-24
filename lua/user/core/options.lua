-- Set function name for vim.cmd
local Cmd = vim.cmd
local Opt = vim.opt
local G = vim.g

--Set local option name for options

local options = {
	backup = false,				-- no need of backup
	clipboard = "unnamedplus", 		-- allows nvim to use the system clipboard
	cmdheight = 2,				-- adjust space for nvim commandline to display messages
	completeopt = { "menuone" , "noselect" },-- Autocomplete settings to work with cmp
	conceallevel = 0,			-- '' visibility in markdown files
	fileencoding = "utf-8",			-- Encoding
	hlsearch = true,			-- highlight all searches on previous search pattern
	ignorecase = true,			-- ignore case in search pattern
	showtabline = 0,			-- I dont like tabs, hence
	smartcase = true,
	splitbelow = true,			-- New splits appear below
	splitright = true,			-- New splits appear right
	swapfile = false,			-- Hate swaps
	termguicolors = true,
	timeoutlen = 300,			-- Time within which we need to complete a mapped sequence
	undofile = false,			-- Dont want persistent undo
	updatetime = 300,			-- Faster completion
	writebackup = false,			-- Allows editing files when being used in another program
	expandtab = false,			-- Prefer tabs over spaces
	shiftwidth = 4,				-- Default 4 spaces
	tabstop = 4,				-- Insert 4 spaces after tab
	guicursor = '',				-- Prefer block cursor everywhere
	number = true,
	relativenumber = true,
	numberwidth = 2,			--Conserve space
	signcolumn = "yes",			-- To prevent shifting of text
	wrap = false,				-- Display it in single line..fair and simple
	scrolloff = 8,				-- Preserve lines below and above cursor while scrolling
	sidescrolloff = 8,
	guifont = "monospace:h17",
	showmode = false,			-- Dont like the mode name to be displayed in bottom
}

Opt.shortmess:append "c"			-- Avoid excessive messages about errors and warnings

for k,v in pairs(options) do
	Opt[k] = v
end

Cmd "set whichwrap+=<,>,[,],h,l"
Cmd [[set iskeyword+=-]]

G.loaded_netrw = 1				-- Disabling netrw for nvim-tree
G.loaded_netrwPlugin = 1
