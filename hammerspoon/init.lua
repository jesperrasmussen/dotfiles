
-- A global variable for the Hyper Mode
hyper = hs.hotkey.modal.new({}, "F17")

-- HYPER+L: Open news.google.com in the default browser
lfun = function()
  news = "app = Application.currentApplication(); app.includeStandardAdditions = true; app.doShellScript('open http://news.google.com')"
  hs.osascript.javascript(news)
  hyper.triggered = true
end
hyper:bind('', 'l', nil, lfun)

-- HYPER+M: Call a pre-defined trigger in Alfred 3
mfun = function()
  cmd = "tell application \"Alfred 3\" to run trigger \"emoj\" in workflow \"com.sindresorhus.emoj\" with argument \"\""
  hs.osascript.applescript(cmd)
  hyper.triggered = true
end
hyper:bind({}, 'm', nil, mfun)

-- HYPER+E: Act like ⌃e and move to end of line.
efun = function()
  hs.eventtap.keyStroke({'⌃'}, 'e')
  hyper.triggered = true
end
hyper:bind({}, 'e', nil, efun)

-- HYPER+A: Act like ⌃a and move to beginning of line.
afun = function()
  hs.eventtap.keyStroke({'⌃'}, 'a')
  hyper.triggered = true
end
hyper:bind({}, 'a', nil, afun)

-- Enter Hyper Mode when F18 (Caps Lock) is pressed
pressedF18 = function()
  hyper.triggered = false
  hyper:enter()
end

-- Leave Hyper Mode when F18 (Caps Lock) is released,
--   fire alt + space if no other keys are pressed.
releasedF18 = function()
  hyper:exit()
  if not hyper.triggered then
    hs.eventtap.keyStroke({"alt"}, 'SPACE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

hs.loadSpoon("AClock")
hs.loadSpoon("WinWin")
hs.loadSpoon("WindowScreenLeftAndRight")
hs.loadSpoon("WindowHalfsAndThirds")

require "modules/config"
require "modules/app"
require "modules/window"
require "modules/layout"
require "modules/react"

hs.hotkey.bind(hyper, 'r', function()
  hs.reload()
end)
hs.alert.show("Config loaded")
