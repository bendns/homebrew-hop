cask "hop" do
  version "0.3.0"
  sha256 "3fe05a234828a4444a0f3d5dc390db52e1ed3a04a9f3ec815f35d3b0bf8cbb83"

  url "https://github.com/bendns/hop/releases/download/v#{version}/Hop-#{version}.zip"
  name "Hop!"
  desc "Menu bar app that reminds you to alternate between sitting and standing"
  homepage "https://github.com/bendns/hop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Hop.app"

  zap trash: [
    "~/Library/Application Support/Hop",
    "~/Library/Containers/com.bendns.hopapp",
    "~/Library/Preferences/com.bendns.hopapp.plist",
  ]

  caveats <<~EOS
    Hop is ad-hoc signed. On first launch, macOS may block the app:
    right-click /Applications/Hop.app in Finder → Open → Open.
  EOS
end
