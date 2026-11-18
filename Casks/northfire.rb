# Northfire IRC Client - Homebrew cask (updated by tools/distribute.sh). Built by Kyle Bargman
cask "northfire" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "8bb2cc2f4f92b01b5bdc1454001645e7877f8b7b0d9f2de48b2dc6c661c1d794",
         intel: "2445ff4ece912ea5bf22717002cea119eca314546cf2fafc2417ed97a3eae212"

  url "https://github.com/kbargman/northfire-releases/releases/download/v#{version}/Northfire-#{version}-mac-#{arch}.dmg"
  name "Northfire"
  desc "IRC client for the Northfire network and any other IRC server"
  homepage "https://northfire.dev/"

  auto_updates true
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
