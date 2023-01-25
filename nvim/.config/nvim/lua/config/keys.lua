local default = { noremap = true, unique = true, silent = true }
local expr = { noremap = true, unique = true, expr = true, silent = true }
local special = { noremap = true, silent = true }
local unique = { noremap = true, unique = true }

vim.g.mapleader = " "

vim.keymap.set("c", "<C-a>", "<Home>", unique)
vim.keymap.set("c", "<C-b>", "<Left>", unique)
vim.keymap.set("c", "<C-e>", "<End>", unique)
vim.keymap.set("c", "<C-f>", "<Right>", unique)
vim.keymap.set("c", "<C-h>", "<Left>", unique)
vim.keymap.set("c", "<C-j>", "<Down>", unique)
vim.keymap.set("c", "<C-k>", "<Up>", unique)
vim.keymap.set("c", "<C-l>", "<Right>", unique)
vim.keymap.set("c", "<C-n>", "<Down>", unique)
vim.keymap.set("c", "<C-p>", "<Up>", unique)
vim.keymap.set("c", "<M-b>", "<S-Left>", unique)
vim.keymap.set("c", "<M-f>", "<S-Right>", unique)
vim.keymap.set("c", "<M-n>", "<Down>", unique)
vim.keymap.set("c", "<M-p>", "<Up>", unique)

vim.keymap.set("i", "<C-h>", "<Left>", default)
vim.keymap.set("i", "<C-j>", "<Down>", default)
vim.keymap.set("i", "<C-k>", "<Up>", default)
vim.keymap.set("i", "<C-l>", "<Right>", default)
vim.keymap.set("i", "<space>", "<space><c-g>u", default)

vim.keymap.set(
  "t",
  "<Esc>",
  [[Find_proc_in_tree(b:terminal_job_pid, ["nvim", "fzf"], 0) ? "<Esc>" : "<c-\><c-n>"]],
  expr
)
vim.keymap.set("t", "<M-r>", [['<C-\><C-N>"'.nr2char(getchar()).'pi']], default)

vim.keymap.set("n", "<C-h>", "<Left>", default)
vim.keymap.set("n", "<C-j>", "<Down>", default)
vim.keymap.set("n", "<C-k>", "<Up>", default)
vim.keymap.set("n", "<C-l>", "<Right>", special)
vim.keymap.set("v", "<C-h>", "<Left>", default)
vim.keymap.set("v", "<C-j>", "<Down>", default)
vim.keymap.set("v", "<C-k>", "<Up>", default)
vim.keymap.set("v", "<C-l>", "<Right>", default)

vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<CR>", unique)
vim.keymap.set("n", "<M-j>", "<cmd>resize -2<CR>", unique)
vim.keymap.set("n", "<M-k>", "<cmd>resize +2<CR>", unique)
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<CR>", unique)

vim.keymap.set("i", "<M-j>", "<Esc><cmd>m .+1<CR>==gi", unique)
vim.keymap.set("i", "<M-k>", "<Esc><cmd>m .-2<CR>==gi", unique)
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", default)
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", default)

vim.keymap.set("n", "[b", "<cmd>bp<CR>", unique)
vim.keymap.set("n", "[c", "<cmd>cp<CR>", unique)
vim.keymap.set("n", "[l", "<cmd>lp<CR>", unique)
vim.keymap.set("n", "[t", "<cmd>tabp<CR>", unique)
vim.keymap.set("n", "]b", "<cmd>bn<CR>", unique)
vim.keymap.set("n", "]c", "<cmd>cn<CR>", unique)
vim.keymap.set("n", "]l", "<cmd>ln<CR>", unique)
vim.keymap.set("n", "]t", "<cmd>tabn<CR>", unique)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", unique)
vim.keymap.set("n", "j", [[v:count == 0 ? "gj" : "j"]], expr)
vim.keymap.set("n", "k", [[v:count == 0 ? "gk" : "k"]], expr)
vim.keymap.set("v", "<", "<gv", default)
vim.keymap.set("v", ">", ">gv", default)
vim.keymap.set("v", "j", "gj", default)
vim.keymap.set("v", "k", "gk", default)
vim.keymap.set("v", "p", [["_dP]], default)

vim.keymap.set("n", "<leader>0", "<cmd>tabl<cr>", unique)
vim.keymap.set("n", "<leader>1", "1gt", default)
vim.keymap.set("n", "<leader>2", "2gt", default)
vim.keymap.set("n", "<leader>3", "3gt", default)
vim.keymap.set("n", "<leader>4", "4gt", default)
vim.keymap.set("n", "<leader>5", "5gt", default)
vim.keymap.set("n", "<leader>6", "6gt", default)
vim.keymap.set("n", "<leader>7", "7gt", default)
vim.keymap.set("n", "<leader>8", "8gt", default)
vim.keymap.set("n", "<leader>9", "9gt", default)

vim.keymap.set("n", "<leader>H", "<C-w>H", default)
vim.keymap.set("n", "<leader>J", "<C-w>J", default)
vim.keymap.set("n", "<leader>K", "<C-w>K", default)
vim.keymap.set("n", "<leader>L", "<C-w>L", default)
vim.keymap.set("n", "<leader>h", "<C-w>h", default)
vim.keymap.set("n", "<leader>j", "<C-w>j", default)
vim.keymap.set("n", "<leader>k", "<C-w>k", default)
vim.keymap.set("n", "<leader>l", "<C-w>l", default)

vim.keymap.set("", "<leader>X", "<cmd>!open %<cr><cr>", unique)
vim.keymap.set("n", "<Leader>n", "<cmd>bn<CR>", unique)
vim.keymap.set("n", "<Leader>p", "<cmd>bp<CR>", unique)
vim.keymap.set("n", "<leader><Tab>", "<cmd>ClangdSwitchSourceHeader<CR>", unique)
vim.keymap.set("n", "<leader><leader>", "<C-^>", default)
vim.keymap.set("n", "<leader>A", "<cmd>DiffviewOpen<CR>", unique)
vim.keymap.set("n", "<leader>B", "<cmd>lua require('spectre').open()<CR>", unique)
vim.keymap.set("n", "<leader>D", "<cmd>DiffviewRefresh<CR>", unique)
vim.keymap.set("n", "<leader>F", "<cmd>NvimTreeRefresh<CR>", unique)
vim.keymap.set("n", "<leader>I", "<cmd>buffers<CR>:buffer<Space>", unique)
vim.keymap.set("n", "<leader>O", ":h <C-R>=expand('<cword>')<CR><CR>", unique)
vim.keymap.set("n", "<leader>S", "<cmd>Neogit<CR>", unique)
vim.keymap.set("n", "<leader>T", "<cmd>Vterm<CR>", unique)
vim.keymap.set("n", "<leader>V", "<cmd>set paste!<CR>", unique)
vim.keymap.set("n", "<leader>a", "<cmd>Telescope live_grep<CR>", unique)
vim.keymap.set("n", "<leader>b", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", unique)
vim.keymap.set("n", "<leader>d", "<cmd>Telescope grep_string<CR>", unique)
vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeToggle<CR>", unique)
vim.keymap.set("n", "<leader>i", "<cmd>Telescope buffers<CR>", unique)
vim.keymap.set("n", "<leader>m", "<cmd>setlocal spell! spelllang=en_us<CR>", unique)
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", unique)
vim.keymap.set("n", "<leader>s", "<cmd>Telescope find_files hidden=true<CR>", unique)
vim.keymap.set("n", "<leader>t", "<cmd>Term<CR>", unique)
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", unique)
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", unique)
vim.keymap.set("n", "<leader>x", "<cmd>x<CR>", unique)
vim.keymap.set("n", "<leader>z", "za", default)
vim.keymap.set("v", "<leader>b", "<cmd>lua require('spectre').open_visual()<CR>", unique)

vim.keymap.set("n", "<F1>", ":lua require'dap'.continue()<CR>", default)
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_back()<CR>", default)
vim.keymap.set("n", "<F3>", ":lua require'dap'.step_into()<CR>", default)
vim.keymap.set("n", "<F4>", ":lua require'dap'.step_out()<CR>", default)
vim.keymap.set("n", "<F5>", ":lua require'dap'.step_over()<CR>", default)
vim.keymap.set("n", "<F6>", ":lua require'dap'.repl.open()<CR>", default)
vim.keymap.set("n", "<F7>", ":lua require'dap'.toggle_breakpoint()<CR>", default)
vim.keymap.set("n", "<F8>", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", default)
vim.keymap.set("n", "<F9>", ":lua require'jdtls'.test_class()<CR>", default)
vim.keymap.set("n", "<F10>", ":lua require'jdtls'.test_nearest_method()<CR>", default)

vim.keymap.set("n", "<leader>E", "vip:sort iu<CR>", default)
vim.keymap.set("n", "<leader>e", "vip:sort u<CR>", default)
vim.keymap.set("v", "<leader>E", ":sort iu<CR>", default)
vim.keymap.set("v", "<leader>e", ":sort u<CR>", default)

vim.keymap.set("n", "<leader>'", "<cmd>vsp<CR>", unique)
vim.keymap.set("n", "<leader>-", "<cmd>sp<CR>", unique)
vim.keymap.set("n", "<leader>=", "<cmd>sp<CR>", unique)
vim.keymap.set("n", "<leader>\\", "<cmd>vsp<CR>", unique)

vim.keymap.set("n", "<leader>C", [[gg"+yG]], default)
vim.keymap.set("n", "<leader>c", [["+y]], default)
vim.keymap.set("n", "<leader>v", [["+p]], default)
vim.keymap.set("v", "<leader>c", [["+y]], default)
vim.keymap.set("v", "<leader>p", "p", default)
vim.keymap.set("v", "<leader>v", [["+p]], default)

vim.cmd([[
  function! Find_proc_in_tree(rootpid, names, accum) abort
    if a:accum > 9 || !exists("*nvim_get_proc")
      return v:false
    endif
    let p = nvim_get_proc(a:rootpid)
    if !empty(p) && index(a:names, p.name) >= 0
      return v:true
    endif
    for c in nvim_get_proc_children(a:rootpid)[:9]
      if s:find_proc_in_tree(c, a:names, 1 + a:accum)
        return v:true
      endif
    endfor
    return v:false
  endfunction

  augroup highlightYank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank {higroup="Visual", timeout=150, on_macro=true}
  augroup end

  augroup TrimWhiteSpace
    au!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup END

  augroup terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
  augroup end

  command! -nargs=* Term split | terminal <args>
  command! -nargs=* Vterm vsplit | terminal <args>
]])