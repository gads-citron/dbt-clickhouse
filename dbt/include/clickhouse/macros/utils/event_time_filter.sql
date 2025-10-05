-- Macro pour générer un filtre d'événement temporel
{% macro render_event_time_filter(event_time_filter) %}
  {%- if event_time_filter.start and event_time_filter.end -%}
    {{ event_time_filter.field_name }} >= '{{ event_time_filter.start.strftime('%Y-%m-%d %H:%M:%S') }}' and {{ event_time_filter.field_name }} < '{{ event_time_filter.end.strftime('%Y-%m-%d %H:%M:%S') }}'
  {%- elif event_time_filter.start -%}
    {{ event_time_filter.field_name }} >= '{{ event_time_filter.start.strftime('%Y-%m-%d %H:%M:%S') }}'
  {%- elif event_time_filter.end -%}
    {{ event_time_filter.field_name }} < '{{ event_time_filter.end.strftime('%Y-%m-%d %H:%M:%S') }}'
  {%- endif -%}
{% endmacro %}
