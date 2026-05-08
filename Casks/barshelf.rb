cask "barshelf" do
  version "0.3.8"
  sha256 "096fa40c4c268cf76ec2b7a2d77635011fbdf7b6c0983eb3f9fccf6fa677e705"

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
