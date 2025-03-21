return {
  "goolord/alpha-nvim",
  event = "VimEnter", -- load plugin after all configuration is set
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {

      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[                                                                                             ]],
      [[    ________  ___       ________  ________  ________  ___      ___ ___  _____ ______         ]],
      [[   |\   __  \|\  \     |\   __  \|\   __  \|\   ____\|\  \    /  /|\  \|\   _ \  _   \       ]],
      [[   \ \  \|\ /\ \  \    \ \  \|\  \ \  \|\  \ \  \___|\ \  \  /  / | \  \ \  \\\__\ \  \      ]],
      [[    \ \   __  \ \  \    \ \  \\\  \ \  \\\  \ \_____  \ \  \/  / / \ \  \ \  \\|__| \  \     ]],
      [[     \ \  \|\  \ \  \____\ \  \\\  \ \  \\\  \|____|\  \ \    / /   \ \  \ \  \    \ \  \    ]],
      [[      \ \_______\ \_______\ \_______\ \_______\____\_\  \ \__/ /     \ \__\ \__\    \ \__\   ]],
      [[       \|_______|\|_______|\|_______|\|_______|\_________\|__|/       \|__|\|__|     \|__|   ]],
      [[                                              \|_________|                                   ]],
      [[                                                                                             ]],
    }

    _Gopts = {
      position = "center",
      hl = "Type",
      -- wrap = "overflow";
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("n", "   New File", "<cmd>ene<CR>"),
      dashboard.button("r", "󰄉   Recent", ":Telescope oldfiles <CR>"),
      dashboard.button("o", "   File explorer", "<CMD>Oil<CR>"),
      dashboard.button("m", "󱌣   Mason", "<cmd>Mason<CR>"),
      dashboard.button("l", "󰒲   Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("u", "󰂖   Update plugins", " <cmd>lua require('lazy').sync()<CR>"),
      dashboard.button("q", "   Quit Bloosvim", "<cmd>qa<CR>"),
    }
    --dashboard.section.footer.val = footer()

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local count = (math.floor(stats.startuptime * 100) / 100)
        dashboard.section.footer.val = {
          "󱐌 " .. stats.count .. " plugins loaded in " .. count .. " ms",
          " ",
          --"      bloos nvim",
        }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
