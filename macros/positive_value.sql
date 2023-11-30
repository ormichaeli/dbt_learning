-- the name of the test doesnt have to be the same as the .sql file name.

{% test positive_value(model, column_name) %}
SELECT
    *
FROM
    {{ model }}
WHERE
    {{ column_name}} < 1
{% endtest %}