#

## SUBQUERIES

### Correlated Subqueries
- Run once for each record in the main or outer query
- They return a scalar output
- Can be used in SELECT or WHERE clauses

### Exists & NOT EXISTS
- Apply criteria to fields from a secondary table but dont need to include those fields
- Apply criteria to fields from a secondary table, ensuring multiple matches in the secondary table won't duplicate
- Check a secondary table to ensure a match does not exist

### XML PATH with STUFF
- 