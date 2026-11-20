# Northfire IRC Client - Homebrew cask (updated by tools/distribute.sh). Built by Kyle Bargman
cask "northfire" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "88d60b1a5ff78bab3f4e31380553c1fcd33c10850d5dee0f295ab46ad3470705",
         intel: "5ba2ec2fd7222608c49e71d7be7cc200fcdde8d9cd423f117a6907a92e30dfe5"

  url "https://github.com/kbargman/northfire-releases/releases/download/v#{version}/Northfire-#{version}-mac-#{arch}.dmg"
  name "Northfire"
  desc "IRC client for the Northfire network and any other IRC server"
  homepage "https://northfire.dev/"

  auto_updates true
  depends_on macos: :monterey

  app "Northfire.app"

  zap trash: [
    "~/Library/Application Support/Northfire",
    "~/Library/Caches/dev.northfire.client.ShipIt",
    "~/Library/Caches/northfire-client-updater",
    "~/Library/Logs/Northfire",
    "~/Library/Preferences/dev.northfire.client.plist",
    "~/Library/Saved Application State/dev.northfire.client.savedState",
  ]
end
