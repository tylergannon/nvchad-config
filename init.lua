-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


-- Other configurations and plugin setups

-- Check if Neovim was started with a directory or no arguments
local function should_focus_nvim_tree()
  local args = vim.fn.argv()
  if #args == 0 then
    return true
  elseif #args == 1 then
    local file_stat = vim.loop.fs_stat(args[1])
    return file_stat and file_stat.type == "directory"
  else
    return false
  end
end


local function find_project_root(start_dir, project_files)
  local dir = start_dir
  while dir ~= '/' do
    for _, file in ipairs(project_files) do
      local filepath = dir .. '/' .. file
      if vim.loop.fs_stat(filepath) then
        return dir
      end
    end
    dir = vim.fn.fnamemodify(dir, ':h')
  end
  return nil
end

local function change_to_project_directory()
  local project_files = {'package.json', 'pyproject.toml'}
  local arg = vim.fn.expand('%:p')
  local arg_dir = arg

  if vim.fn.isdirectory(arg) == 0 then
    arg_dir = vim.fn.fnamemodify(arg, ':h')
  end

  if arg == '.' then
    arg_dir = vim.fn.getcwd()
  end

  local project_root = find_project_root(arg_dir, project_files)

  if project_root then
    vim.cmd('cd ' .. project_root)
  elseif arg_dir ~= vim.fn.getcwd() then
    vim.cmd('cd ' .. arg_dir)
  end
end

change_to_project_directory()

-- Conditionally execute NvimTreeFocus based on the startup arguments
if should_focus_nvim_tree() then
  vim.cmd [[autocmd VimEnter * NvimTreeFocus]]
end

