cask "vulpine-gateway" do
  version "0.2.0"
  sha256 "29eb58a9eb4f638039b04d0baba61784b0dc76bb36b1787d38238fd1d7c79f45"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.4/vulpine-gateway-#{version}-arm64.dmg"
  name "Vulpine Gateway"
  desc "Host app for the Vulpine gateway"
  homepage "https://github.com/voidfab/vulpine-releases"

  # Pre-release builds only: nothing here is "latest" on the releases repo yet.
  livecheck do
    skip "Pre-release builds; the tap is bumped by hand after each publish"
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Vulpine Gateway.app"

  zap trash: [
    "~/Library/Application Support/com.voidfab.vulpine.gateway",
    "~/Library/Caches/com.voidfab.vulpine.gateway",
    "~/Library/HTTPStorages/com.voidfab.vulpine.gateway",
    "~/Library/Preferences/com.voidfab.vulpine.gateway.plist",
    "~/Library/Saved Application State/com.voidfab.vulpine.gateway.savedState",
    "~/Library/WebKit/com.voidfab.vulpine.gateway",
    "~/.cache/vulpine",
    "~/.config/vulpine",
    "~/.local/state/vulpine",
    "~/.config/glyph",
    "~/.local/state/glyph",
    "~/Library/Application Support/Vulpine",
  ]
end
