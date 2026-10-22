# Written by scripts/package-manifests.sh in manyeya/shard for each release; edits here are lost.
cask "shard" do
  version "0.1.0"
  sha256 "49fbb1fa5b25865fad3f065c9beb1b8795cb66b238105f0039fea9088bc1fcbf"

  url "https://github.com/manyeya/shard/releases/download/v0.1.0/Shard-#{version}-macos-universal.dmg"
  name "Shard"
  desc "Download manager that fetches every file in parallel parts and resumes after anything"
  homepage "https://manyeya.github.io/shard/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Shard.app"

  uninstall launchctl: "dev.shard.app",
            quit:      "dev.shard.app"

  zap trash: [
    "~/Library/Application Support/shard",
    "~/Library/LaunchAgents/dev.shard.app.plist",
  ]

  caveats <<~EOS
    Shard isn't notarised by Apple yet. If macOS won't open it, open System Settings,
    then Privacy & Security, and choose Open Anyway beside Shard.
  EOS
end
