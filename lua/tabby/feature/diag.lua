local diag = {}

function diag.get_count()
  return {
    error = vim.lsp.diagnostic.get_count(nil, { severity = vim.diagnostic.severity.ERROR }),
    warning = vim.lsp.diagnostic.get_count(nil, { severity = vim.diagnostic.severity.WARN }),
    information = vim.lsp.diagnostic.get_count(nil, { severity = vim.diagnostic.severity.INFO }),
    hint = vim.lsp.diagnostic.get_count(nil, { severity = vim.diagnostic.severity.HINT }),
  }
end

return diag
