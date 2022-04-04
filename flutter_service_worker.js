'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "7381d24a60d69237699d62c4d4b70bad",
".git/config": "1c8c8b026da1d5a4f496aaa45433cc4f",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "b8c58541ebc517ae828283c3fdeaa554",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/index": "5217afdaa261d4a77bea3e02552ed51d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "8f7fbe2a4bc86eab920546bc0b02ac19",
".git/logs/refs/heads/master": "8f7fbe2a4bc86eab920546bc0b02ac19",
".git/logs/refs/remotes/origin/imgbot": "acb5a5a7c10e2211e4964b72b135cfc9",
".git/logs/refs/remotes/origin/master": "420571a57efda57ae8e5027d26756a10",
".git/objects/00/a6c26284de7fcd96033bc65b159c9030b926c8": "842ffd9741bf165fa4688ec0bae459c1",
".git/objects/09/ac25afa1ef0493c5b59217d2e6bed573811922": "9d98b85483588fb7bb34a2651055f580",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/0f/fe00b92b2e2d21c1f33024760f685cbb7ffdb8": "6655e717f185770489b36816ed0d52de",
".git/objects/16/5bcb5ebfd62f534fec38011c89cd206f72ef64": "680d42ba013b884eafacd7194000f19a",
".git/objects/18/73146451cb66098edb4ea0984b6fb631958151": "52ac4e0bfd0c42ac2725b1015dab4506",
".git/objects/1a/ae36cafd8ca8322113846f4a2c562f4af8c544": "7f59f01273ad3fa75f271b4b329d77fa",
".git/objects/1c/8f5e910bfb1a4a2871eeedc6eae01ca25e7ce1": "7d52f9ae3b3fac811829018aea2c668f",
".git/objects/23/4a1285b3f8492ebb88b269e24d4433a7779266": "aa2adc834565f5e2d8af06fab3aa214d",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/2a/bf03542c17e6f7a7806a226c3be732b51c5a40": "4593012a42df8795cd0ae089a5b7aaaf",
".git/objects/2b/14e77180ac381f96d7f915a355f93238ecd380": "e67de27922b01edb0ec0425ef28edc7b",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/2e/5b9f163d6755786e219b435077d72633c19c18": "3590b084174d12f139d31e94eb0e375a",
".git/objects/2e/b99ad99fe2d4553fee198873c4aca82f74c7be": "3f40631d9cd70fd1fbcc371d41315d74",
".git/objects/30/bf18025083a78c669ed4f951686b2781416d9f": "16a8726f0fe84c9ca94911aef9db98c9",
".git/objects/30/e077764f056dcf33315ed50ef1c6aa8d4e600e": "a09c932925e101c3e327fa96014b0758",
".git/objects/35/acda2fa1196aad98c2adf4378a7611dd713aa3": "b485406370fdb56248ec4e5fc074fb65",
".git/objects/36/a66d86825b713cfcb88779be1b7dc3df83311a": "289f45aa833080a8b57b3dcebbd2e9d0",
".git/objects/39/1b8218b9e7fa00deb499e4b22c3e98221f8e14": "de911eca8167a6fefe4dd7fbcdc98745",
".git/objects/42/41fbdea06dcc3561fc41fbe1f09c7e68ab53ff": "842f37252d01dc1cd97536cf84336fc7",
".git/objects/42/772f984f327e3d1e205c02ec26d501264aeea6": "29b1461dda82b72f65b3df29cd724502",
".git/objects/43/1881bacd96b4e4024aaa0555ac2b9b8f83e997": "f10047d5dceb0b914864f666e3bbfaf6",
".git/objects/43/811dd538d5b0c74f46201228098f302bbf96a2": "5f1263e9ef8fd8893e644402e4c0a090",
".git/objects/44/be93160deaa220068f95ae7227f6985c724442": "43aeb7832fda1b2adc1b11417b1abf79",
".git/objects/46/082e91f9dba8b2dfa81f88d6b12a6dbd6a4623": "ef6206a816799a5ebbf17e10d3bc8c84",
".git/objects/46/b33d840931d8682697bd104eb8a34f0a9d1b07": "e98cf69259cdda80c863f31fee658277",
".git/objects/4d/3ae349a862f5368d59e121287a24793ed85606": "70a02a820d69fa13c9e7e7ea84e87675",
".git/objects/4d/d119932d3ba03fa4dc823d0b76a03b027f9080": "93c8feed8f51380bc338f2c4f3cd3a88",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/52/480a63b1f184ea74afb06662aa98fa98864864": "6f8b2cf71be2b4830601f9db57eded45",
".git/objects/5f/72e9127ffaae2a500cd9d950067f46c21b277c": "9334d3373cb9fc449377becf4cba5477",
".git/objects/65/4b7c9e4e798d32cb33ce7526a9be49d6692a74": "89cdcb427395789b54f39f8973f00600",
".git/objects/67/bd84202ad5b2e307d3b6fac1731c2a5d963e0b": "aa161ace139f434c81be219b6f6205e5",
".git/objects/68/68f7bb64ba71b131690286ddc82aa0f542293e": "b6aeab417f5d5ef28ea070a09b61c7e0",
".git/objects/6b/e32efe3e4dc9a709b06df38b7e6814ea8aff83": "683d2dd587a4e07002854a71b7ce46cb",
".git/objects/6c/ce217ddc2efe3411dc9fa34e294e48e4cdf4f5": "8a6cc32e7f23f25e611213b06bb38448",
".git/objects/6d/920142deabdbb60e8d2cd17bf2157c0be1c16c": "011d86e83772290728c5a47a835dc2fe",
".git/objects/6d/bd60f8133f96b9277645b9ad8f6d753afe0022": "48c9d5622c096a466ac7a0ea20f28b8e",
".git/objects/6e/cb68683477ecc5aed38ec3fc8910d9bb66276c": "8081799c6f0d89b405c8cca2b18cd6da",
".git/objects/70/15564ad166a3e9d88c82f17829f0cc01ebe29a": "b0b4eb8e40c5eaa3b07c9dcc175a4ab8",
".git/objects/71/c0fb805bb0ef871631bd67a8dcc40e44699fd2": "9b9c2254acbb7f29e388d40d6643a5ed",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7e/ce3282a4f7824b249d9e568819d98bd2fa3da6": "8c71b613b9912dfd1fdf473a52e99214",
".git/objects/81/239bb3868d3c11efee91dce1f55fb2159f4805": "c1ab4545c5c4c4754f08613b290bccf0",
".git/objects/81/58f25e836e45d2cc31fc891e47e73a00c82852": "9a2306f183d77fd89a0701d797d830f4",
".git/objects/82/d9094fdf27cf0102182531425289ac2e548a6f": "454f00c762932f7a7069762c8a4ebed2",
".git/objects/8c/c348517458135641c17abe903b47be5f6c0162": "23e30c9e733563abd5683ab39de9f6f2",
".git/objects/8d/cabcd5e97f6b4b9696ced8e628e7dffe65eb2d": "7985220bde3311601da8733976a6390d",
".git/objects/8e/189a1bcd440c9e7b16dff5db3de08bace33bdc": "4042bbbeb9d1d0df4f9fa4cbf924c234",
".git/objects/8e/c832a2b45813b2399100213b55ec79ee5d2b2f": "1c8fd661c06fec6c50924cc0faa3676c",
".git/objects/90/8e2a7954857695b8b9d33659926ce8ce19ee0b": "b38d25ba8359fc6665e92acd8c5b8533",
".git/objects/94/8f0a5d26e899539e7821aa5a500932f76ba582": "e9093d046b81c96e5fd46a48a0b68b11",
".git/objects/99/4761922386f6aa255e2001de5c6ec259f988be": "d3038ff6a7f94b9956aae256f2d25388",
".git/objects/9b/d0b8c3be9c97c10403073cf3e6086e5413afc2": "73d47aa173abf166e2e18e4921762a62",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a3/09313d5fb20765dff1d8f41dbd72c558097611": "ce77a88cc2b115d907f98afb245fa5f6",
".git/objects/a5/aed36117eacadda752272b15190a78eef5e1ab": "83ed35cf5e4c7638a098391488996b24",
".git/objects/a9/e42170968d609459c7839267ba9db7ec525520": "20038604e3395c9be8fff1f0cbb76612",
".git/objects/ae/13962db34f56cfd131fc386293a9d4e213a5ff": "94a0695e14284cd85a796b9ae95ccc98",
".git/objects/b3/38d71036d2fee7d392f4376e6cc88198b5403f": "c6cba94c9d2b62cbd006809d8f341da8",
".git/objects/b4/0580034b5dd89ea99be10de915c2e1bea19447": "2979442a916b62106092cf58d244b550",
".git/objects/b7/b5b5e8144d11cf6a9b31edf7c8f49350da3e50": "db42d7711538afbeb5cbf6649eede073",
".git/objects/c3/a3d3d3283e2313751080267db96ab2f65e7d0a": "473c5069b097732ecb8993aa4ae46815",
".git/objects/c8/0b457bfb1c4e2484d9cdcf911a20fe39cfab05": "b9883718cb1fcd3799648b266a528966",
".git/objects/c8/ba6c5b71b2db6ea4e9a925f3ebcbefad5ebbd3": "3a80080d408beb819f1110d5c74db68a",
".git/objects/c8/df92b853992397794e13e57140bbab28367e15": "4e587a7e4ba7acfc9ac1796c5c862e78",
".git/objects/cf/e2d9f8fd1f1602ac2944104150deb151250322": "138cd42be5f7f5389f94211921b22a97",
".git/objects/e4/ae46c6286b2d6c6676b0c3192fc92876778498": "c1fb9fd9132eb732a1d95b1d7a283648",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/f5/eaf7eb1511bd9532cebfae70e47524663de109": "50b1229f40423533da8629dc65d38889",
".git/objects/fc/963dfe2292c4e241afb5950e063414d544c093": "8cd8693ced3c797431323a7707d38029",
".git/objects/pack/pack-a4e8ab8d5f85ab6d79508a8b0d99c04ab9c1d3b9.idx": "834652bf8d605d426fda73d732040b87",
".git/objects/pack/pack-a4e8ab8d5f85ab6d79508a8b0d99c04ab9c1d3b9.pack": "d8a9922105393ee82978878816d7f54f",
".git/ORIG_HEAD": "f866a6b9bed684bc4f69e2a53ed389c1",
".git/refs/heads/master": "1851f596ab7551d7c7aa3f43359b71f0",
".git/refs/remotes/origin/imgbot": "c61459d556132735b69235992e5bbff6",
".git/refs/remotes/origin/master": "1851f596ab7551d7c7aa3f43359b71f0",
"assets/Artboard.png": "3f627e509cc1dddab57ba48700f664b2",
"assets/AssetManifest.json": "801125fca546f506babac9af4ec061ba",
"assets/branfluenzas.jpg": "b8d0fb82695419d431e187459766ff7d",
"assets/dentify.png": "29eecdc80b8620cbaec13c6c5f1ce742",
"assets/expense.png": "ed0a0053c4bca6e90c78c0fd2cd59d7d",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/kotoko.png": "919ec4b24ab4908cd6eeca5653fe09fe",
"assets/mb-redesign.png": "00c50a2645aa53803e0a6a156a88e6ed",
"assets/mb.png": "b8c3ea55461924a8ddc1effe75bd84ea",
"assets/md.png": "41177dbaaeca0e23b45caf5a6e9291f1",
"assets/md_anim.gif": "96cb5b3fb47934c7e610f4461cf8a917",
"assets/md_memoji.png": "25daee3cfde835c833695026b522eaac",
"assets/news.png": "0d7d9e8007cac975a707eac230ea2bc2",
"assets/NOTICES": "a0734b43f711aa07aaabe825a12bb886",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"assets/tayp.png": "236effecfd52b2818cb1aa682c94b881",
"assets/todo.png": "c4e1285d17312c4ac2b64b96d174b77d",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "db5ffc583eec64bfe33c49effd1048b6",
"icons/Icon-192.png": "db5ffc583eec64bfe33c49effd1048b6",
"icons/Icon-512.png": "db5ffc583eec64bfe33c49effd1048b6",
"index.html": "ef9c5d50b00c23f161c1ee34a9e06d93",
"/": "ef9c5d50b00c23f161c1ee34a9e06d93",
"main.dart.js": "47b34a7189227d287c3288ff463737ff",
"manifest.json": "4776d95f0f3f3917380126e26f2aa195",
"version.json": "e70641c16a5d2f141187baf11e53ebe9"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
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
