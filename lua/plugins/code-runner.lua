return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "better_term",
      startinsert = false,
      float = {
        border = "rounded",
        border_hl = "FloatBorder",
        float_hl = "Normal",
      },
      --
      --
      --
      better_term = {
        clean = true,
        number = 25,
        init = nil,
      },
      --
      --
      filetype = {
        html = "zen-browser",
        javascript = "node",
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python ",
        cpp = {
          "cd $dir &&",
          "g++ $fileName -o",
          "$fileNameWithoutExt &&",
          "clear &&",
          "./$fileNameWithoutExt",
        },
        c = {
          "cd $dir &&",
          "gcc $fileNameWithoutExt &&",
          "./$fileNameWithoutExt",
        },
      },
    })
  end,
}
