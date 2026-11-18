cask "vulpine-gateway" do
  version "0.2.1"
  sha256 "6d4a6a39c3b3303edd148355bc1bb9e10afd28ee37cca09fda3a4bcb622b3e73"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.5/vulpine-gateway-#{version}-arm64.dmg"
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
