// DPS Jabalpur — Digital Infrastructure Register
// Service Worker v1.0

const CACHE_NAME = 'dps-register-v1';
const ASSETS = [
  './index.html',
  './manifest.json',
  './icon-72.svg',
  './icon-96.svg',
  './icon-128.svg',
  './icon-144.svg',
  './icon-152.svg',
  './icon-192.svg',
  './icon-384.svg',
  './icon-512.svg',
];

// ── INSTALL: Cache all files ──
self.addEventListener('install', event => {
  console.log('[SW] Installing...');
  event.waitUntil(
    caches.open(CACHE_NAME).then(cache => {
      console.log('[SW] Caching all assets');
      return cache.addAll(ASSETS);
    }).then(() => self.skipWaiting())
  );
});

// ── ACTIVATE: Clean old caches ──
self.addEventListener('activate', event => {
  console.log('[SW] Activating...');
  event.waitUntil(
    caches.keys().then(keys =>
      Promise.all(
        keys.filter(k => k !== CACHE_NAME).map(k => {
          console.log('[SW] Deleting old cache:', k);
          return caches.delete(k);
        })
      )
    ).then(() => self.clients.claim())
  );
});

// ── FETCH: Serve from cache, fallback to network ──
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request).then(cached => {
      if (cached) {
        // Serve from cache (offline works!)
        return cached;
      }
      // Try network
      return fetch(event.request).then(response => {
        // Cache new responses
        if (response && response.status === 200) {
          const clone = response.clone();
          caches.open(CACHE_NAME).then(cache => cache.put(event.request, clone));
        }
        return response;
      }).catch(() => {
        // If network fails too, return cached index.html
        return caches.match('./index.html');
      });
    })
  );
});

// ── BACKGROUND SYNC: Notify updates ──
self.addEventListener('message', event => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});
