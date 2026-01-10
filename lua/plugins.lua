-- This file should return all plugin specifications
-- Since you have individual plugin files, we need to combine them
local plugins = {}

-- Load all plugin configurations
local plugin_files = {
  'plugins.alpha',
  'plugins.autopairs',
  'plugins.bufferline',
  'plugins.lsp-config',
  'plugins.lualine',
  'plugins.neo-tree',
  'plugins.none-ls',
  'plugins.smear_cursor',
  'plugins.telescope',
  'plugins.toggleterm',
  'plugins.tokyonight',
  'plugins.treesitter',
}

for _, plugin_file in ipairs(plugin_files) do
  local ok, plugin_config = pcall(require, plugin_file)
  if ok and plugin_config then
    if type(plugin_config) == 'table' then
      for _, plugin in ipairs(plugin_config) do
        table.insert(plugins, plugin)
      end
    end
  end
end

return plugins

