local calc_type = function()
  local path = vim.fn.expand("%:t")
  if string.find(path, "Trait.php") then
    return "trait"
  elseif string.find(path, "Interface.php") then
    return "interface"
  else
    return "class"
  end
end

local calc_classname = function()
  return vim.fn.expand("%:t:r")
end

local string_remove_until_src = function(s)
  return string.gsub(s, ".+/src/", "")
end

local calc_namespace = function()
  local path = vim.fn.expand("%:p:h")
  path = string_remove_until_src(path)
  path = "App\\" .. string.gsub(path, "/", "\\")
  return path
end

return {
  s(
    "php",
    fmt(
      [[
<?php

namespace {};

{} {}
{{
  {}
}}
    ]],
      {
        f(calc_namespace),
        f(calc_type),
        f(calc_classname),
        i(0),
      }
    )
  ),
}
