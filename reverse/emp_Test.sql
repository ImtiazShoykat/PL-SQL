/* Formatted on 2/11/2024 12:54:31 PM (QP5 v5.396) */
/* Filtering data without where clause */

SELECT department_name,
       last_name,
       salary,
       d.department_id,
       e.department_id
  FROM employees  e
       JOIN departments d
           ON     (e.department_id = d.department_id)
              AND d.department_id IN (90, 60)

              /* Comment testing */