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

2. Run ABS scripts with --first_delay flag to indicate the duration at which to measure users with over 30% cpu usage and --second delay flag to indicate the duration ater which to send offending users a friendly warning
    ```sh
    $ ./abs userslice-optimisaton/revised.abs 4 10
    ```
    
**Note** :warning: The **./abs** here is the _executable_ used to run the **revised.abs** script, which is placed one level below inside the **userslice-optimisaton** github repo folder. The **4** is the **--first_delay** flag and the **10** is the **--second_delay** flag chosen as examples
