-- Thanks Lars -- https://github.com/webpro/dotfiles/blob/master/etc/hammerspoon

hyper = {"⌘", "⌥", "⌃"}
-- hyper = {"cmd", "alt", "ctrl"}

-- require "apps"

-- hs.hotkey.bind(mash, "r", function() hs.reload(); end)
-- hs.hotkey.bind(mash, "w", function() hs.eventtap.keyStrokes('¯\\_(ツ)_/¯'); end)
-- hs.hotkey.bind(mash, "a", function() hs.caffeinate.lockScreen(); end)
-- hs.alert("Hammerspoon config loaded")

--- Reload Hammerspoon configuration
hs.hotkey.bind(hyper, "R", function()
  hs.reload()
  hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
end)

hs.hotkey.bind(hyper, "3", function()
  hs.application.launchOrFocus("Launchpad")
end)



-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
--   hs.reload()
--   hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
-- end)

---- Introduction to window movement ----
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x - 10
--   win:setFrame(f)
-- end)
--



