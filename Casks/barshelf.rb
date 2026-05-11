cask "barshelf" do
  version "0.3.11"
  sha256 "08ed1fa11e9e451f7bf06b6225bf06a7a26259ddad77d70be38f941abfe800aa"

  url "https://github.com/LVTD-LLC/barshelf/releases/download/v#{version}/BarShelf.dmg"
  name "BarShelf"
  desc "Open-source macOS menu bar manager with a floating shelf and CLI"
  homepage "https://github.com/LVTD-LLC/barshelf"

  app "BarShelf.app"
  binary "#{appdir}/BarShelf.app/Contents/MacOS/barshelf"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/BarShelf.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.gregagi.barshelf.plist",
    "~/Library/Application Support/com.gregagi.barshelf",
  ]
end
