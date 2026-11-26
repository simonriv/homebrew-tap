cask "smalti" do
  version "0.7.7"
  sha256 "1a7ff09043096fb078f366f963d6393ac3e3affc633c35eb305515eb64e2ac51"

  url "https://github.com/simonriv/smalti/releases/download/v#{version}/Smalti.dmg"
  name "Smalti"
  desc "Terminal for working with several AI agents at once"
  homepage "https://smalti.sh/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Smalti.app"

  zap trash: [
    "~/.config/smalti",
    "~/Library/Application Support/Smalti",
    "~/Library/Caches/dev.simonriv.smalti",
    "~/Library/HTTPStorages/dev.simonriv.smalti",
    "~/Library/Preferences/dev.simonriv.smalti.plist",
  ]
end
