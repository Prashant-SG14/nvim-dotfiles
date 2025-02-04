return {
  "FLYDonkey123/deepseek.nvim",
  config = function()
    require("deepseek").setup({
      api_key = "your-api-key-here",
      -- Optional configuration
      api_url = "https://api.deepseek.com/v1",
      keymaps = {
        generate = "<leader>dg",
        optimize = "<leader>do",
        analyze = "<leader>da",
        chat = "<leader>dc",
      },
      chat = {
        system_prompt = "You are a helpful AI assistant",
        max_history = 10,
        enable_memory = true,
        ui = {
          enable = true,
          position = "float",
          width = 0.5,
          height = 0.5,
          border = "rounded",
        },
      },
    })
  end,
}
