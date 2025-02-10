{% macro learn_variables() %}
    {% set your_name_jinja ="soso"%}
    {{log("hello " ~ your_name_jinja, info = True)}}
    {{ log("Hello dbt user" ~ var("user_name", "NoUser"), info = True)}}
{% endmacro %}