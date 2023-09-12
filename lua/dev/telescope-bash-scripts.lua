local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local Terminal = require("toggleterm.terminal").Terminal

local _create_terminal = function(selection)
  local t = Terminal:new({
    cmd = selection.cmd,
    direction = "float",
    -- close_on_exit = false,
    on_open = function()
      -- goto insert mode
      vim.api.nvim_feedkeys("i", "t", true)
    end,
  })
  t:toggle()
  -- vim.cmd('TermExec direction="float" cmd="' .. selection.cmd .. '" go_back=0')
end

local bash_scripts = function(opts)
  opts = opts or {}
  pickers
    .new(opts, {
      prompt_title = "pick a bash script",
      finder = finders.new_table({
        results = {
          { "test", "./lua/dev/test.sh" },
          { "test2", "./lua/dev/test2.sh" },
          { "lazygit", "lazygit" },
        },
        entry_maker = function(entry)
          return {
            value = entry,
            display = entry[1],
            ordinal = entry[1],
            cmd = entry[2],
          }
        end,
      }),
      sorter = conf.generic_sorter(opts),
      attach_mappings = function(prompt_bufnr, map)
        actions.select_default:replace(function()
          actions.close(prompt_bufnr)
          local selection = action_state.get_selected_entry()
          -- print(vim.inspect(selection.path))
          _create_terminal(selection)
        end)
        return true
      end,
    })
    :find()
end

-- to execute the function run:
-- :luafile %
bash_scripts(require("telescope.themes").get_dropdown({}))
