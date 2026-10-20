# bendns/homebrew-hop

Homebrew tap for [Hop!](https://github.com/bendns/hop) — a macOS menu bar app that reminds you to alternate between sitting and standing.

## Install

```sh
brew install --cask bendns/hop/hop-app
```

The cask is named `hop-app` because `hop` in Homebrew's official catalog is an unrelated app, and official casks take precedence over taps. Always use the full name `bendns/hop/hop-app`.

## First launch

Hop is ad-hoc signed. On first launch macOS may refuse to open it. In Finder, right-click `/Applications/Hop.app` → **Open** → **Open** once; macOS remembers the approval.

## Uninstall

```sh
brew uninstall --cask bendns/hop/hop-app   # remove the app
brew untap bendns/hop                      # remove this tap
```

## Updating the cask (maintainer notes)

Each release of `bendns/hop`:

1. Tag `vX.Y.Z` on `bendns/hop:main` (check out `main` first) → the Release workflow publishes `Hop-X.Y.Z.zip`.
2. Copy the SHA256 from the release workflow output.
3. Update `Casks/hop-app.rb`: bump `version` and `sha256`, then open a PR.
