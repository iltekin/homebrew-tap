cask "unplug" do
  version "1.0.0"
  sha256 "fdbce68574a508abba27f1bc78eeacda4eb4eaa38fca88b2379f832199afa1ff"

  url "https://github.com/iltekin/unplug/releases/download/v#{version}/Unplug-#{version}.zip"
  name "Unplug"
  desc "Menu bar app to turn external displays off and on"
  homepage "https://iltekin.github.io/unplug/"

  depends_on macos: ">= :ventura"

  app "Unplug.app"

  uninstall quit:       "com.iltekin.Unplug",
            login_item: "Unplug"

  zap trash: "~/Library/Preferences/com.iltekin.Unplug.plist"
end
