battleship <- function(num_guess){
        # 由電腦隨機決定一組坐標。
        ship_x <- _____
        ship_y <- _____
        # 初始的地圖。
        map =list(c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'))
        # 描繪地圖。
        for (row in map){
                ______
        }
        # trial: 玩家已猜測次數。
        trial <- 0
        while (______){
                # 玩家選定坐標 x 與 y 。
                x <- as.numeric(readline('Guess the x:'))
                y <- as.numeric(readline('Guess the y:'))
                # 根據玩家選定之 x 與 y 更新 map。
                map[[___]][___] <- 'X'
                # 繪製地圖。
                for (____){
                        print(row)
                }
                # 根據玩家猜測的結果，顯示適當資訊與更新相關變數。
                if (________){
                        cat('Oh NO~~~You shrink my boat!!')
                        break
                } else{
                        cat('You miss.')
                        trial <- ____
                }
                # 當玩家用完所有機會，顯示遊戲結束的訊息與電腦的 x 與 y 坐標。
                if (_______){
                        cat('You loss.\n')
                        cat("The battleship's x-coordinate is", ship_x, '\n')
                        cat("The battleship's y-coordinate is", ship_y, '\n')
                }
        }
        
}
