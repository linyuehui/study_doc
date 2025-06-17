# 去除 Window PowerShell 版权所有提示
clear

# 设置 oh-my-posh 主题
# robbyrussell
# jandedobbeleer
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression

# 使终端集成Git
Import-Module posh-git
# 加载 文件图标
Import-Module Terminal-Icons

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\ProgramData\anaconda3\Scripts\conda.exe") {
    (& "C:\ProgramData\anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

# 使用 vscode 打开 $PROFILE 配置文件
function vscodeOpen {
    Code $PROFILE
}

# 使用 nodepad++ 打开 $PROFILE 配置文件
function notepadOpen {
    noetepad $PROFILE
}

function dvadmin {
    conda activate dvadmin
    cd D:\PROJECTS\django-vue3-admin\backend
}

function webdvadmin {
  cd D:\PROJECTS\django-vue3-admin\web
}

# 自动补全
Set-PSReadLineOption -PredictionSource History -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
