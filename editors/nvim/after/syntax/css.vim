syn match cssCustomProperty	"--[a-zA-Z0-9-_]\+"
syn match cssNoiseTwo	"[,;]"
syn match cssVendorPrefix	"(-ms-flex|-webkit-box-flex)"

hi def link cssCustomProperty Identifier
hi def link cssVendorPrexix Type
