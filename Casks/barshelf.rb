cask "barshelf" do
  version "0.3.4"
  sha256 "aa21ce0276581ba4034177442d22775b576f9afaefb7735d2622c0591157278e"

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
