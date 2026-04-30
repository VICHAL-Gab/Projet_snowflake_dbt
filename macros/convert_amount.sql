{% macro convert_amount(column_name) %}

    case
        when {{ column_name }} is null then 0
        else round(cast({{ column_name }} as float), 2)
    end

{% endmacro %}