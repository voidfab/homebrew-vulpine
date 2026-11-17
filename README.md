# homebrew-vulpine

Homebrew tap for [Vulpine](https://github.com/voidfab/vulpine-releases): the voice front end and the gateway host app.
Apple Silicon only.

```sh
brew install --cask voidfab/vulpine/vulpine-gateway   # the host app (macOS 13+)
brew install --cask voidfab/vulpine/vulpine           # the voice front end
```

**These casks point at a pre-release.** The builds on the releases repo are GitHub pre-releases, not "latest", so
`brew livecheck` is skipped and Homebrew's own version check will not see newer ones. The tap is bumped by hand
after each publish; `brew update && brew upgrade --cask vulpine vulpine-gateway` picks the bump up.

Uninstall: `brew uninstall --cask vulpine vulpine-gateway`; add `--zap` to remove the apps' settings and caches too.
