# Homebrew tap for Simple Capture

[Simple Capture](https://github.com/thtmnisamnstr/simple-capture) is a screen recorder and video editor for macOS. Everything stays on your Mac.

## Install

Apple silicon, macOS 14 Sonoma or later:

```sh
brew install --cask thtmnisamnstr/simple-capture/simple-capture
```

## Upgrade

`brew upgrade` (or `brew upgrade --cask simple-capture`). This tap follows each Simple Capture release within about an hour.

## Uninstall

```sh
brew uninstall --cask simple-capture
```

Add `--zap` to also remove settings, logs and caches. Recordings in `~/Movies/Simple Capture` are never touched.

Already installed Simple Capture from the DMG? Run `brew install --cask --force thtmnisamnstr/simple-capture/simple-capture`.
