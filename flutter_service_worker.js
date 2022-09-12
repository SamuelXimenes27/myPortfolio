'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
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
".git/index": "637a67b1aaa7d0346c5a5595d0b98792",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/config": "6d4d54347148f78bb66b7b149c58b401",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/refs/heads/master": "cffa3f816ca7942c219da6da565287fe",
".git/refs/remotes/origin/master": "cffa3f816ca7942c219da6da565287fe",
".git/COMMIT_EDITMSG": "0372785ec3e69d99405e763aa8a7cae0",
".git/objects/2b/2c3a562b375d8b8666585df340e8f3868f38a8": "92a5ead6e841d0afb413c30b02850499",
".git/objects/d5/a8a7811bda562e9b6b1623ee8a41ddd427f0cb": "955f92f76702a62db2ff4f7f03cac366",
".git/objects/cb/f33bc659157dbe208e960e65d27b67c7a11769": "199e3851e3f66f4e8f994074acda6bc6",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/62/3daac2a6cb1d4ef6a570ca48c6179602257973": "0c5184bd8f9f9ade475229423b16a940",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/87/3e672c16b962a07abb03a7b1c4800a3ea370f6": "bda849ccbcb991ad0c8e701e25c58031",
".git/objects/92/1d093d2a3889b67097380a20faffbbbe557ec9": "b42740743c6f603cd2a925b523f26a1c",
".git/objects/44/918758614dfa6774d3c7496e5ee0c752f7287b": "b39bdd3fe2219bf961f89416ae79073f",
".git/objects/bf/22b90e1603bec3352e7a7792f0ca9a7642fcf6": "08ddc28b97c54e13a0a8bc83fb26495f",
".git/objects/76/8cb3e2d80efbe9c490a859ac3cd85613b81e9d": "14de6db8f3769f436b0dcf6829fa149b",
".git/objects/28/573d165a6a9840efd369b21da407cd6a8d47b9": "7e59edbb760c76e32f14cf522a55f3ba",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/a773e53dc2a5cb85e2bbc6c1917d2c4ba12b16": "821ecb1566133f7b297d1327f487a460",
".git/objects/a7/e76014179d9ce27c3d1810a33fb83a671692e4": "65f3fa6015c67e39e75ca323741414fc",
".git/objects/66/244b0992acb220c8521572d8d2a4285bc6e6d3": "7faa98908caaa2a027c9210695be402c",
".git/objects/35/5025499b5dd9ec45da366265a31ac6984fd8d3": "df787428c20d5b97f64f18c0eff00a49",
".git/objects/57/8c53b67fbafdd3fa30cc6650abd72fc34d182a": "42e92000c36e3f4bc6ba1b3aefe0d5d2",
".git/objects/eb/843ee660bc4688828dc482b42b71dbed33e53a": "4c552a45dd3d77e860026d262adc3f7a",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/59a87aa69e4e705b243a943d391a1abe3482df": "8f1e4359cb8e647551db65546eb728b0",
".git/objects/ef/f4d66c549e506a663c0936d7eab0f2a26b841a": "92ec908c2fc527c67e76c75ce43a8ee3",
".git/objects/d2/a496c43115725fbc49b5a6a99d183139cfaafb": "020e35ebad35ac442a6b5c61576553e8",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/69/d7cf5148eedb9bc3d0304be6412495b277129a": "0c4d7a983a544536b890ac03b2869aee",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/41/4499919422b011970f95d581d606b9e13c262f": "f5d35921bca3376acc709245f5de55d6",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/dc/2530acc06f735d4dbbf11bc8f5824a2493626e": "dae1ecd688bcb6bfebe08074232ed966",
".git/objects/c7/8a22599af955ff440dedd5625edb56f9d87716": "0e4f3fd33e6e88ac654db061cf9333b0",
".git/objects/ed/fc086d226d139826fe3cfff177967b4a4ebcc5": "1e81ebf78e9a28247bc162888ca72840",
".git/objects/da/59fd83e373917bc98e669cbde0901ac1b03e2c": "8e835d38c2952f903c958ba887d6cd8d",
".git/objects/89/acb3f69cb48e0dbe601020bc29328eb3455482": "88bebcd5a5578f2e1c11c76e282c8cae",
".git/objects/0c/86aabb83360d52384ff5833329785fb876f7cb": "4e3780c33ad63f562c8f423b55d8e976",
".git/objects/05/5ad0656e8a8200827f50d197da7e79b04d6fb7": "d0bebe591bf982466fa43b60e9fbcdb9",
".git/objects/a4/9004fc89587f3da8b0061ec2cb74e98da00b04": "0808834d3432cfa1d3e73d711f343b98",
".git/objects/c4/a6118df6408fb3b565c1a6ef5a1a311a03f1b4": "db96ca9dc65e7e71bb8276c495b4f122",
".git/objects/96/23d045c22e82cdea6361454c97399012310bf9": "b87dcc117a6957fcd4ecebf809756acd",
".git/objects/b0/800345ba9410149a2b816c662e51e361acac13": "429305f7a9765e2dd2348f77e328be8d",
".git/objects/23/dfe3529a1e429d602812de2ad03f609d7cdafa": "153f0457ba613642db1db57ad4ba0af9",
".git/objects/7a/9bcc8cc9c9bc617e5f75f1e7df5ed64cc0423a": "b883719f9c2f0ec09074863959661fe2",
".git/objects/b1/a108e4e56a6236c5f999dc81f53afbd9842fde": "47511c2f3688a57cd2fb6f2d9c4d86ab",
".git/objects/f8/743e92bdfa09b3331ad03f21fd19c666d7b5c1": "8713ba827d7b74c9a8458f73239d9e8d",
".git/objects/51/0079d752d0d19dfcd6ee88d95964c176cbe224": "5f7477cf3cb745664f8274f75b859bb1",
".git/objects/00/57e57ca9ad14c4ed61a92fff19d7deb86fb624": "92b30efd7da701a45351a3bcad14d16f",
".git/objects/77/7677d22821bc5324f39dda29ab2f14eb9bbb24": "b46fd7bb937f2b2114541dae54ee451a",
".git/objects/bc/c24d2fbed506ac754145ab2faa69bb2465c8ca": "5776ce6e37bf5d2d4aec1e155b8676d3",
".git/objects/08/dbd60f73766a28b9acf6c92611003d152e70f8": "5318e3e8eea606d579e029e81ecec1bd",
".git/objects/ff/600c19833d4290c4a3ccacf7b1d1b12218c421": "f4dc03663fa69e85b4588e79e09846a9",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/b4/b87bef44dd70c02bfaa74b0582798491140305": "7c0b893df3cc814472cb5f0db45c16e5",
".git/objects/9e/f7d8647aa1f997b9f5a20e1ef48a9e89710f55": "fe45380919fea0ee10ea37714724bf61",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/5a/80fd8ac04f1a2c390b1d2a1a074f03bc270c8e": "3d33624a4a0d90e8e48ff13c7ae6cdf1",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/e0/ba678ce477d9e5c0d8b83e80fc9fa97620b8e7": "fd9984a82da0a75f750f9cf6155a3ff2",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/74/dac8e70dcb9050f9215962378cdc26a65cb331": "d2598d3ae6f633202bde9c1129e13302",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/b12747e8057011b5099be455f0f5c252d88269": "929bfcf275d59481da9dcbd1260fb7ca",
".git/objects/4c/ce0fb55e2ad49e58b50d1639657d799a76658d": "df5435ca9b35e795ac9993a71e6a7208",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/86/c327fdcb88d6b5f8fa3eb89d51bb106b3eac36": "354894a3323ca9479acda20236b9e111",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/FETCH_HEAD": "d41d8cd98f00b204e9800998ecf8427e",
".git/logs/HEAD": "1dd4149737cce37c8d45244768ea9e68",
".git/logs/refs/heads/master": "1dd4149737cce37c8d45244768ea9e68",
".git/logs/refs/remotes/origin/master": "d1bf2f370d78758633d341ee495d3bf9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"main.dart.js": "cd0fbaaee5a9e3cc418509fe4b1b69fd",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "8ea8b37cbb4bee6a501ab50278926b2e",
"assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
"assets/icons/api.png": "e3073de1de0fb3e9f37a03a669119ec4",
"assets/icons/css3.png": "39a3bea9f914b8daa84a5030ed7a7bda",
"assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/icons/kotlin.png": "d75a70756f81f9080f994372b76f9e86",
"assets/icons/javascript.png": "4715b1d788c7fede3d371f8616b893be",
"assets/icons/firebase.png": "b35c3a0429f687d77e15b8753fb9032f",
"assets/icons/ios.png": "009decaa9cf98b38d08b585e12037a8d",
"assets/icons/postgresql.png": "dd857b3a361c981a9607ca32baa97319",
"assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/icons/figma.png": "11c3e804a6f323f3a8acbbaafb26e689",
"assets/icons/graphql.png": "77e609440b8d83cf7eaf52e35d0e232f",
"assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/icons/html5.png": "6c81954123472f6550d6be652503c579",
"assets/NOTICES": "b73c9616a64056a3c73149e22270bd4f",
"assets/shaders/ink_sparkle.frag": "c4f41d77933c2c11d84df7c000cce942",
"assets/images/perfil-2.png": "e509efebbba31fcf8383a08ab0a4d183",
"assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/images/expenseApp.png": "2aa4b55724419ff3c76583b8784ef328",
"assets/images/webPortfolio.png": "4b3462535757d73d20eb3a38bda2f21f",
"assets/images/lapiscoApp.png": "c8b8481656d73e5a5e482da3da776d03",
"assets/assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
"assets/assets/icons/api.png": "e3073de1de0fb3e9f37a03a669119ec4",
"assets/assets/icons/css3.png": "39a3bea9f914b8daa84a5030ed7a7bda",
"assets/assets/icons/linkedin.png": "0dfdf900b4949bfe7a038c3121e99376",
"assets/assets/icons/kotlin.png": "d75a70756f81f9080f994372b76f9e86",
"assets/assets/icons/javascript.png": "4715b1d788c7fede3d371f8616b893be",
"assets/assets/icons/firebase.png": "b35c3a0429f687d77e15b8753fb9032f",
"assets/assets/icons/ios.png": "009decaa9cf98b38d08b585e12037a8d",
"assets/assets/icons/postgresql.png": "dd857b3a361c981a9607ca32baa97319",
"assets/assets/icons/github.png": "357c3c73e054d6b0eb9a10dbf80aca08",
"assets/assets/icons/figma.png": "11c3e804a6f323f3a8acbbaafb26e689",
"assets/assets/icons/graphql.png": "77e609440b8d83cf7eaf52e35d0e232f",
"assets/assets/icons/gmail.png": "52d1c05ae52e61b96c185f27ee17bbec",
"assets/assets/icons/html5.png": "6c81954123472f6550d6be652503c579",
"assets/assets/images/perfil-2.png": "e509efebbba31fcf8383a08ab0a4d183",
"assets/assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/assets/images/expenseApp.png": "2aa4b55724419ff3c76583b8784ef328",
"assets/assets/images/webPortfolio.png": "4b3462535757d73d20eb3a38bda2f21f",
"assets/assets/images/lapiscoApp.png": "c8b8481656d73e5a5e482da3da776d03",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"manifest.json": "060679a5566e9b8f3f4c030447c23949",
"index.html": "9de943113509ba314c7be0727e903601",
"/": "9de943113509ba314c7be0727e903601",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d"
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
