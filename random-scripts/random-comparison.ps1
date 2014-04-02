# Comparison of get-random and system.random
# Joshua Embrey <mrschism@sdf.org>; Joseph Preston <jpreston86@gmail.com>
# 20140402
###############################################################################

$samples = 0

$sr1 = 0
$sr2 = 0
$sr3 = 0
$sr4 = 0
$sr5 = 0
$sr6 = 0
$sr7 = 0
$sr8 = 0
$sr9 = 0
$sr10 = 0

$gr1 = 0
$gr2 = 0
$gr3 = 0
$gr4 = 0
$gr5 = 0
$gr6 = 0
$gr7 = 0
$gr8 = 0
$gr9 = 0
$gr10 = 0

$rnd = new-object system.random


cls
while ($samples -eq 0) {
    $samples = read-host "Sample size"
}

for ($i=1; $i -le $samples; $i++) {
    $sr = $rnd.next(1,11)
    switch ($sr) {
        1  {$sr1++}
        2  {$sr2++}
        3  {$sr3++}
        4  {$sr4++}
        5  {$sr5++}
        6  {$sr6++}
        7  {$sr7++}
        8  {$sr8++}
        9  {$sr9++}
        10 {$sr10++}
    }
    $gr = get-random(1..10)
    switch ($gr) {
        1  {$gr1++}
        2  {$gr2++}
        3  {$gr3++}
        4  {$gr4++}
        5  {$gr5++}
        6  {$gr6++}
        7  {$gr7++}
        8  {$gr8++}
        9  {$gr9++}
        10 {$gr10++}
    }
}
    "Frequency of Encounter:`n"
    "system.random `t`t`tget-random"
    " 1: $("{0,0:N0}" -f $sr1)`t`t`t`t`t $("{0,0:N0}" -f $gr1)"
    " 2: $("{0,0:N0}" -f $sr2)`t`t`t`t`t $("{0,0:N0}" -f $gr2)"
    " 3: $("{0,0:N0}" -f $sr3)`t`t`t`t`t $("{0,0:N0}" -f $gr3)"
    " 4: $("{0,0:N0}" -f $sr4)`t`t`t`t`t $("{0,0:N0}" -f $gr4)"
    " 5: $("{0,0:N0}" -f $sr5)`t`t`t`t`t $("{0,0:N0}" -f $gr5)"
    " 6: $("{0,0:N0}" -f $sr6)`t`t`t`t`t $("{0,0:N0}" -f $gr6)"
    " 7: $("{0,0:N0}" -f $sr7)`t`t`t`t`t $("{0,0:N0}" -f $gr7)"
    " 8: $("{0,0:N0}" -f $sr8)`t`t`t`t`t $("{0,0:N0}" -f $gr8)"
    " 9: $("{0,0:N0}" -f $sr9)`t`t`t`t`t $("{0,0:N0}" -f $gr9)"
    "10: $("{0,0:N0}" -f $sr10)`t`t`t`t`t $("{0,0:N0}" -f $gr10)"
