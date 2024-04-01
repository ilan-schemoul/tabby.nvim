local git = {}

-- require lewis6991/gitsigns.nvim

function git.head()
  ---@diagnostic disable-next-line: undefined-field
  return vim.b.gitsigns_head or ''
end

function git.status()
  ---@diagnostic disable-next-line: undefined-field
  local dict = vim.b.gitsigns_status_dict or {}
  return {
    head = dict.head or '',
    added = dict.added or 0,
    removed = dict.removed or 0,
    changed = dict.changed or 0,
  }
end

function git.info_exists()
  ---@diagnostic disable-next-line: undefined-field
  return vim.b.gitsigns_head or vim.b.gitsigns_status_dict
end

return git
