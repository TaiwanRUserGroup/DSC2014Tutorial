battleship <- function(num_guess = 5, cheat = F){
        ship_x <- sample.int(5, size = 1)
        ship_y <- sample.int(5, size = 1)
        if (cheat){
                print(ship_x)
                print(ship_y)
        }
        map =list(c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'),
                  c('O', 'O', 'O', 'O', 'O'))
        for (r in map){
                print(r)
        }
        trial <- 0
        while (trial < num_guess){
                x <- as.numeric(readline('Guess the x:'))
                y <- as.numeric(readline('Guess the y:'))
                if (x <= 5 && y <= 5 && x > 0 && y > 0){ 
                        map[[y]][x] <- 'X'
                        for (r in map){
                                print(r)
                        }
                        if (x == ship_x & y == ship_y){
                                cat('Oh NO~~~You shrink my boat!!')
                                break
                        } else{
                                cat('You miss.')
                                trial <- trial + 1
                        }
                        if (trial >= num_guess){
                                cat('You loss.')
                        }
                } else {
                        cat('Invalid x or y coordinate.')
                }
        }
        
}