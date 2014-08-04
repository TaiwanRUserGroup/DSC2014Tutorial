# 安裝說明

請依據不同的OS在R console貼上下列script:

## Windows

```r
install.packages('DSC2014Tutorial', repo = 'http://taiwanrusergroup.github.io/R', type = 'win.binary')
```

## Ubuntu

請先安裝以下Ubuntu套件:

```
sudo apt-get install libcurl4-openssl-dev
```

再在R底下執行

```r
install.packages('DSC2014Tutorial', repo = 'http://taiwanrusergroup.github.io/R', type = 'source')
```

## Mac

由於我們無法編譯Mac Binary, 只好請Mac User執行以下的Script:

```r
deps <- available.packages("http://taiwanrusergroup.github.io/R")[1,"Depends"]
pkgs <- strsplit(gsub("\\s", "", deps), ",")[[1]]
for(pkg in pkgs) {
  # You can change your favorite repository
  install.packages(pkg, repo = "http://cran.csie.ntu.edu.tw")
}
install.packages('DSC2014Tutorial', repo = 'http://taiwanrusergroup.github.io/R', type = 'source')
```

# 投影片

```r
slides("Basic")
slides("ETL")
```
