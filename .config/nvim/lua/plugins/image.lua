return {
  -- クリップボードから画像をペースト（Markdown, LaTeX, etc.）
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "assets",
        file_name = "%Y-%m-%d-%H-%M-%S",
        use_absolute_path = false,
        relative_to_current_file = true,
        prompt_for_file_name = false,
      },
      filetypes = {
        markdown = {
          url_encode_path = true,
          template = "![$CURSOR]($FILE_PATH)",
          download_images = false,
        },
      },
    },
    keys = {
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from clipboard" },
    },
  },

  -- snacks.nvim で画像プレビュー（Ghostty は Kitty protocol 対応）
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
      },
    },
  },
}
