local status_ok, actions = pcall(require, "telescope.actions")
if not status_ok then
  return
end

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close,
      },
    },
    file_ignore_patterns = {
      "%.a",
      "%.class",
      "%.mkv",
      "%.mp4",
      "%.o",
      "%.out",
      "%.pdf",
      "%.zip",
      ".DS_Store",
      ".cache",
      ".clangd",
      ".git",
      ".venv",
      "build",
      "node_modules",
      "package-lock.json",
      "vendor",
      "yarn.lock",
    },
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
    },
  },
})

require("telescope").load_extension("fzy_native")