
<!-- README.md is generated from README.Rmd. Please edit that file -->

# targets-demo

<!-- badges: start -->
<!-- badges: end -->

Minimal demo of the `targets` R package.

#### Workflow Diagram:

``` mermaid
graph LR
  subgraph legend
    x7420bd9270f8d27d([""Up to date""]):::uptodate --- x5b3426b4c7fa7dbc([""Started""]):::started
    x5b3426b4c7fa7dbc([""Started""]):::started --- xbf4603d6c2c2ad6b([""Stem""]):::none
  end
  subgraph Graph
    x91ab60ce02b784dc(["m1"]):::uptodate --> xce932be5e2ca916b(["summary_df"]):::uptodate
    xdb805eb4c75210a1(["m2"]):::uptodate --> xce932be5e2ca916b(["summary_df"]):::uptodate
    x91ab60ce02b784dc(["m1"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    xdb805eb4c75210a1(["m2"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    xce932be5e2ca916b(["summary_df"]):::uptodate --> xe0fba61fbc506510(["report"]):::uptodate
    x9902c3bf9eac92fd(["data_file"]):::uptodate --> xb7119b48552d1da3(["data"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> x91ab60ce02b784dc(["m1"]):::uptodate
    xb7119b48552d1da3(["data"]):::uptodate --> xdb805eb4c75210a1(["m2"]):::uptodate
    x793b57f9be3e25d5(["README"]):::started --> x793b57f9be3e25d5(["README"]):::started
  end
  classDef uptodate stroke:#000000,color:#ffffff,fill:#354823;
  classDef started stroke:#000000,color:#000000,fill:#DC863B;
  classDef none stroke:#000000,color:#000000,fill:#94a4ac;
  linkStyle 0 stroke-width:0px;
  linkStyle 1 stroke-width:0px;
  linkStyle 10 stroke-width:0px;
```
