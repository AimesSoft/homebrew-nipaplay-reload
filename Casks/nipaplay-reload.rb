cask "nipaplay-reload" do
  version "1.10.1" # 会被自动更新
  sha256 "4eb002e13cf336c9e538d1b8aee2d08ada095bb23d11308142c88f8e03cd7dd7" # 会被自动更新

  # --- 修改这里 --- #
  # URL 指向 .dmg 文件，并且文件名与您的构建脚本匹配
  url "https://github.com/AimesSoft/NipaPlay-Reload/releases/download/v#{version}/NipaPlay_#{version}_macOS_Universal.dmg",
      verified: "github.com/AimesSoft/NipaPlay-Reload/"
  # ---------------- #

  name "NipaPlay-Reload"
  homepage "https://github.com/AimesSoft/NipaPlay-Reload"

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
