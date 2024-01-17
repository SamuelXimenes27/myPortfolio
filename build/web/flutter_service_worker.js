'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/assets/icons/javascript.png": "4715b1d788c7fede3d371f8616b893be",
"assets/assets/icons/firebase.png": "b35c3a0429f687d77e15b8753fb9032f",
"assets/assets/icons/graphql.png": "77e609440b8d83cf7eaf52e35d0e232f",
"assets/assets/icons/kotlin.png": "d75a70756f81f9080f994372b76f9e86",
"assets/assets/icons/postgresql.png": "dd857b3a361c981a9607ca32baa97319",
"assets/assets/icons/html5.png": "6c81954123472f6550d6be652503c579",
"assets/assets/icons/ios.png": "009decaa9cf98b38d08b585e12037a8d",
"assets/assets/icons/figma.png": "11c3e804a6f323f3a8acbbaafb26e689",
"assets/assets/icons/logo.png": "9370cbe1fd225705da92fdcfca5fdeed",
"assets/assets/icons/logoHD.png": "255b2f6d02f950274addf100af7fa441",
"assets/assets/icons/css3.png": "39a3bea9f914b8daa84a5030ed7a7bda",
"assets/assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/icons/api.png": "e3073de1de0fb3e9f37a03a669119ec4",
"assets/assets/icons/typescript.png": "05f768342683035cbe9ef4feff66e6b3",
"assets/assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/assets/icons/react.png": "8276b2be784c754f5435d96e0af3c522",
"assets/assets/icons/gitlab.png": "f9d462192895528d7cbb6ac4ffd25741",
"assets/assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
"assets/assets/images/listUser.png": "f9ce66ff602676dee077ab1dec5f745d",
"assets/assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/assets/images/expense2.png": "13fc8f077deff86dff2122d21250c16f",
"assets/assets/images/expense.png": "70267e7953e772ef976ddfe48b024ed5",
"assets/assets/images/currency.png": "500a462fb7e8e8d4f967b2405fe58e5c",
"assets/assets/images/webPortfolio.png": "4b3462535757d73d20eb3a38bda2f21f",
"assets/assets/images/lapiscoApp.png": "c440919bf15b343c3af67869751888e2",
"assets/assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/assets/images/perfil-2.png": "e509efebbba31fcf8383a08ab0a4d183",
"assets/assets/images/expense3.png": "10182ca3ebcf73fec70f4782ae6dc58a",
"assets/assets/images/listUser2.png": "5e6a21b682c755acaef13462f742d1c0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.json": "9bef3a4011c380f569d70531d7c2e269",
"assets/AssetManifest.bin": "cb4bcc64f22b2cbda30c54db6640c7ea",
"assets/fonts/MaterialIcons-Regular.otf": "6cc75af789bbbb196f8d31609e882351",
"assets/NOTICES": "11c25a20e608a9dfa747f4e1e955316c",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin.json": "cfe86bcf950139264338b7acf88c653d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"index.html": "558b4df24a43ef7bcee075372f0ff2c6",
"/": "558b4df24a43ef7bcee075372f0ff2c6",
"main.dart.js": "ab92948337cab7317244feea36efa1c2",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "060679a5566e9b8f3f4c030447c23949"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
