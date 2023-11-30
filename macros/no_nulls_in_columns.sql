-- the loop is iterating over column objects, and col.column is giving you the name of each column in the model. 
-- the hyphen(-) at the end of line 5 means that you want to trim of white spaces, to create a single line expretion.
{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
    {% for col in adapter.get_columns_in_relation(model) -%}
        {{ col.column }} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}