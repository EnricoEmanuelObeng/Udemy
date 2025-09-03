#

## Aggregate Queries
- Collapse and aggregate values


## Windows Functions 
### Aggregate
- allow to keep the same amount of details by adding new column
- Include aggregate calculations in your queries, without changing output

#### Syntax
**SUM**(SalesYTD) **OVER**()

### Partition By
- aggrehgate totals for groups within our data reteining row-level detail
- Assign each row of the query output to a group, without collapsing data
- 

### Row_number
- Rank records
### RANK
- Like Row_number but groups same rankings and skips ranking order number
### DENSE_RANK
- Like RANK but does not skip ranking order number


### LEAD & LAG
- Get value from subsequent or previous records relative to the position of current record in data
- Useful for comparison

### FIRST_VALUE
- Return first value from a column within that window
- Useful for comparison


















