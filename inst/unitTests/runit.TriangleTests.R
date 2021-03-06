test.cyEffTest <- function() {
  
  test <- cyEffTest(RAA)
  
  check1 <- checkEquals(test$Z, 14)
  check2 <- checkEquals(test$E, 12.875)
  
  return(all(check1,check2))
  }


test.dfCorTest <- function() {
  
  test <- dfCorTest(RAA)
  
  check1 <- checkEquals(round(test$T_stat,8),  0.06955782)
  check2 <- checkEquals(round(test$Var,8), 0.03571429)
  
  return(all(check1,check2))
  }


test.checkTriangleInflation <- function() {
  
  avg <- MedMal$MedMalOutstanding / MedMal$MedMalOpen
  
  test <- checkTriangleInflation(avg)
  
  check <- checkEquals(test, structure(list(Triangle = structure(c(3700.93457943925, 7250, 
                                                          5876.99316628702, 8324.06519654842, 10124.0808823529, 8261.37463697967, 
                                                          11175.7469244288, 13028.4280936455, 5659.52380952381, 10635.3187042842, 
                                                          8121.89616252822, 11433.0557335042, 13785.3025936599, 22476.7277856135, 
                                                          32159.6467391304, NA, 9261.73826173826, 12959.9651871192, 10612.7906976744, 
                                                          15499.4529540481, 30223.3766233766, 34401.6837041491, NA, NA, 
                                                          10150.912106136, 14221.4814814815, 14372.984991662, 25039.5987328405, 
                                                          33266.3825253063, NA, NA, NA, 11744.6808510638, 17066.6666666667, 
                                                          21705.8823529412, 28019.0538764783, NA, NA, NA, NA, 16627.4509803922, 
                                                          23410.5960264901, 29043.5606060606, NA, NA, NA, NA, NA, 19238.2739212008, 
                                                          24551.0204081633, NA, NA, NA, NA, NA, NA, 21423.3983286908, NA, 
                                                          NA, NA, NA, NA, NA, NA), class = c("triangle", "matrix"), 
                                                        .Dim = c(8L,8L), 
                                                        .Dimnames = list(origin = c("1", "2", "3", "4", "5", "6","7", "8"), 
                                                                         dev = c("1", "2", "3", "4", "5", "6", "7", "8"))), 
                                   summ_table = structure(c(0.156190476431484, 0.799575521329685, 
                                                            8, 0.294974936105874, 0.894632129386692, 7, 0.31109021713574, 
                                                            0.857873791649818, 6, 0.341739960627517, 0.940500448875085, 
                                                            5, 0.32961696510089, 0.988784438746122, 4, 0.321636702798935, 
                                                            0.983135130025194, 3, 0.276155049497859, 1, 2), .Dim = c(3L,7L), 
                                                            .Dimnames = list(c("rate", "R2", "Points"), NULL))), 
                                                            class = c("checkTriangleInflation","list"))
              )
 return(check)
   
}
