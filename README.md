# bendns/homebrew-hop

Homebrew tap for [Hop!](https://github.com/bendns/hop) — a macOS menu bar app that reminds you to alternate between sitting and standing.

## Install

```sh
brew tap bendns/hop
brew install --cask hop
```

## First launch

Hop is ad-hoc signed. On first launch macOS may refuse to open it. In Finder, right-click `/Applications/Hop.app` → **Open** → **Open** once; macOS remembers the approval.

## Uninstall

```sh
brew uninstall --cask hop     # remove the app
brew untap bendns/hop         # remove this tap
```

## Updating the cask (maintainer notes)

Each release of `bendns/hop`:

1. Tag `vX.Y.Z` on `bendns/hop:main` → the Release workflow publishes `Hop-X.Y.Z.zip`.
2. Copy the SHA256 from the release workflow output.
3. Update `Casks/hop.rb`: bump `version`, replace `sha256 :no_check` with the real checksum, commit, push.
