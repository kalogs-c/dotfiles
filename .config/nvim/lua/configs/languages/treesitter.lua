local languages = require "configs.languages"

local ensure_installed = {}
for lang, _ in pairs(languages) do
  table.insert(ensure_installed, lang)
end

return {
  ensure_installed = ensure_installed,
  auto_install = true,
  highlight = { enable = true, use_languagetree = true },
  indent = { enable = true },
}
