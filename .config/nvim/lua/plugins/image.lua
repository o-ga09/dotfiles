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
        copy_images = true,   -- ファイルパスではなく画像データをassetsにコピー
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
      -- ft を指定することで markdown バッファ以外では発火しない
      { "<leader>p", "<cmd>PasteImage<cr>", ft = "markdown", desc = "Paste image from clipboard" },
    },
  },

  -- snacks.nvim で画像プレビュー（Ghostty は Kitty protocol 対応）
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
        doc = {
          enabled = true,   -- ドキュメント内の画像表示
          inline = true,    -- バッファにインライン表示
        },
      },
    },
  },
}
