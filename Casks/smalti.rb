cask "smalti" do
  version "0.7.6"
  sha256 "430c490aad3b1ef6589bd58c035becf7540546ddab905bde504f7fce51707168"

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
