
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nycsquirrels18

<!-- badges: start -->

<!-- badges: end -->

The goal of nycsquirrels18 is to make it easy for R users to use data
from [The Squirrel Census](https://www.thesquirrelcensus.com/). Data
come from
[here](https://data.cityofnewyork.us/Environment/2018-Central-Park-Squirrel-Census-Squirrel-Data/vfnx-vebw).

## Installation

You can install the the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mine-cetinkaya-rundel/nycsquirrels18")
```

## Example

Load and skim the data:

``` r
library(nycsquirrels18)
library(skimr)
library(knitr)

skim(squirrels)
#> Skim summary statistics
#>  n obs: 3023 
#>  n variables: 35 
#> 
#> ── Variable type:character ───────────────────────────────────────────────────────────────
#>                                    variable missing complete    n min max empty n_unique
#>            above_ground_sighter_measurement     114     2909 3023   1   5     0       41
#>                                         age     121     2902 3023   1   8     0        3
#>                                 color_notes    2841      182 3023   3 153     0      135
#>  combination_of_primary_and_highlight_color       0     3023 3023   1  27     0       22
#>                                     hectare       0     3023 3023   3   3     0      339
#>                         highlight_fur_color    1086     1937 3023   4  22     0       10
#>                                    location      64     2959 3023  12  12     0        2
#>                            other_activities    2586      437 3023   4 132     0      307
#>                          other_interactions    2783      240 3023   2 106     0      197
#>                           primary_fur_color      55     2968 3023   4   8     0        3
#>                                       shift       0     3023 3023   2   2     0        2
#>                           specific_location    2547      476 3023   4 102     0      304
#>                          unique_squirrel_id       0     3023 3023  13  14     0     3018
#> 
#> ── Variable type:Date ────────────────────────────────────────────────────────────────────
#>  variable missing complete    n        min        max     median n_unique
#>      date       0     3023 3023 2018-10-06 2018-10-20 2018-10-12       11
#> 
#> ── Variable type:logical ─────────────────────────────────────────────────────────────────
#>       variable missing complete    n    mean                       count
#>     approaches       0     3023 3023 0.059    FAL: 2845, TRU: 178, NA: 0
#>        chasing       0     3023 3023 0.092    FAL: 2744, TRU: 279, NA: 0
#>       climbing       0     3023 3023 0.22     FAL: 2365, TRU: 658, NA: 0
#>         eating       0     3023 3023 0.25     FAL: 2263, TRU: 760, NA: 0
#>       foraging       0     3023 3023 0.47    FAL: 1588, TRU: 1435, NA: 0
#>    indifferent       0     3023 3023 0.48    FAL: 1569, TRU: 1454, NA: 0
#>           kuks       0     3023 3023 0.034    FAL: 2921, TRU: 102, NA: 0
#>          moans       0     3023 3023 0.00099    FAL: 3020, TRU: 3, NA: 0
#>          quaas       0     3023 3023 0.017     FAL: 2973, TRU: 50, NA: 0
#>        running       0     3023 3023 0.24     FAL: 2293, TRU: 730, NA: 0
#>      runs_from       0     3023 3023 0.22     FAL: 2345, TRU: 678, NA: 0
#>     tail_flags       0     3023 3023 0.051    FAL: 2868, TRU: 155, NA: 0
#>  tail_twitches       0     3023 3023 0.14     FAL: 2589, TRU: 434, NA: 0
#> 
#> ── Variable type:numeric ─────────────────────────────────────────────────────────────────
#>                 variable missing complete    n     mean       sd       p0      p25      p50      p75     p100     hist
#>       borough_boundaries       0     3023 3023     4      0          4        4        4        4        4    ▁▁▁▇▁▁▁▁
#>   city_council_districts       0     3023 3023    19.07   1.35      19       19       19       19       51    ▇▁▁▁▁▁▁▁
#>      community_districts       0     3023 3023    19      0.23      11       19       19       19       23    ▁▁▁▁▁▇▁▁
#>  hectare_squirrel_number       0     3023 3023     4.12   3.1        1        2        3        6       23    ▇▅▂▁▁▁▁▁
#>                      lat       0     3023 3023    40.78   0.01      40.76    40.77    40.78    40.79    40.8  ▆▇▇▅▂▅▆▅
#>                     long       0     3023 3023   -73.97   0.0077   -73.98   -73.97   -73.97   -73.96   -73.95 ▃▆▇▆▅▆▅▂
#>         police_precincts       0     3023 3023    13      0.22      10       13       13       13       18    ▁▁▇▁▁▁▁▁
#>                zip_codes    3014        9 3023 11828.22 995.98   10090    12081    12420    12423    12423    ▃▁▁▁▁▁▃▇
```
