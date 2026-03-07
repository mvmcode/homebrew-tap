# Homebrew cask formula for ELVES — visual multi-agent orchestration for Claude Code and Codex.
# Template: update version, sha256, and URL for each release.

cask "elves" do
  version "1.0.6"
  sha256 "e744d42d96181d99bb2d4b9524b1db30c637b02bd1f9e1c99684d3d3e7e7b56d"

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
