cask "hop" do
  version "0.2.0"
  sha256 "0889bfa31a82f62cf749d820dabb2fcc39ec920ef0a238cbc0f6964998f73190"

  url "https://github.com/bendns/hop/releases/download/v#{version}/Hop-#{version}.zip"
  name "Hop!"
  desc "Menu bar app that reminds you to alternate between sitting and standing"
  homepage "https://github.com/bendns/hop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hop.app"

  caveats <<~EOS
    Hop is ad-hoc signed. On first launch, macOS may block the app:
    right-click /Applications/Hop.app in Finder → Open → Open.
  EOS

  zap trash: [
    "~/Library/Preferences/com.bendns.hopapp.plist",
    "~/Library/Application Support/Hop",
  ]
end
