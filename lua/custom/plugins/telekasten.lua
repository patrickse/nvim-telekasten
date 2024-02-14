-- local home = vim.fn.expand("~/Nextcloud2/logseq/grandcentrix")
local home = vim.fn.expand(os.getenv("TELEKASTEN_HOME") or "~/telekasten")

return {
  {
    'renerocksai/telekasten.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'},
    config = function()
      require('telekasten').setup({
        home = home,
        dailies = home .. '/journals',
        images_subdir = home .. '/assets',
        templates = home .. '/templates',
        template_new_daily = home .. '/templates/daily.md',
        uuid_sep = "_",
        install_syntax = true,
        command_palette_theme = "ivy",
        show_tags_theme = "ivy",
        media_previewer = "telescope-media-files",
        plug_into_calendar = false,
        weeknm = 4,
        calendar_monday = 1,
        subdirs_in_links = false,
      })

      vim.cmd.highlight({"tkLink", "ctermfg=Blue cterm=bold,underline guifg=lightblue gui=bold,underline"})
      vim.cmd.highlight({"tkBrackets", "ctermfg=gray guifg=gray"})

      -- Keybindings
      vim.keymap.set("n", "<leader>zT", "<cmd>Telekasten goto_today<CR>")
      vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
      vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten find find_daily_notes<CR>")
      vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
      vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
      vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")

      -- Open in Typora .. for images
      vim.keymap.set("n", "<leader>pt", "<cmd>!open -a Typora '%'<CR>")

      vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
--    ["<leader>zW"] = { "<cmd>Telekasten goto_thisweek<CR>", "Go to this week"},
--    ["<leader>zw"] = { "<cmd>Telekasten find_weekly_notes<CR>", "Find weekly notes"},
--    ["<leader>zN"] = { "<cmd>Telekasten new_templated_note<CR>", "New templated note"},
--    ["<leader>zy"] = { "<cmd>Telekasten yank_notelink<CR>", "Yank notelink"},
--    ["<leader>zc"] = { "<cmd>Telekasten show_calendar<CR>", "Show calendar"},
--    ["<leader>zC"] = { "<cmd>Telekasten CalendarT<CR>", "Show CalendarT"},
--    ["<leader>zi"] = { "<cmd>Telekasten paste_img_and_link<CR>", "Paste image and link"},
--    ["<leader>zt"] = { "<cmd>Telekasten toggle_todo<CR>", "Toggle Todo"},
--    ["<leader>zb"] = { "<cmd>Telekasten show_backlinks<CR>", "Show Backlinks"},
 --   ["<leader>zF"] = { "<cmd>Telekasten find_friends<CR>", "Find friends"},
--    ["<leader>zI"] = { "<cmd>Telekasten insert_img_link<CR>", "Insert img link"},
--    ["<leader>zp"] = { "<cmd>Telekasten preview_img<CR>", "Preview img"},
--    ["<leader>zm"] = { "<cmd>Telekasten browse_media<CR>", "Browse media"},
--    ["<leader>#"] = { "<cmd>Telekasten show_tags<CR>", "Show tags"},
--    ["<leader>zT"] = { "<cmd>Telekasten goto_today<CR>", "Telekasten Go to today"},
--    ["<leader>["] = { "<cmd>Telekasten insert_link<CR>", "Insert new Link"},


    end
  },
}
