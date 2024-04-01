local lsp = {}

function lsp.clients()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })
  local names = vim.tbl_map(function(client)
    return client.name
  end, clients)
  return names
end

return lsp
