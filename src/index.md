--- 
title: Home
layout: default
---

{% for post in site.posts %}
  <article style="margin-bottom: 4em;">
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <p class="subtitle">{{post.date | date: "%B %-d, %Y" }}</p>
    {{ post.excerpt }}
    <p><a href="{{ post.url }}">Read More &#8594;</a></p>
  </article>
{% endfor %}
