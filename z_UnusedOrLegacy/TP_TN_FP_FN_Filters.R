# Tallying TP,TN,FP,FN

library("tidyverse")
patma <- read_csv("data/TpitAddedVillaUpdate.csv")

#######################################################################
SF1TruePos <- filter(patma, finDx == "GON" & SF1Median > 4)
SF1TruePos
count(SF1TruePos)

SF1FalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & SF1Median > 4)
SF1FalsePos
count(SF1FalsePos)

SF1TrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & SF1Median <5)
SF1TrueNeg
count(SF1TrueNeg)

SF1FalseNeg <- filter(patma, finDx == "GON" & SF1Median <5)
SF1FalseNeg
count(SF1FalseNeg)
#######################################################################
ERTruePos <- filter(patma, finDx == "GON" & ERMedian > 4)
ERTruePos
count(ERTruePos)

ERFalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & ERMedian > 4)
ERFalsePos #trouble with this one... contains a lot of PRL variants
ERFalsePos <- filter(ERFalsePos, PRLMedian < 5)
count(ERFalsePos)

ERTrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & ERMedian <5)
ERTrueNeg
count(ERTrueNeg)

ERFalseNeg <- filter(patma, finDx == "GON" & ERMedian <5)
ERFalseNeg
count(ERFalseNeg)

#######################################################################
ASUTruePos <- filter(patma, finDx == "GON" & ASUMedian > 4)
ASUTruePos
count(ASUTruePos)

ASUFalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & ASUMedian > 4)
ASUFalsePos 
ASUFalsePos <- filter(ASUFalsePos, TSHMedian < 5)#this filter excludes TSH-immunoreactive cases, known to also have ASU
count(ASUFalsePos)

ASUTrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & ASUMedian <5)
ASUTrueNeg
count(ASUTrueNeg)

ASUFalseNeg <- filter(patma, finDx == "GON" & ASUMedian <5)
ASUFalseNeg
count(ASUFalseNeg)

#######################################################################
FSHTruePos <- filter(patma, finDx == "GON" & FSHMedian > 4)
FSHTruePos
count(FSHTruePos)

FSHFalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & FSHMedian > 4)
FSHFalsePos
count(FSHFalsePos)

FSHTrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & FSHMedian <5)
FSHTrueNeg
count(FSHTrueNeg)

FSHFalseNeg <- filter(patma, finDx == "GON" & FSHMedian <5)
FSHFalseNeg
count(FSHFalseNeg)

#######################################################################
LHTruePos <- filter(patma, finDx == "GON" & LHMedian > 4)
LHTruePos
count(LHTruePos)

LHFalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & LHMedian > 4)
LHFalsePos
count(LHFalsePos)

LHTrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & LHMedian <5)
LHTrueNeg
count(LHTrueNeg)

LHFalseNeg <- filter(patma, finDx == "GON" & LHMedian <5)
LHFalseNeg
count(LHFalseNeg)

#######################################################################
GATA3TruePos <- filter(patma, finDx == "GON" & GATA3Median > 4)
GATA3TruePos
count(GATA3TruePos)

GATA3FalsePos <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & GATA3Median > 4)
GATA3FalsePos
count(GATA3FalsePos)

GATA3TrueNeg <- filter(patma, !finDx  %in% c("GON", "PlurGH", "PlurGH+") & GATA3Median <5)
GATA3TrueNeg
count(GATA3TrueNeg)

GATA3FalseNeg <- filter(patma, finDx == "GON" & GATA3Median <5)
GATA3FalseNeg
count(GATA3FalseNeg)