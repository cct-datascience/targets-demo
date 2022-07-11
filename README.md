
<!-- README.md is generated from README.Rmd. Please edit that file -->

# targets-demo

<!-- badges: start -->
<!-- badges: end -->

Minimal demo of the `targets` R package.

#### Workflow Diagram:

── Attaching packages ─────────────────────────────────────── tidyverse
1.3.1 ── ✔ ggplot2 3.3.6 ✔ purrr 0.3.4 ✔ tibble 3.1.7 ✔ dplyr 1.0.9 ✔
tidyr 1.2.0 ✔ stringr 1.4.0 ✔ readr 2.1.2 ✔ forcats 0.5.1 ── Conflicts
────────────────────────────────────────── tidyverse_conflicts() ── ✖
dplyr::filter() masks stats::filter() ✖ dplyr::lag() masks stats::lag()

``` mermaid
graph LR
  subgraph legend
    x0a52b03877696646([""Outdated""]):::outdated --- x5b3426b4c7fa7dbc([""Started""]):::started
    x5b3426b4c7fa7dbc([""Started""]):::started --- xbf4603d6c2c2ad6b([""Stem""]):::none
  end
  subgraph Graph
    x9902c3bf9eac92fd(["data_file"]):::outdated --> xb7119b48552d1da3(["data"]):::outdated
    xb7119b48552d1da3(["data"]):::outdated --> x91ab60ce02b784dc(["m1"]):::outdated
    xb7119b48552d1da3(["data"]):::outdated --> xdb805eb4c75210a1(["m2"]):::outdated
    x793b57f9be3e25d5(["README"]):::started --> x793b57f9be3e25d5(["README"]):::started
  end
  classDef outdated stroke:#000000,color:#000000,fill:#78B7C5;
  classDef started stroke:#000000,color:#000000,fill:#DC863B;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
  linkStyle 1 stroke-width:0px;
  linkStyle 5 stroke-width:0px;
```
