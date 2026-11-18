cask "vulpine-gateway" do
  version "0.2.2"
  sha256 "8e2a1567cfbd16e68c47b5ef98d0fcbeab1354931d1de42eaa82518d3899a2a3"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.6/vulpine-gateway-#{version}-arm64.dmg"
  name "Vulpine Gateway"
  desc "Host app for the Vulpine gateway"
  homepage "https://github.com/voidfab/vulpine-releases"

  # Pre-release builds only: nothing here is "latest" on the releases repo yet.
  livecheck do
    skip "Pre-release builds; the tap is bumped by hand after each publish"
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

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
    "~/Library/Application Support/Vulpine",
  ]
end
