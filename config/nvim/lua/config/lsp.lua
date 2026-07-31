vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
  callback = function(event)
    -- Function to easily define mappings.  Sets the mode, buffer and description
    local map = function(keys, func, desc, mode)
      mode = mode or "n"
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
    end

    map("gd", require("telescope.builtin").lsp_definitions, "Goto Definition") -- <C-t> to jump back
    map("gr", require("telescope.builtin").lsp_references, "Goto References")
    map("gt", require("telescope.builtin").lsp_type_definitions, "Goto Type Definition")
    map("sd", vim.diagnostic.open_float, "Show Diagnostics")                                               -- Show diagnostic messages.
    map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")           --  Symbols are things like variables, functions, types, etc.
    map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols") --  Symbols are things like variables, functions, types, etc.
    map("<leader>rn", vim.lsp.buf.rename, "Rename")
    map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "x" })

    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.INFO] = "",
          [vim.diagnostic.severity.HINT] = "",
        },
      },
    })
  end,
})

vim.lsp.config('ts_ls', {
  settings = {
    diagnostics = { ignoredCodes = { 7016 } },
  },
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("bashls")
vim.lsp.enable("pyright")
vim.lsp.enable("jsonls")
vim.lsp.enable("lua_ls")
