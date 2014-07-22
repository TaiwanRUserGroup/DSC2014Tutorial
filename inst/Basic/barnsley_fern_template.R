rm(list = ls())
set.seed(3690)

# 設定起始點為 (0, 0) 的行向量。(以矩陣表示)
p = matrix(c(0, 0), ncol = 1)
# 建立名為 coord 的 data.frame。
coord = rbind(data.frame(), t(p))
for (______) {
        # 從 uniform(0, 1) 中抽取 indicator 決定當次遞迴式。
        indicator = runif(1, 0, 1)
        # 根據抽樣結果決定遞迴式。
        if (indicator <= 0.05) {
                m = __________
                const = matrix(c(0, 0), ncol = 1)
        } else if (_____) {
                m = matrix(c(0.85, -0.04, 0.04, 0.85), nrow = 2, ncol = 2)
                const = ______
        } else if (_____) {
                m = ______
                const = ______
        } else {
                m = ______
                const = ______
        }
        # 計算新的 p 坐標值。
        p = _______
        # 將新的 p 點坐標合併至 coord 中。
        coord = _______
}
# 作圖。
plot(x = coord[, 2], y = coord[, 1], plt = c(0, 10, -5, 5), cex = 0.1, asp = 1)
