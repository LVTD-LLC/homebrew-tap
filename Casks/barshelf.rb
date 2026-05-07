cask "barshelf" do
  version "0.3.3"
  sha256 "627942d4aea42e2e5bdc1156b37591cf6341a128d5ef9fdf3c6b69401a8be088"

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
