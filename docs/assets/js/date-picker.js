(function () {
  'use strict';

  var posts = window.HZ_POSTS || [];
  var input = document.getElementById('hz-date-input');
  var goBtn = document.getElementById('hz-date-go');
  var msg = document.getElementById('hz-date-msg');
  var quick = document.getElementById('hz-quick');
  if (!input || !goBtn || !posts.length) return;

  // posts 由 Jekyll 按时间倒序输出
  var byDate = {};
  posts.forEach(function (p) {
    if (!byDate[p.date]) byDate[p.date] = p;
  });
  var dates = Object.keys(byDate).sort();          // 升序
  var latest = dates[dates.length - 1];
  var earliest = dates[0];

  input.min = earliest;
  input.max = latest;
  input.value = latest;

  function setMsg(text, kind) {
    msg.textContent = text || '';
    msg.className = 'hz-date-msg' + (kind ? ' hz-date-msg-' + kind : '');
  }

  function nearest(dateStr) {
    var best = null;
    for (var i = dates.length - 1; i >= 0; i--) {
      if (dates[i] <= dateStr) { best = dates[i]; break; }
    }
    return best || earliest;
  }

  function openDate(dateStr) {
    var hit = byDate[dateStr];
    if (hit) {
      setMsg('正在打开 ' + dateStr + ' 的日报…', 'ok');
      window.location.href = hit.url;
      return;
    }
    var fallback = nearest(dateStr);
    setMsg(dateStr + ' 没有生成日报，最近的日报是 ' + fallback + '。', 'warn');
    if (quick) {
      var old = quick.querySelector('.hz-quick-fallback');
      if (old) old.remove();
      var a = document.createElement('a');
      a.className = 'hz-date-btn hz-quick-fallback';
      a.href = byDate[fallback].url;
      a.textContent = '去看 ' + fallback;
      quick.appendChild(a);
    }
  }

  goBtn.addEventListener('click', function () {
    if (!input.value) { setMsg('先选一个日期', 'warn'); return; }
    openDate(input.value);
  });

  input.addEventListener('change', function () {
    if (input.value) openDate(input.value);
  });

  // 最近 7 份快捷入口
  if (quick) {
    var recent = dates.slice(-7).reverse();
    recent.forEach(function (d, idx) {
      var a = document.createElement('a');
      a.className = 'hz-quick-btn' + (idx === 0 ? ' hz-quick-current' : '');
      a.href = byDate[d].url;
      a.textContent = d === latest ? d + '（最新）' : d;
      quick.appendChild(a);
    });
  }
})();
