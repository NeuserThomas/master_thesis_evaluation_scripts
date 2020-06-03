# Master thesis - automation and parsing scripts

This repository contains the used scripts to automate executions and parsing the results for my master thesis

### routeplanning_automisation.ps1
This Powershell script executes the routeplanning query for different distances (Haversine distances from 15-150 km with 15 km intervals). The routeplanning query is executed 5 times per distance, so a total of 50 executions is done.

#### Usage
```
./routeplanning_automisation.ps1 output_file path_to_index.js_file
```


### parse.pl

This Perl script parses the output coming from the routeplanning_automisation.ps1 script into CSV-formatted files. 

#### Usage

```
perl parse.pl input_file output_file.csv
```
