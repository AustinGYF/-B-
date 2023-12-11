# 国服官服切换脚本
### 一个简单的bat脚本，完成B服与国服切换

## 方法来自 [御言527的文章](https://www.bilibili.com/read/cv22161567/?spm_id_from=333.999.collection.opus.click)

# 实用方法
1. 将文件夹`MyChanger`复制到游戏目录（以下称为 `PATH`）。例如`C:\Program Files\Genshin Impact\Genshin Impact Game`；具体目录可通过启动器查看<br>
2. 通过文本编辑器编辑`MyChanger\changer_V1.1.bat`，将游戏目录`PATH`复制到`set PATH=`的等号后并保存
3. 将`PATH\Mychageger\PCGameSDK.dll`复制到`PATH\YuanShen_Data\Plugins`
4. 以管理员身份运行`PATH\MyChanger\changer_V1.1.bat`
5. 输入 1 选择官服；输入 2 选择B服，回车确认
6. 再次回车退出转换器
7. 使用`PATH\YuanShen.exe`启动游戏
