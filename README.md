# 国服官服切换脚本
### 一个简单的bat脚本，完成B服与国服相互切换

## 方法来自 [B站 御言527 的文章](https://www.bilibili.com/read/cv22161567/?spm_id_from=333.999.collection.opus.click)

# 使用方法
1. 编辑 `MyChanger\changer_V1.1.bat`
2. 将游戏目录（以下称 `GAME_PATH`）复制到 `set GAMEPATH=` 等号后
3. 将 `\MyChanger` 路径复制到 `set SELECTORPATH=` （以下称 `SELECTOR_PATH`）等号后，需包含 `\MyChanger` 在路径中
4. 将 `SELECTOR_PATH\PCGameSDK.dll` 复制到 `GAME_PATH\YuanShen_Data\Plugins` 中
5. 以管理员身份运行 `SELECTOR_PATH\MyChanger\changer_V1.1.bat`
6. 输入 `1` 选择官服；输入 `2` 选择B服，回车确认
7. 再次回车退出转换器
8. 使用`GAME_PATH\YuanShen.exe`启动游戏即可登录所选择的服务器
<br>

（游戏目录如`C:\Program Files\Genshin Impact\Genshin Impact Game`；具体目录可通过启动器查看）<br>
