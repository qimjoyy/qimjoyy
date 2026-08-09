-- Example schema used by this portfolio:
-- log_in_attempts(event_id, username, login_date, login_time, success, country, department)
-- employees(employee_id, username, department, device_id)
-- machines(device_id, operating_system, patch_status)

-- 1. Failed login attempts
SELECT *
FROM log_in_attempts
WHERE success = 0;

-- 2. Failed login attempts after 18:00
SELECT *
FROM log_in_attempts
WHERE success = 0
  AND login_time > '18:00:00';

-- 3. Activity on either of two investigation dates
SELECT *
FROM log_in_attempts
WHERE login_date = '2026-07-26'
   OR login_date = '2026-07-27';

-- 4. Activity outside Malaysia
SELECT *
FROM log_in_attempts
WHERE country <> 'Malaysia';

-- 5. Finance or Sales department activity
SELECT *
FROM log_in_attempts
WHERE department = 'Finance'
   OR department = 'Sales';

-- 6. All departments except IT
SELECT *
FROM log_in_attempts
WHERE department <> 'IT';

-- 7. Match employees with their assigned machines
SELECT
    e.username,
    e.department,
    m.device_id,
    m.operating_system,
    m.patch_status
FROM employees AS e
INNER JOIN machines AS m
    ON e.device_id = m.device_id;

-- 8. Identify machines that require patching
SELECT
    e.username,
    e.department,
    m.device_id,
    m.operating_system
FROM employees AS e
INNER JOIN machines AS m
    ON e.device_id = m.device_id
WHERE m.patch_status = 'Missing';

