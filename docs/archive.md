---
layout: default
title: 历史日报
---

# 历史日报 Archive

<p><a class="hz-date-btn hz-date-ghost" href="{{ '/' | relative_url }}">← 返回首页 Home</a></p>

<p>共 {{ site.posts | size }} 期日报。点日期即可打开当天内容。</p>

{% assign by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
{% for year in by_year %}
## {{ year.name }} 年

{% assign by_month = year.items | group_by_exp: "post", "post.date | date: '%m'" %}
{% for month in by_month %}
### {{ year.name }}-{{ month.name }} <small>（{{ month.items | size }} 期）</small>

{% for post in month.items %}
<div class="hz-archive-item"><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }}</a><span>{{ post.lang | upcase }}</span></div>
{% endfor %}

{% endfor %}
{% endfor %}
