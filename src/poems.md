--- 
title: Poems
layout: default
permalink: /poems/
---

{% for poem in site.poems %}
  <h2><a href="{{ poem.url }}">{{ poem.title }}</a></h2>
{% endfor %}
