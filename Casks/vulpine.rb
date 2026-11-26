cask "vulpine" do
  version "0.1.12"
  sha256 "5e76b7a1ef9f3fcc757d82fc887af621b6e1b1661cf456eeed75b9c4e7a9f61f"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.12/Vulpine-#{version}-arm64.dmg"
  name "Vulpine"
  desc "Voice front end for the Vulpine gateway"
  homepage "https://github.com/voidfab/vulpine-releases"

  # Pre-release builds only: nothing here is "latest" on the releases repo yet.
  livecheck do
    skip "Pre-release builds; the tap is bumped by hand after each publish"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Vulpine.app"

  zap trash: [
    "~/Library/Application Support/com.voidfab.vulpine",
    "~/Library/Caches/com.voidfab.vulpine",
    "~/Library/HTTPStorages/com.voidfab.vulpine",
    "~/Library/Preferences/com.voidfab.vulpine.plist",
    "~/Library/Saved Application State/com.voidfab.vulpine.savedState",
    "~/Library/WebKit/com.voidfab.vulpine",
    "~/.config/glyph",
    "~/.local/state/glyph",
  ]
end
