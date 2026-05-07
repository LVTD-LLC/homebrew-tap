cask "barshelf" do
  version "0.3.5"
  sha256 "3628534306c0ce9bac1e15f963a20430c5a2eb68a94eac0f469f1301a2111a18"

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
