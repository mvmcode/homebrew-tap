# Homebrew cask formula for ELVES — visual multi-agent orchestration for Claude Code and Codex.
# Template: update version, sha256, and URL for each release.

cask "elves" do
  version "1.0.7"
  sha256 "0397586df77a078c2ca3953a6d48a86c7b4bdb36cfee78e3de21e524a4b7e369"

  url "https://github.com/mvmcode/elves/releases/download/v#{version}/ELVES_#{version}_aarch64.dmg"
  name "ELVES"
  desc "Summon your AI army — visual multi-agent orchestration for Claude Code and Codex"
  homepage "https://mvmcode.github.io/elves"

  depends_on macos: ">= :ventura"

  app "ELVES.app"

  caveats <<~EOS
    ELVES is not notarized (open-source project). If macOS says it is
    "damaged" or "can't be verified", run:

      xattr -cr /Applications/ELVES.app

    Or reinstall with:

      brew reinstall --no-quarantine mvmcode/tap/elves
  EOS

  zap trash: [
    "~/.elves",
    "~/Library/Application Support/dev.elves.app",
    "~/Library/Caches/dev.elves.app",
    "~/Library/Preferences/dev.elves.app.plist",
  ]
end
