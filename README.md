# 安裝說明

1. 請執行`R.version`檢查R 的版本。本次課程中需要3.1版本以上的R。如果是3.0的版本，安裝時會看到`package ‘DSC2014Tutorial’ is not available (for R version 3.0.2)`。升級方式請見下面的[更新方式](#upgrade)
2. 請依據不同的OS在R console貼上下列script。如果有錯誤訊息，請參考最後的Q&A

## Windows

```r
install.packages('DSC2014Tutorial', repo = c('http://taiwanrusergroup.github.io/R', "http://cran.csie.ntu.edu.tw"), type = 'win.binary')
```

## Ubuntu

請先安裝以下Ubuntu套件:

```
sudo apt-get install libcurl4-openssl-dev libxml2-dev
```

再在R底下執行

```r
install.packages('DSC2014Tutorial', repo = c('http://taiwanrusergroup.github.io/R', "http://cran.csie.ntu.edu.tw"), type = 'source')
```

## Mac

請Mac User執行以下的Script:

```r
deps <- available.packages("http://taiwanrusergroup.github.io/R/src/contrib")[1,"Imports"]
pkgs <- strsplit(gsub("\\s", "", deps), ",")[[1]]
for(i in seq_along(pkgs)) {
  # You can change your favorite repository
  if (require(pkgs[i], character.only = TRUE)) next
  install.packages(pkgs[i], repo = "http://cran.csie.ntu.edu.tw")
}
install.packages('DSC2014Tutorial', repo = 'http://taiwanrusergroup.github.io/R', type = 'source')
```

## Q&A

- `ERROR: dependencies ‘wordcloud’, ‘gridExtra’ are not available for package ‘DSC2014Tutorial’`
    - 請貼上MAC上安裝套件的script，應可安裝所有相依套件。
    - 如果錯誤訊息依舊，應是某個套件安裝失敗。請將錯誤訊息回報至<https://github.com/TaiwanRUserGroup/DSC2014Tutorial/issues>
- `package ‘DSC2014Tutorial’ is not available (for R version 3.0.2)`
    - 請更新R到3.1以上的版本。

### <a name="upgrade"></a>更新方式
#### Mac
請至 http://cran.r-project.org/bin/macosx/ 下載
#### windows

[參考資料](http://www.r-statistics.com/2014/07/r-3-1-1-is-released-and-how-to-quickly-update-it-on-windows-os/)

在R console鍵入
```{r}
install.packages("installr"); require(installr) 
updateR()
```

#### Ubuntu
[參考資料](http://www.sysads.co.uk/2014/06/install-r-base-3-1-0-ubuntu-14-04/)

首先移除舊版的R，在ubuntu指令列中鍵入
```
sudo apt-get remove r-base-core
```

接著手動更新sources.list，在ubuntu指令列中鍵入

```
sudo gedit /etc/apt/sources.list
```
在gedit編輯器中最下行增加下列文字
```
deb http://cran.rstudio.com/bin/linux/ubuntu trusty/
```
存檔，關閉gedit編輯器  
新增Public Keys，在ubuntu指令列中鍵入
```
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
```
安裝新版R，在ubuntu指令列中鍵入
```
sudo apt-get update
sudo apt-get install r-base
```
做完直接開啟R檢查版本即可

# 投影片

```r
library(DSC2014Tutorial)
slides("Basic")
slides("ETL")
slides("DataAnalysis")
slides("Visualization2")
slides("Visualization3")
```


