cask "vulpine" do
  version "0.1.6"
  sha256 "962dd921b0398bdd997487d0f6872bd43550c6b64a5fde59ba6e1a9d2059c799"

  url "https://github.com/voidfab/vulpine-releases/releases/download/v0.1.6/Vulpine-#{version}-arm64.dmg"
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
