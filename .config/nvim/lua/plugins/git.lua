-- LazyVim は snacks.nvim を同梱しており、lazygit は <leader>gg / <leader>gG で使用可能
-- ここでは snacks の lazygit 設定をカスタマイズ
return {
  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        -- lazygit の設定テーマを Neovim のカラースキームに合わせる
        configure = true,
      },
    },
    keys = {
      { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit (cwd)" },
      { "<leader>gG", function() Snacks.lazygit({ cwd = vim.fn.expand("%:p:h") }) end, desc = "Lazygit (file dir)" },
      { "<leader>gl", function() Snacks.lazygit.log() end, desc = "Lazygit Log (cwd)" },
      { "<leader>gL", function() Snacks.lazygit.log({ cwd = vim.fn.expand("%:p:h") }) end, desc = "Lazygit Log (file dir)" },
    },
  },
}
