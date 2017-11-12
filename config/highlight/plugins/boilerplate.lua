Description="Boilerplate plugin"

-- optional parameter: syntax description
function syntaxUpdate(desc)
end

-- optional parameter: theme description
function themeUpdate(desc)
end

Plugins={
  { Type="theme", Chunk=themeUpdate },
  { Type="lang", Chunk=syntaxUpdate },
}
