cask "barshelf" do
  version "0.3.7"
  sha256 "28760a33e7362b487a7846bba0917c2aab8785f9540749c53ce4b2756b7f6477"

  url "https://github.com/LVTD-LLC/barshelf/releases/download/v#{version}/BarShelf.dmg"
  name "BarShelf"
  desc "Open-source macOS menu bar manager with a floating shelf and CLI"
  homepage "https://github.com/LVTD-LLC/barshelf"

  app "BarShelf.app"
  binary "#{appdir}/BarShelf.app/Contents/MacOS/barshelf"

  zap trash: [
    "~/Library/Preferences/com.gregagi.barshelf.plist",
    "~/Library/Application Support/com.gregagi.barshelf",
  ]
end
