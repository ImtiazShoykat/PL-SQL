/* Formatted on 2/11/2024 2:49:09 PM (QP5 v5.396) */
WITH
    dpt_id
    AS
        (SELECT department_id
           FROM departments
          FETCH FIRST 2 ROWS ONLY)
SELECT *
  FROM employees e JOIN dpt_id d ON (e.department_id = d.department_id)