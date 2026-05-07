cask "barshelf" do
  version "0.3.2"
  sha256 "1ce36038e787ce2b277077f35b07f1d886a5dc6b47430ee85d9a8f7c1dc86e84"

  url "https://github.com/gregagi/barshelf/releases/download/v#{version}/BarShelf.dmg"
  name "BarShelf"
  desc "Open-source macOS menu bar manager with a floating shelf and CLI"
  homepage "https://github.com/gregagi/barshelf"

  app "BarShelf.app"
  binary "#{appdir}/BarShelf.app/Contents/MacOS/barshelf"

  zap trash: [
    "~/Library/Preferences/com.gregagi.barshelf.plist",
    "~/Library/Application Support/com.gregagi.barshelf",
  ]
end
