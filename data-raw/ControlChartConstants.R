## code to prepare `ControlChartConstants` dataset goes here

CCC = function () {

  # Vectors that will store mean
  delta1_n <- c()
  delta2_n <- c()
  delta3_n <- c()
  # Vectors that will store the std. dev
  delta1SE_n <- c()
  delta2SE_n <- c()
  delta3SE_n <- c()

  # iterating through n, the sample size of a batch
  for (n in c(1:30))
  {
    Reps <- 500 # Number of replications
    m <- 2000 # Number of batches

    #Vector that stores range of each batch within a replication
    Range <- c()
    # Vector that stores the average range for each replication
    Rbar <- c()
    #Vector that stores the standard deviation of range for each replication
    RangeSD <- c()
    # Vector that stores the standard deviation of each batch within a replication
    BatchSD <- c()

    # Vector that stores the mean of the batch standard deviations
    # for each replication
    MeanofBatchSD <- c()
    # Vector that stores the standard deviation of the batch standard deviations
    # for each replication
    SDofBatchSD <- c()

    # Values of delta1, delta2 and delta3 specific to each replication
    # delta is an intermediate value used in the calculation of delta3
    delta1 <- c()
    delta2 <- c()
    delta  <- c()
    delta3 <- c()

    # Assumed distribution -- Normal
    # Choice of population mean and standard deviation is arbitrary
    # delta1, delta2, delta3 values would remain the same regardless
    # of population mean and standard deviation values
    PopMean <- 100
    PopStd <- 5

    #looping through replications
    for (i in c(1:Reps))
    {
      # looping through batches within a replication
      for (j in c(1:m))
      {
        # A batch consists of n+1 random samples drawn from a normal distribution
        Batch <- rnorm(n+1,PopMean,PopStd)
        # Calculating the range
        Range [j] <- max(Batch) - min(Batch)
        # Calculating the standard deviation of a batch
        BatchSD [j] <- sd(Batch)
      }

      ### delta1 and delta2 calculation
      Rbar[i] <- mean(Range)
      RangeSD [i] <- sd(Range)
      delta1[i] <- Rbar[i]/PopStd
      delta2[i] <- (RangeSD[i]*delta1[i])/(Rbar[i])

      ### delta3 calculation
      MeanofBatchSD [i] <- mean(BatchSD)
      SDofBatchSD [i] <- sd(BatchSD)
      delta[i] <- SDofBatchSD[i]/MeanofBatchSD[i]
      delta3[i] <- sqrt(1/((delta[i]*delta[i]) + 1))
    }

    # Store mean values of delta1, delta2 and delta3 for current value of n
    delta1_n [n] <- mean(delta1)
    delta2_n [n] <- mean(delta2)
    delta3_n [n] <- mean(delta3)

    # Store standard deviation (standard error) of delta1, delta2, and delta3
    # for each value of n
    delta1SE_n [n] <- sd(delta1)
    delta2SE_n [n] <- sd(delta2)
    delta3SE_n [n] <- sd(delta3)

  }

  CCC <-
    data.frame(c(2:31),delta1_n, delta1SE_n, delta2_n, delta2SE_n, delta3_n, delta3SE_n)
  names(CCC) <- c("n",
                                    "Delta1", "Delta1SE",
                                    "Delta2", "Delta2SE",
                                    "Delta3", "Delta3SE")
 return(CCC)
}

ControlChartConstants = CCC()

# make dataset in /data
usethis::use_data(ControlChartConstants, overwrite = TRUE)
