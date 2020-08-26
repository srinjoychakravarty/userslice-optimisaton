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
    $ ./abs userslice-optimisaton/revised.abs 15 3 0.006
    ```
    
> :warning: **Note**: The **$ ./abs** here is the _executable_ used to run the **revised.abs** script. The script itsef is placed one level below, in the **userslice-optimisaton** _git_ folder. **15** is the _--loop_cadence flag, **3** is the _--email_threshold flag, and **0.006** is the _--overusage_parameter flag

* **Loop Cadence:** The delay between each run of checking cpu usages of active discovery users
* **Email Threshold:** The number of consecutive strikes against a user running above the allow cpu usage threshold
* **Overusage Parameter:** The percentage of cpu usage taken up by a user's processes on a given login node
