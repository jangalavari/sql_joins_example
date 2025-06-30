# SQL Joins Example: Customers & Orders

## Objective
Demonstrate the usage of all SQL JOIN types (INNER, LEFT, RIGHT, FULL) for merging data from related tables.

## Tools
- DB Browser for SQLite _or_ MySQL Workbench

## Files
- `create_tables.sql` – Creates `Customers` and `Orders` tables
- `insert_data.sql` – Inserts sample data
- `join_queries.sql` – Example JOIN queries

## Steps

### 1. Create Tables
Run `create_tables.sql` in your SQL environment.

### 2. Insert Sample Data
Run `insert_data.sql` to populate the tables.

### 3. Practice JOIN Queries
Run each query from `join_queries.sql` to see how the different JOINs work.

#### INNER JOIN
Shows only customers who have placed orders.

#### LEFT JOIN
Shows all customers, with orders if present (NULL if no orders).

#### RIGHT JOIN
Shows all orders, with customer info if present (NULL if no matching customer).
> Note: SQLite does not support RIGHT JOIN. Use MySQL or simulate with a UNION.

#### FULL OUTER JOIN
Shows all customers and all orders, matched where possible.
> Note: SQLite does not support FULL OUTER JOIN. Use the provided UNION workaround.

## Example Output

| Name    | Product  | Amount |
|---------|----------|--------|
| Alice   | Laptop   | 1200.0 |
| Alice   | Mouse    | 25.5   |
| Bob     | Keyboard | 45.0   |
| Charlie | Monitor  | 320.0  |
| NULL    | Webcam   | 80.0   |  (for RIGHT/FULL JOIN only)

## Outcome
You’ll master merging data using SQL JOINs.

---