
<!-- README.md is generated from README.Rmd. Please edit that file -->

# targets-demo

<!-- badges: start -->
<!-- badges: end -->

This repo has a minimal demo of using the [`targets` R
package](https://books.ropensci.org/targets/) for workflow management.

## “Real life” examples:

- <https://github.com/BrunaLab/lagged-ipms> (uses HPC to run dynamic
  branches in parallel)
- <https://github.com/odaniel1/track-cycling> (uses `stantargets`)
- <https://github.com/ecohealthalliance/mpx-diagnosis> (medium
  complexity)
- <https://github.com/noamross/reprotemplate> (nice template for
  reproducibility that uses `targets`)

#### Workflow Diagram:

``` mermaid
graph LR
  subgraph legend
    x0a52b03877696646([""Outdated""]):::outdated --- x5b3426b4c7fa7dbc([""Started""]):::started
    x5b3426b4c7fa7dbc([""Started""]):::started --- xbf4603d6c2c2ad6b([""Stem""]):::none
  end
  subgraph Graph
    x5c3cf6a62d99a036(["log_link_glm"]):::outdated --> x1aa14e4024bffa08(["summary_table"]):::outdated
    x5f659d069b8ddeae(["log_lm"]):::outdated --> x1aa14e4024bffa08(["summary_table"]):::outdated
    xb7119b48552d1da3(["data"]):::outdated --> x5c3cf6a62d99a036(["log_link_glm"]):::outdated
    xb7119b48552d1da3(["data"]):::outdated --> x5f659d069b8ddeae(["log_lm"]):::outdated
    x5c3cf6a62d99a036(["log_link_glm"]):::outdated --> xe0fba61fbc506510(["report"]):::outdated
    x5f659d069b8ddeae(["log_lm"]):::outdated --> xe0fba61fbc506510(["report"]):::outdated
    x1aa14e4024bffa08(["summary_table"]):::outdated --> xe0fba61fbc506510(["report"]):::outdated
    x9902c3bf9eac92fd(["data_file"]):::outdated --> xb7119b48552d1da3(["data"]):::outdated
    x793b57f9be3e25d5(["README"]):::started --> x793b57f9be3e25d5(["README"]):::started
  end
  classDef outdated stroke:#000000,color:#000000,fill:#78B7C5;
  classDef started stroke:#000000,color:#000000,fill:#DC863B;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
  linkStyle 1 stroke-width:0px;
  linkStyle 10 stroke-width:0px;
```
