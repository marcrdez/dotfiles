function biome_or_prettierd(bufnr)
  if require("conform").get_formatter_info("biome", bufnr).available then
    return { "biome-check", lsp_format = "never" }
  else
    return { "prettierd" }
  end
end

return {
  {
    -- Lightweight yet powerful formatter plugin for Neovim
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        "<leader>f",
        function()
          require("conform").format({ async = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      default_format_opts = { timeout_ms = 60000 },
      formatters = {
        biome = {
          require_cwd = true,
        },
      },
      formatters_by_ft = {
        css = { "prettierd" },
        html = { "prettierd" },
        javascript = biome_or_prettierd,
        javascriptreact = biome_or_prettierd,
        json = biome_or_prettierd,
        markdown = { "prettierd" },
        typescript = biome_or_prettierd,
        typescriptreact = biome_or_prettierd,
        yaml = { "prettierd" },
      },
    },
  },
}
