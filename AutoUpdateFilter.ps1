# 讀取原檔案內容
$content0 = Get-Content "POE2_Moon.filter"

# 替換內容
$content1 = $content0 -replace 'Show # %H0', 'Hide # %H0' #速刷
$content2 = $content1 -replace 'Show # %H1', 'Hide # %H1' #終局
$content3 = $content2 -replace 'Show # %H2', 'Hide # %H2' #印鈔

# 將修改後的內容儲存為新檔案
$content1 | Set-Content "POE2_Moon_1_速刷.filter"
$content2 | Set-Content "POE2_Moon_2_終局.filter"
$content3 | Set-Content "POE2_Moon_3_印鈔.filter"