cask "simple-capture" do
  version "0.1.0"
  sha256 "0eda8553595191708def015483eeb7bf02e5c7b579d4ea299d70f4f2a8b94d1f"

  url "https://github.com/thtmnisamnstr/simple-capture/releases/download/v#{version}/Simple.Capture_#{version}_aarch64.dmg"
  name "Simple Capture"
  desc "Screen recorder and video editor"
  homepage "https://github.com/thtmnisamnstr/simple-capture"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Simple Capture.app"

  uninstall quit: "com.simplecapture.desktop"

  zap trash: [
    "~/Library/Application Support/com.simplecapture.desktop",
    "~/Library/Caches/com.simplecapture.desktop",
    "~/Library/Containers/com.simplecapture.desktop",
    "~/Library/WebKit/com.simplecapture.desktop",
  ]
end
