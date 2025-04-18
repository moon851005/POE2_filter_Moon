# 讀取原檔案內容
$content = Get-Content "POE2_Moon.filter"

# 替換內容
$content1 = $content -replace 'Show #印鈔 - 終局 - 速刷', 'Hide #印鈔 - 終局 - 速刷'
$content2 = $content -replace 'Show #印鈔 - 終局', 'Hide #印鈔 - 終局'
# $content3 = $content -replace 'Show #印鈔', 'Hide #印鈔'

# 將修改後的內容儲存為新檔案
$content1 | Set-Content "POE2_Moon_1_速刷.filter"
$content2 | Set-Content "POE2_Moon_2_終局.filter"
# $content3 | Set-Content "POE2_Moon_3_印鈔.filter"