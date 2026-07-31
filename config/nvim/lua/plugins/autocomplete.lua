return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets', "fang2hou/blink-copilot" },

    -- use a release tag to download pre-built binaries
    version = '1.*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = {
        preset = 'default',
        ["<Tab>"] = { 'select_next', 'fallback' },
        ["<S-Tab>"] = { 'select_prev', 'fallback' },
        ["<CR>"] = { 'accept', 'fallback' },
      },

      appearance = {
        nerd_font_variant = 'normal'
      },

      sources = {
        default = { 'copilot', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
    opts_extend = { "sources.default" }
  }
}
