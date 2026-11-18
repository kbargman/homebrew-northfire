# Northfire IRC Client - Homebrew cask (updated by tools/distribute.sh). Built by Kyle Bargman
cask "northfire" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "1164a24fe7ace3fd85ea642d1f08e3f2753466ab2ea3cc38ec3372d00d675aa4",
         intel: "699c2eae2e5a14074925f8b9188d6d7b69cf66f1c38b1fccc07ae60271f14fef"

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
