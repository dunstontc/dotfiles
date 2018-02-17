-- Thanks Lars -- https://github.com/webpro/dotfiles/blob/master/etc/hammerspoon
local function toggleApplication(name)

  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

local function goLeft()
  local switcher = hs.window.switcher.new()
  switcher:previous()
end

local function goRight()
  local switcher = hs.window.switcher.new()
  switcher:next()
end

hs.hotkey.bind(mash, ",", function() toggleApplication("System Preferences") end)
hs.hotkey.bind(mash, "c", function() toggleApplication("Google Chrome") end)
hs.hotkey.bind(mash, "f", function() toggleApplication("Finder") end)
hs.hotkey.bind(mash, "p", function() toggleApplication("Parallels Desktop") end)
hs.hotkey.bind(mash, "t", function() toggleApplication("iTerm") end)
hs.hotkey.bind(mash, "v", function() toggleApplication("Visual Studio Code - Insiders") end)

hs.hotkey.bind(mash, "h", function() goLeft() end)
hs.hotkey.bind(mash, "l", function() goRight() end)
-- hs.hotkey.bind(mash, "h", switcher.previousWindow())
-- hs.hotkey.bind(mash, "j", function() toggleApplication("iTerm") end)
-- hs.hotkey.bind(mash, "k", function() toggleApplication("iTerm") end)

-- -- set up your windowfilter
-- switcher = hs.window.switcher.new() -- default windowfilter: only visible windows, all Spaces
-- switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter{}) -- include minimized/hidden windows, current Space only
-- switcher_browsers = hs.window.switcher.new{'Safari','Google Chrome'} -- specialized switcher for your dozens of browser windows :)
--
-- -- bind to hotkeys; WARNING: at least one modifier key is required!
-- hs.hotkey.bind('alt','tab','Next window', function()switcher:next()end)
-- hs.hotkey.bind('alt-shift','tab','Prev window', function()switcher:previous()end)
--
-- -- alternatively, call .nextWindow() or .previousWindow() directly (same as hs.window.switcher.new():next())
-- hs.hotkey.bind('alt','tab','Next window',hs.window.switcher.nextWindow)
-- -- you can also bind to `repeatFn` for faster traversing
-- hs.hotkey.bind('alt-shift','tab','Prev window',hs.window.switcher.previousWindow,nil,hs.window.switcher.previousWindow)
