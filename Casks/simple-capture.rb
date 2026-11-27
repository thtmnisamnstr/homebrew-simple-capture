cask "simple-capture" do
  version "0.1.0"
  sha256 "b321f62423aad9a9cd4600f40398cd7ff33c8a55d89a5a99d7b8970f8c1e00fe"

  url "https://github.com/thtmnisamnstr/simple-capture/releases/download/v#{version}/simple-capture_#{version}_aarch64.dmg"
  name "simple-capture"
  desc "Screen recorder and video editor"
  homepage "https://github.com/thtmnisamnstr/simple-capture"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "simple-capture.app"

  uninstall quit: "com.simplecapture.desktop"

  zap trash: [
    "~/Library/Application Support/com.simplecapture.desktop",
    "~/Library/Caches/com.simplecapture.desktop",
    "~/Library/Containers/com.simplecapture.desktop",
    "~/Library/WebKit/com.simplecapture.desktop",
  ]
end
