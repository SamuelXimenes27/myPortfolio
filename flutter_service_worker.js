'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "README.md": "0195b28ed572bb90cd0eb2d280603a2e",
".git/HEAD": "cdc6e77564d392632d1d3162ecd18e1f",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "db4d62db2039e4bec38baa7567788284",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/index": "91820e208a0b16296f391d16cb8623bd",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/ORIG_HEAD": "b38b026c3c1809197799231aec5be77b",
".git/config": "8432aabce7e2e4d4d2e3e71a5f33f2d6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/refs/heads/origin/develop": "2d0f7c5fc8c19d934f2d5a63670c9ef1",
".git/refs/heads/main": "b38b026c3c1809197799231aec5be77b",
".git/refs/heads/develop": "8c6068e41ae86f4fc6820309a4ddf8d1",
".git/refs/remotes/origin/main": "b38b026c3c1809197799231aec5be77b",
".git/refs/remotes/origin/develop": "8c6068e41ae86f4fc6820309a4ddf8d1",
".git/COMMIT_EDITMSG": "722d9acb2852d6bf8df658c0e80487a1",
".git/objects/cb/f33bc659157dbe208e960e65d27b67c7a11769": "199e3851e3f66f4e8f994074acda6bc6",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/b8/5d83a2086965db566dc8ef729b10679f4a216f": "ee80690197f1eb226187ba0389dbc29b",
".git/objects/c0/48b6bff54cac275996800e076d9f5d95170ad5": "fc2d4fbbc0820384783c2e17afd44d21",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/28/573d165a6a9840efd369b21da407cd6a8d47b9": "7e59edbb760c76e32f14cf522a55f3ba",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/57/8c53b67fbafdd3fa30cc6650abd72fc34d182a": "42e92000c36e3f4bc6ba1b3aefe0d5d2",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/df/4e95ba7381223cb34941d75a96829cdafef3c6": "c0e41db82c0f83b8945fc4455bbb1ba5",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/ef/f4d66c549e506a663c0936d7eab0f2a26b841a": "92ec908c2fc527c67e76c75ce43a8ee3",
".git/objects/70/b62afe5950f0df9cae814dc3af48219d517400": "ff247f9fc0d687e103e21c0fcaf14b70",
".git/objects/5c/903fa74706a5009943c2f8435dd73d32539f91": "8a31310a20ea0e77a38feaa93830d44e",
".git/objects/39/1560687f8d83c78be81c72909fb7ef3354a8ef": "751e6de84b5655367f554c3f021f185e",
".git/objects/39/4789872945fb99933f4d5532b512b582cc0240": "2f1430dd10c89f69b2ff96124e74f913",
".git/objects/d2/a496c43115725fbc49b5a6a99d183139cfaafb": "020e35ebad35ac442a6b5c61576553e8",
".git/objects/67/149b3c66259b9ee825e43b6112a6045903c9fe": "f137e88e6ef6dfd1beb02b2f426a66a5",
".git/objects/97/147925e2ef386b43f49b90f138f73bac75d31d": "e525bdbc23fb7f73dfb97a9341a2e988",
".git/objects/49/9b1025520fbc3f108a233494de49b1e49a3e8d": "c24e35bee9e0f9d1b5f46ee099f2c4a2",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ed/b4ce991ab91dd1cf02f9389df47a878d949854": "70a96733e9d81f4465ef704b368a3852",
".git/objects/64/d6c3a24d6b4999ade96dc8256a709d8f749446": "cd02cf4367dce40ee5a56b657cca51af",
".git/objects/f5/4e2e5db5cf94fdffaa5e9b78d7f5d8fb174c14": "07dd0ff46ebb7eda2bdc11bc61073533",
".git/objects/0c/04f8f365dce00f23e02bf727a4aa24030f05fc": "dd7d1101eeb3cefeda5488b452d83518",
".git/objects/22/52bb5101b2c1d27fec6a467bbdc9d5b80c6481": "a6d06a0c29ad0377cef0c53e4a622768",
".git/objects/22/655ade959a6155ce878c02c109d7f118eb4f19": "8678803631a33f478bcd31ea2733afdf",
".git/objects/05/5b98ec6945da8eb4e2bda03a367e67dfbf3687": "76d7e1e0ac0001a1fea5948c82d9f552",
".git/objects/e9/2487f46e1f222acbec6a4bf9ecefaccbde7d4b": "e72de8cfd30d5e80fb050d96c1c9bbf4",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/23/98cba90b0a449a9570d61afdac15767ad11422": "3089651aa2d23f9e474fbbb19b395cad",
".git/objects/7a/01e647ae21535cf999447e31cef4993a29049b": "a5704d05830c42d9ff006183d98d7e4c",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/0f/40cda5fd00231ec39115a4fc8dcef0054df1d6": "c3be653b7c833b659c1d30870a202aa7",
".git/objects/0f/bb32a9f476801a54efbce932b8e0e30795ede8": "3011d41f1c4c67ccedc1680f2d68cd09",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/cd/54a74255c5f051fc5742c15b3360aad00247ba": "fb04726762520dba83e99ef54d738dc6",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/fe/8ea367b7b7e4e0f99f11241310cafac10e0dba": "286a377b7cb1db82e64276521b8a2e6b",
".git/objects/fd/fc34fecdb784032d03dd4e3b75a01e75e89999": "02bad71cfb1c6f95489f62012f0403f8",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/17/c6d68e4ef266e9f1f50b4f68be3dbae3a6a0db": "0942276cb01dacdce7356253c0d62679",
".git/objects/ce/23c11a951bc78bf6e51ca7d762d4261d54855c": "5d3ca30dc0155a8e2fc5accc08c4dca0",
".git/objects/e4/36a62d97a50a0e8bb17268758d9270d64c7d15": "fcac22e8b603d3168bb44f4fc3206d06",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d1a8dc787ae5213e16d6eb4c1770c58862871b": "05304432bf2a447d09f8c15f3128d3b8",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/ac/40c64867810004bae9faa3ac634221c5b1f165": "4de5be51420c44dd784a51b0e252a30d",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/FETCH_HEAD": "160355c0f6de6b74f0a68f11e9f62a4e",
".git/logs/HEAD": "cc6e9e907728ccb4280302a43831e664",
".git/logs/refs/heads/origin/develop": "07fbf8fff6ecd5c62e4ed96198a5a7c1",
".git/logs/refs/heads/main": "d387699e62fc3cfaa3156420b9831c20",
".git/logs/refs/heads/develop": "4725203979a18d9c7605aeea96401bec",
".git/logs/refs/remotes/origin/main": "4a2bd1a33b0666baf509adbd8cbd07b9",
".git/logs/refs/remotes/origin/develop": "a69212628426c10ae0e0f468758dbb7f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"main.dart.js": "c6e71ee7d8f091aec62156f4b9b2fd4b",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "457c1277e7a180eb62deb2fb2f1f69dc",
"assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/NOTICES": "8ebb43da9e264495e335b89239bdd754",
"assets/images/perfil-2.jpg": "0aef39481b48b1024f796b9394345af9",
"assets/assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/assets/images/perfil-1.png": "33bd0bdff5cb1b184c6def34b5df3292",
"assets/assets/images/4428861-removebg-preview.png": "e72247e59e9cfd0a7c7c2f8b97594f53",
"assets/assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"manifest.json": "060679a5566e9b8f3f4c030447c23949",
"index.html": "0972446e933c165fe742e4a7164aa5da",
"/": "0972446e933c165fe742e4a7164aa5da",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
