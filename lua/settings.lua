local opt = vim.opt
local g = vim.g

g.nocompatible = true
g.nocp = true
g.nospell = true
g.floaterm_autclose = 2

opt.ai = true
opt.autoindent = true
opt.backspace = '2'
opt.backupdir = os.getenv('HOME') .. '/.config/nvim/.backup/'
opt.cin = true
opt.cindent = true
opt.clipboard =  'unnamedplus'
opt.colorcolumn = '120'
opt.completeopt = 'menu,menuone,noselect'
opt.cursorline = true
opt.directory = os.getenv('HOME') .. '/.config/nvim/.swp/'
opt.encoding = 'utf8'
opt.expandtab = true
opt.fileencodings = 'utf8,cp1251'
opt.fillchars = 'fold:-,diff:·'
opt.foldlevel = 1
opt.foldlevelstart = 3
opt.foldmethod = 'indent'
opt.foldopen = 'block,hor,insert,jump,mark,percent,quickfix,search,tag,undo'
opt.hidden = true
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 2
opt.lazyredraw = true
opt.listchars = "eol:↲,tab:» ,trail:·,extends:<,precedes:>,conceal:┊,nbsp:␣"
opt.mousehide = true
opt.number = true
opt.re = 1
opt.regexpengine = 1
opt.ruler = true
opt.scrolloff = 10
opt.shell= '/bin/zsh'
opt.shiftwidth = 4
opt.showcmd = true
opt.smartcase = true
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = 4
opt.spelllang = 'en,ru'
opt.spellsuggest = 'best,9'
opt.splitbelow = true
opt.splitright = true
opt.synmaxcol = 1500
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 100
opt.ttimeoutlen = 0
opt.ttyfast = true
opt.undodir = os.getenv('HOME') .. '/.config/nvim/.undo/'
opt.updatetime = 100

table.insert(opt.diffopt, 'iwhite') -- Ignore whitespace whilst diffing
table.insert(opt.path, '**')
table.insert(opt.switchbuf, 'usetab')
table.insert(opt.switchbuf, 'newtab')

for k,v in pairs(opt.ssop) do
    -- do not store folds
    if v == 'folds' then
	    table.remove(opt.ssop, k)
    end

    -- do not store global and local values in a session
    if v == 'options' then
	    table.remove(opt.ssop, k)
    end
end
