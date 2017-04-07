---
layout: page
title: Patents
permalink: /patents/

# String filters from https://help.shopify.com/themes/liquid/filters/string-filters
---
{% for patent in site.data.patents %}
  <h3 class="post-title"><a href="{{patent['result link']}}">{{ patent.title | truncatewords: 7}}</a></h3>
  <p class="post-meta">
  <a href="{{patent['result link']}}">{{ patent.id }}</a> • Leugim A. Bustelo, et al • {{patent.assignee}}
  </p>
  <p class="post-meta">
    Granted:
    <time datetime="{{ patent['grant date'] | date_to_xmlschema }}">
          {% assign date_format = site.minima.date_format | default: "%b %-d, %Y" %}
          {{ patent['grant date'] | date: date_format }}
    </time>
  </p>
{% endfor %}
