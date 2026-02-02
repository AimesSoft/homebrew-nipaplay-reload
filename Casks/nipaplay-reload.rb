cask "nipaplay-reload" do
  version "1.9.6" # 会被自动更新
  sha256 "f2235f9afb0bd68eee38c9c516c4dbba4f48c0129811a8d3814f67ae1ba71a1b" # 会被自动更新

  # --- 修改这里 --- #
  # URL 指向 .dmg 文件，并且文件名与您的构建脚本匹配
  url "https://github.com/MCDFsteve/NipaPlay-Reload/releases/download/v#{version}/NipaPlay_#{version}_macOS_Universal.dmg",
      verified: "github.com/MCDFsteve/NipaPlay-Reload/"
  # ---------------- #

  name "NipaPlay-Reload"
  homepage "https://github.com/MCDFsteve/NipaPlay-Reload"

  # app 名称需要与 .dmg 文件中的 .app 名称一致
  # 根据您的 dmg.sh 脚本，应用名应该是 NipaPlay.app
  app "NipaPlay.app" 

  # 可选但推荐：添加一个 zap stanza 来帮助用户彻底卸载
  zap trash: [
  "~/Library/Application Support/NipaPlay",  # 根据应用名
  "~/Library/Preferences/com.aimessoft.nipaplay.plist",  # 实际 Bundle ID
  "~/Library/Saved Application State/com.aimessoft.nipaplay.savedState",  # 实际 Bundle ID
  ]
end
