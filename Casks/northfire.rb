# Northfire IRC Client - Homebrew cask (updated by tools/distribute.sh). Built by Kyle Bargman
cask "northfire" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "ed3f85ad157cda287a90dda950cf3cfcd212c70f85ad34442b17a18ffb2f6002",
         intel: "470b9288a6d47eb20611a6e7dc569cb8772bbd18de56aaf5c45a92c0d6b2ff32"

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
