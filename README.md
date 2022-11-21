
<!-- README.md is generated from README.Rmd. Please edit that file -->

# targets-demo

<!-- badges: start -->
<!-- badges: end -->

This repo has a minimal demo of using the [`targets` R
package](https://books.ropensci.org/targets/) for workflow management
using data from the `palmerpenguins` package. Check out the
[manual](https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline)
for instructions on how to run the pipeline.

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
    x800d4e87e728d3ba(["bill_lm"]):::uptodate --> x9e321d1f4f8e030d(["bill_table"]):::uptodate
    x06dadf719761c06e(["flipper_lm"]):::uptodate --> x72b7a7fe923e4c45(["flipper_table"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> x06dadf719761c06e(["flipper_lm"]):::uptodate
    x9e321d1f4f8e030d(["bill_table"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    x72b7a7fe923e4c45(["flipper_table"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    xceb68984bc4f0d38(["data_raw"]):::uptodate --> xb7119b48552d1da3(["data"]):::uptodate
    x9902c3bf9eac92fd(["data_file"]):::uptodate --> xceb68984bc4f0d38(["data_raw"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> x800d4e87e728d3ba(["bill_lm"]):::uptodate
  end
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
```
