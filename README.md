# User Slice Optimisation

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

1. Flagging Users when CPU usage surpasses 30% for over 2 minutes

### IDE 

* ABS Code built and run using Visual Studio Code 

### Prerequisites and Running on Discovery Cluster

1. Download the latest release of ABS from Github
    ```sh
    $ bash <(curl https://www.abs-lang.org/installer.sh)
    ```

2. Run ABS scripts with flags
    ```sh
    $ ./abs userslice-optimisaton/revised.abs 4 9 0.008
    ```
    
> :warning: **Note**: The **$ ./abs** here is the _executable_ used to run the **revised.abs** script. The script itsef is placed one level below, in the **userslice-optimisaton** _git_ folder. 

#### Sample Flags (explained)

1. **4** is the **--loop_cadence** flag _i.e. loop over active discovery user slices every 4 seconds_
> **Loop Cadence:** The delay between each run of checking cpu usages of active discovery users

2. **9** is the **--email_threshold** flag _i.e. email infringing users a friendly warning after 9 consecutive iterations of cpu overusage_
> **Email Threshold:** The number of consecutive strikes against a user running above the allow cpu usage threshold

3. **0.008** is the **--overusage_parameter** flag _i.e. the threshold set by the system administrator as acceptable single-user cpu utilization of a login node_
> **Overusage Parameter:** The percentage of cpu usage taken up by a user's processes on a given login node



