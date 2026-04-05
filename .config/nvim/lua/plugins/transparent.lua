return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- 起動時に有効にする
  config = function()
    require("transparent").setup({
      -- 必要に応じて追加で透過したいグループがあればここに記述
      extra_groups = {
        "NormalFloat", -- 浮遊ウィンドウ
        "NvimTreeNormal", -- nvim-treeなどを使っている場合
      },
    })
  end,
}
