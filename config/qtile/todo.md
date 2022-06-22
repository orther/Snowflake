# XMonad-like Setup
## Layout (4):
b. large main

related info:
```haskell 
  |||! rename "Large Main" (Tall 1 (3 / 100) (3 / 4))
```

## Toggled spawns (rofi):
a. MagicFocus (view window -> main window)
b. Magnify (view window => grows larger)

### `mod+alt` spawns:
1. `m` = "brave --new-window https://mail.proton.me/u/0/inbox" <- floating
    a. Make sure it floats for both firefox and brave.
```haskell
isProtonMailTitle t = isInfixOf "@proton.me" t && isInfixOf "Proton Mail" t
```

## Aesthetics
3. Specify font, if possible done through nix. (XResources??)
2. Space between windows (gaps) = X???
1. Have bar show active applications inside workspaces, like taffybar

# Keymaps
```python
Key([mod, alt], "b", lazy.spawn("rofi -show window")), TODO: swap with X window
Key([mod], "g", lazy.spawn("rofi -show window")), TODO: go to X window
```

Migrate to Qtile
```haskell
[ ((modm, xK_g)                     , myGoToWindow)
, ((modm .|. shiftMask, xK_b)       , myReplaceWindow)
, ((modm .|. controlMask, xK_space) , deactivateFullOr goFullscreen)
, ((modm, xK_x), addHiddenWorkspace "NSP" >> windows (W.shift "NSP"))
, ((modalt, xK_space), deactivateFullOr restoreOrMinimizeOtherClasses)
, ((hyper, xK_g)                    , gatherThisClass)
,
-- Focus/layout manipulation
  ((modm, xK_e)       , goToNextScreenX)
, ((modm, xK_slash)   , sendMessage $ Toggle MIRROR)
, ( (modm, xK_backslash)
  , cycleWorkspaceOnCurrentScreen [xK_Super_L] xK_backslash xK_slash
  )
, ((modm, xK_z)                 , shiftToNextScreenX)
, ((modm .|. shiftMask, xK_z)   , shiftToEmptyNextScreen)
, ((modm .|. shiftMask, xK_h)   , shiftToEmptyAndView)
, ((hyper, xK_5), getWorkspaceDmenu >>= windows . SW.swapWithCurrent)
,
-- These ought to be rebound for boringWindows support
  ((hyper, xK_e)                , moveTo Next emptyWS)
,
-- Miscellaneous XMonad
  ((hyper, xK_1)                , toggleFadingForActiveWindow)
, ((hyper .|. shiftMask, xK_1)  , toggleFadingForActiveWorkspace)
, ((hyper .|. controlMask, xK_1), toggleFadingForActiveScreen)
, ((hyper, xK_t)                , selectToggle)
, ((modalt, xK_4)               , selectLimit)
, ((hyper, xK_3)                , addWorkspacePrompt def)
, ((modalt, xK_3)               , selectWorkspace def)
, ((hyper .|. mod1Mask, xK_3)   , removeWorkspace)
, ((hyper, xK_l)                , selectLayout)
,
```
