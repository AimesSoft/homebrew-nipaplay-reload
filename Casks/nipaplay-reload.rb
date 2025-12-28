cask "nipaplay-reload" do
  version "1.8.4" # 会被自动更新
  sha256 "7945d2165067ed136137f5d8fa53f2ce98d34ab2862436d5abd3adc0043b1b52" # 会被自动更新

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
