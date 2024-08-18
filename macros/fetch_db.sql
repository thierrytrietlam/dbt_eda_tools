
{% macro fetch_db() %}
        {{ adapter.dispatch('fetch_db')() }}
{% endmacro %}

{% macro bigquery__fetch_db() %}

        {%- do return ('bigquery') -%}


{% endmacro %}

{% macro snowflake__fetch_db() %}

        {%- do return ('snowflake') -%}

{% endmacro %}

{% macro default__fetch_db()%}

        {%- do return ('rest') -%}

{% endmacro %}
