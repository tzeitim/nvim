-- :help options
-- to see that they do and what they are
--
---- auto tab space only on certain file extensions
-- set noexpandtab --in all but python, etc.

local options = {
    expandtab = true,                           -- change to file-format specific
    number = true,
    relativenumber = true,
    hlsearch = true,
    swapfile = true,				-- creates a swapfile
    undofile = true,				-- enable persistent undo
    splitbelow = true,				-- force all horizontal splits to go below the current window
    splitright = true,				-- force all vertical splits to go to the right the current window
    shiftwidth = 2,				-- the number of spaces used per indentation	
    smartindent = false,
    mouse = "",
    mousefocus = true,
    formatoptions = "tcq",
    cursorline = true,
    wildmode="longest:full",
    -- formatoptions = "jcroql"
    -- formatoptions = "cro"
    --
    -- termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- for some reason the formatoptions set above is ignored so the next line does the job
--vim.cmd "autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o"
