# Mr-lexus Tap

## Harnesscope on macOS with a pinned Xcode version

Install the prebuilt binary cask; no local compilation or Xcode update is needed:

```sh
brew update
brew install --cask mr-lexus/tap/harnesscope
harnesscope --version
harnesscope server start
harnesscope ui
```

The cask selects Apple Silicon/Intel and verifies the release checksum. It does
not change developer-tool settings or disable macOS execution/trust checks.
`server start` is manual background startup; this cask does not set up login startup.
`brew services` manages the formula only.

If the formula is already installed, first back up telemetry, stop its service
with `brew services stop mr-lexus/tap/harnesscope` (and stop a manually started
collector with `harnesscope server stop`), then run
`brew unlink mr-lexus/tap/harnesscope` before installing the cask. Unlinking keeps
the formula and user data. Do not run both collectors against one database/port.
The cask deliberately does not delete telemetry when uninstalled.

For cask upgrades, stop the collector, run
`brew upgrade --cask mr-lexus/tap/harnesscope`, then start it again with the same
database-path settings. The published version is **0.2.3**; unpublished development
features are not included. Do not downgrade a newer development installation.

See [the project's installation guide](https://github.com/mr-lexus/harnesscope/blob/codex/retrospective-evidence/docs/HOMEBREW.md).

## How do I install these formulae?

`brew install --formula mr-lexus/tap/<formula>`

Or `brew tap mr-lexus/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "mr-lexus/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
