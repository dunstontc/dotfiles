--- Reload Hammerspoon configuration
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
  hs.notify.new({title="Hammerspoon", informativeText="Config reloaded"}):send()
end)


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



---- More complex window movement ----
-- Nethack Movement
-- untelated to hammerspoon, but interesting
-- y   k   u
-- h       l
-- b   j   n
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Y", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x - 10
--   f.y = f.y - 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.y = f.y - 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x + 10
--   f.y = f.y - 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x - 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x + 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "B", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x - 10
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--
--   f.x = f.x + 10
--   f.y = f.y + 10
--   win:setFrame(f)
-- end)



---- Window sizing ----
-- fetch the focused window,
-- then fetch the screen that the focused window is on,
-- fetch the frame of the screen (note that hs.screen.frame() does not include the menubar and dock, see hs.screen.fullFrame() if you need that)
-- the frame of the window to occupy the left half of the screen.
-- and set the frame of the window to occupy the left half of the screen.
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()
--
--   f.x = max.x
--   f.y = max.y
--   f.w = max.w / 2
--   f.h = max.h
--   win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()
--   local screen = win:screen()
--   local max = screen:frame()
--
--   f.x = max.x + (max.w / 2)
--   f.y = max.y
--   f.w = max.w / 2
--   f.h = max.h
--   win:setFrame(f)
-- end)



---- Multi-window layouts ----
--

