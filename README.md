
<!-- README.md is generated from README.Rmd. Please edit that file -->

# targets-demo

<!-- badges: start -->
<!-- badges: end -->

This repo has a minimal demo of using the [`targets` R
package](https://books.ropensci.org/targets/) for workflow management.
Check out the
[manual](https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline)
fir instructions on how to run the pipeline.

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
    x7420bd9270f8d27d([""Up to date""]):::uptodate --- xbf4603d6c2c2ad6b([""Stem""]):::none
  end
  subgraph Graph
    x5c3cf6a62d99a036(["log_link_glm"]):::uptodate --> x1aa14e4024bffa08(["summary_table"]):::uptodate
    x5f659d069b8ddeae(["log_lm"]):::uptodate --> x1aa14e4024bffa08(["summary_table"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> x5c3cf6a62d99a036(["log_link_glm"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> x5f659d069b8ddeae(["log_lm"]):::uptodate
    x5c3cf6a62d99a036(["log_link_glm"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    x5f659d069b8ddeae(["log_lm"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    x1aa14e4024bffa08(["summary_table"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    x9902c3bf9eac92fd(["data_file"]):::uptodate --> xb7119b48552d1da3(["data"]):::uptodate
  end
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
```
