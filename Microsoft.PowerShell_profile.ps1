# 导入模块
Import-Module PSReadLine
Import-Module PSFzf
Import-Module posh-git

# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History

# 设置 Ctrl+e 为接受建议文本（类似方向键右键）
Set-PSReadLineKeyHandler -Key Ctrl+e -Function AcceptSuggestion

# 设置 Ctrl+r 为反向搜索历史记录
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+r' -PSReadlineChordReverseHistory 'Ctrl+t'

# 启用菜单补全和预测
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Chord Tab -Function MenuComplete