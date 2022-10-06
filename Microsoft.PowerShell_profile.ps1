Import-Module posh-git
Import-Module oh-my-posh
#Set-PoshPrompt -Theme powerline
Set-Location D:\workspace

# Aliases
function cdd {
    cd ..
}
Set-Alias .. cdd
function cddd {
    cd ../..
}
Set-Alias ... cddd
function cdddd {
    cd ../../..
}
Set-Alias .... cdddd

function TouchF {
   param(
      [parameter(Mandatory=$true)]
      [Alias("f")]
      [string]$filename
   )
   echo $null >> $filename
}
Set-Alias -name touch -value TouchF
Set-Alias e exit
Set-Alias sqlite D:\sqlite\3.39.3\sqlite3.exe

function ls_alias { ls | Format-Wide -Column 3 -Property Name }
#Set-Alias -Name ls -Value ls_alias -Option AllScope

## AutoComplete and suggestions
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

Set-PSReadlineOption -ShowToolTips
Set-PSReadlineOption -PredictionSource History

function Write-BranchName () {
    # https://stackoverflow.com/questions/1287718/how-can-i-display-my-current-git-branch-name-in-my-powershell-prompt
    $ESC = $([char]27)
    try {
        $branch = git rev-parse --abbrev-ref HEAD

        if ($branch -eq "HEAD") {
            $branch = git rev-parse --short HEAD
            Write-Host " $ESC[36m($branch) " -NoNewLine
        }
        else {
            Write-Host " $ESC[36m($branch) " -NoNewLine
        }
    }
    catch {
        Write-Host " $ESC[36m(no branches yet) " -NoNewLine
    }
}

function prompt {
    $ESC = $([char]27)
    $currentPath = Get-Location
    $userPrompt = "$('$' * ($nestedPromptLevel + 1)) "
  
    Write-Host "$ESC[1;37m$env:USERNAME" -NoNewLine
    Write-Host "$ESC[33m::" -NoNewLine
    Write-Host "$ESC[1;32m$currentPath" -NoNewLine
    if (Test-Path .git) {
        Write-BranchName " "
    }
    else {
        Write-Host " " -NoNewLine
    }
    return $userPrompt
}
