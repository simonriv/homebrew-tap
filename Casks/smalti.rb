cask "smalti" do
  version "0.8.5"
  sha256 "17bc8b743964fe513c9c9108685e90a39f1ede2c3e4fbaaa1df04e1e86d23ea2"

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
