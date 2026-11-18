cask "vulpine-gateway" do
  version "0.2.3"
  sha256 "8fad2b2e04e776836a920b2a8a7e7169a9737ff504c9311de82c1dbdf4669520"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.7/vulpine-gateway-#{version}-arm64.dmg"
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
