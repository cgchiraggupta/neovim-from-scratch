-- macOS Health Check for Neovim Configuration
local M = {}

function M.check_system()
  local health = {}
  
  -- Check if running on macOS
  if vim.fn.has('macunix') == 1 then
    table.insert(health, { status = "✓", msg = "Running on macOS" })
  else
    table.insert(health, { status = "✗", msg = "Not running on macOS" })
  end
  
  -- Check clipboard integration
  if vim.opt.clipboard:get()[1] == "unnamed" then
    table.insert(health, { status = "✓", msg = "macOS clipboard integration enabled" })
  else
    table.insert(health, { status = "⚠", msg = "macOS clipboard may not be properly configured" })
  end
  
  -- Check for required tools
  local tools = {
    { name = "git", required = true },
    { name = "clangd", required = false, desc = "C/C++/Objective-C LSP" },
    { name = "node", required = false, desc = "Node.js for TypeScript LSP" },
    { name = "go", required = false, desc = "Go language support" },
  }
  
  for _, tool in ipairs(tools) do
    local handle = io.popen("which " .. tool.name .. " 2>/dev/null")
    local result = handle:read("*a")
    handle:close()
    
    if result and result ~= "" then
      table.insert(health, { 
        status = "✓", 
        msg = string.format("%s found: %s", tool.name, result:gsub("\n", ""))
      })
    else
      local status = tool.required and "✗" or "⚠"
      local desc = tool.desc and (" (" .. tool.desc .. ")") or ""
      table.insert(health, { 
        status = status, 
        msg = string.format("%s not found%s", tool.name, desc)
      })
    end
  end
  
  return health
end

function M.check_plugins()
  local health = {}
  local plugins = {
    "lazy",
    "mason",
    "mason-lspconfig", 
    "lspconfig",
    "cmp",
    "cmp_nvim_lsp"
  }
  
  for _, plugin in ipairs(plugins) do
    local ok = pcall(require, plugin)
    if ok then
      table.insert(health, { status = "✓", msg = plugin .. " loaded successfully" })
    else
      table.insert(health, { status = "✗", msg = plugin .. " failed to load" })
    end
  end
  
  return health
end

function M.check_lsp()
  local health = {}
  local clients = vim.lsp.get_active_clients()
  
  if #clients > 0 then
    table.insert(health, { status = "✓", msg = string.format("%d LSP client(s) active", #clients) })
    for _, client in ipairs(clients) do
      table.insert(health, { status = "  →", msg = client.name })
    end
  else
    table.insert(health, { status = "⚠", msg = "No active LSP clients (may be normal if no files are open)" })
  end
  
  return health
end

function M.print_health()
  print("=== Neovim macOS Health Check ===\n")
  
  print("System Check:")
  for _, item in ipairs(M.check_system()) do
    print(string.format("%s %s", item.status, item.msg))
  end
  
  print("\nPlugin Check:")
  for _, item in ipairs(M.check_plugins()) do
    print(string.format("%s %s", item.status, item.msg))
  end
  
  print("\nLSP Check:")
  for _, item in ipairs(M.check_lsp()) do
    print(string.format("%s %s", item.status, item.msg))
  end
  
  print("\n=== Completion Test ===")
  print("To test autocompletion:")
  print("1. Open a .lua file")
  print("2. Type 'vim.' and you should see LSP completions")
  print("3. Use <Tab> or <C-j>/<C-k> to navigate completions")
  print("4. Use <CR> to accept completion")
  
  print("\n=== Key Bindings (macOS optimized) ===")
  print("LSP:")
  print("  K           - Hover documentation")
  print("  gd          - Go to definition")  
  print("  gr          - Go to references")
  print("  <leader>ca  - Code actions")
  print("  <leader>rn  - Rename symbol")
  
  print("\nCompletion:")
  print("  <C-Space>   - Trigger completion")
  print("  <Tab>       - Next item")
  print("  <S-Tab>     - Previous item")
  print("  <C-j>/<C-k> - Navigate items")
  print("  <CR>        - Accept completion")
  print("  <C-e>       - Abort completion")
end

return M
