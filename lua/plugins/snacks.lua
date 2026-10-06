-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          win = {
            -- Keys active when navigating the list view
            list = {
              keys = {
                ["l"] = false,      -- Open file or expand directory
                ["h"] = false,      -- Go up a directory level
                ["<Tab>"] = false,  -- Cycle focus between input box and list
                ["<C-N>"] = false,  -- List down
                ["<C-J>"] = false,  -- List down
                ["j"] = false,      -- List down
                ["<C-P>"] = false,  -- List up
                ["<C-K>"] = false,  -- List up
                ["k"] = false,      -- List up
                ["zt"] = false,     -- List scroll top
                ["zb"] = false,     -- List scrol bottom
                ["<S-CR>"] = false, -- Pick win, jump
                ["<M-P>"] = false,  -- Toogle preview
                ["<M-i>"] = false,  -- Toogle ignore
                ["<M-h>"] = false,  -- Toogle hidden
                ["<M-m>"] = false,  -- Toogle maximize
                ["<M-w>"] = false,  -- Cycle win
                ["<C-B>"] = false,  -- Preview scroll up
                ["<C-F>"] = false,  -- Preview scroll down
                ["<2-LeftMouse>"] = false,  -- Explorer ?
                ["]d"] = false,     -- Explorer diagnose next
                ["[d"] = false,     -- Explorer diagnose previous
                ["]e"] = false,     -- Explorer error next
                ["[e"] = false,     -- Explorer error previous
                ["]w"] = false,     -- Explorer warn next
                ["[w"] = false,     -- Explorer warn previous
                ["Z"] = false,      -- Explorer ?
                ["<C-W>J"] = false, -- Layout bottom
                ["<C-W>H"] = false, -- Layout left
                ["<C-W>L"] = false, -- Layout right
                ["<C-W>K"] = false, -- Layout top
                ["<C-Q>"] = false,  -- qflist
                ["<C-C>"] = false,  -- tcd
                ["<M-p>"] = false,  -- toggle preview
                ["<M-d>"] = false,  -- inspect
                ["<M-f>"] = false,  -- Toggle focus
                ["o"] = false,      -- explorer open
              },
            },
            -- Keys active if you are typing into the search/filter box
            input = {
              keys = {
                ["<Esc>"] = "close",         -- Instantly close explorer on Esc
              },
            },
          },
        },
      },
    },
  },
}

