'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"index.html": "c4a03571ef96360ed414a559f127488b",
"/": "c4a03571ef96360ed414a559f127488b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "060679a5566e9b8f3f4c030447c23949",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"main.dart.js": "2757dc12e393ba622b9fb6a9a7838fb3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "c15e9b6d7b141cd2c814527a472347c6",
"assets/NOTICES": "b0d5799575fe8d3df857fdfde36e94ad",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/icons/api.png": "e3073de1de0fb3e9f37a03a669119ec4",
"assets/assets/icons/logoHD.png": "255b2f6d02f950274addf100af7fa441",
"assets/assets/icons/logo.png": "9370cbe1fd225705da92fdcfca5fdeed",
"assets/assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/assets/icons/graphql.png": "77e609440b8d83cf7eaf52e35d0e232f",
"assets/assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
"assets/assets/icons/javascript.png": "4715b1d788c7fede3d371f8616b893be",
"assets/assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/assets/icons/ios.png": "009decaa9cf98b38d08b585e12037a8d",
"assets/assets/icons/firebase.png": "b35c3a0429f687d77e15b8753fb9032f",
"assets/assets/icons/postgresql.png": "dd857b3a361c981a9607ca32baa97319",
"assets/assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/assets/icons/figma.png": "11c3e804a6f323f3a8acbbaafb26e689",
"assets/assets/icons/css3.png": "39a3bea9f914b8daa84a5030ed7a7bda",
"assets/assets/icons/kotlin.png": "d75a70756f81f9080f994372b76f9e86",
"assets/assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/assets/icons/html5.png": "6c81954123472f6550d6be652503c579",
"assets/assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/images/expenseApp.png": "2aa4b55724419ff3c76583b8784ef328",
"assets/assets/images/perfil-2.png": "e509efebbba31fcf8383a08ab0a4d183",
"assets/assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/assets/images/currency.png": "8d59cc37eaae957dd62d4a2554df56c3",
"assets/assets/images/lapiscoApp.png": "c8b8481656d73e5a5e482da3da776d03",
"assets/assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/assets/images/expense.png": "70267e7953e772ef976ddfe48b024ed5",
"assets/assets/images/listUser.png": "e31491690e673e4a8a78746a5a6832ae",
"assets/assets/images/webPortfolio.png": "4b3462535757d73d20eb3a38bda2f21f"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
