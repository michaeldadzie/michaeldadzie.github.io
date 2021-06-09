'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "ae7052e2b7e4398560faa0c9dce83d81",
".git/config": "6f28964c0407ebd4049a98ff686fa841",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "95feb7e2fcab46656273a14bce07a3d4",
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
".git/index": "cb99dd7ca1efc8ea9e1f3cad19146a32",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "5d765b0ab1d0977ba600fbb61a0f4253",
".git/logs/refs/heads/master": "5d765b0ab1d0977ba600fbb61a0f4253",
".git/logs/refs/remotes/origin/imgbot": "7b9efd9bdaa29f66fa925bf30b273b47",
".git/logs/refs/remotes/origin/master": "563d25b4ed7b92b9830a75deefcad8cc",
".git/objects/09/ac25afa1ef0493c5b59217d2e6bed573811922": "9d98b85483588fb7bb34a2651055f580",
".git/objects/0b/97702b0e123e2bf402c26a8ff93316cc94798c": "f678ba2fcaee78edfb2a59b09cf3f030",
".git/objects/0f/fe00b92b2e2d21c1f33024760f685cbb7ffdb8": "6655e717f185770489b36816ed0d52de",
".git/objects/13/5a3f566ef0f67f055309dc4ab65aa26ac69967": "b9e902e0488ad9c20b4e1c6698a09098",
".git/objects/16/5bcb5ebfd62f534fec38011c89cd206f72ef64": "680d42ba013b884eafacd7194000f19a",
".git/objects/16/a8887d428326f710b114db49d8087d23fca104": "22996bd1ef522169978dfb9622125390",
".git/objects/18/73146451cb66098edb4ea0984b6fb631958151": "52ac4e0bfd0c42ac2725b1015dab4506",
".git/objects/19/07b1dfe8ce1423093792751a0e8b569a60e4f6": "c203f797c2dd800cbadf7d6e68372b34",
".git/objects/1a/ae36cafd8ca8322113846f4a2c562f4af8c544": "7f59f01273ad3fa75f271b4b329d77fa",
".git/objects/1c/8f5e910bfb1a4a2871eeedc6eae01ca25e7ce1": "7d52f9ae3b3fac811829018aea2c668f",
".git/objects/1e/b8814bff6c6f9000a5693ecb297ee048715fd2": "06f1ac0ba2e82e824f5d864bde02082c",
".git/objects/21/9b6e4d3ce1c4ffadea1b6a8fb7e24f2733bdf4": "a8af84bf89255a27249d59aa5442841d",
".git/objects/23/4a1285b3f8492ebb88b269e24d4433a7779266": "aa2adc834565f5e2d8af06fab3aa214d",
".git/objects/2a/bf03542c17e6f7a7806a226c3be732b51c5a40": "4593012a42df8795cd0ae089a5b7aaaf",
".git/objects/30/bf18025083a78c669ed4f951686b2781416d9f": "16a8726f0fe84c9ca94911aef9db98c9",
".git/objects/35/acda2fa1196aad98c2adf4378a7611dd713aa3": "b485406370fdb56248ec4e5fc074fb65",
".git/objects/37/31b0e3ea27690001d56750ba43f47a69617f83": "69465737154fe8cba24ae22f0b6f9295",
".git/objects/39/1b8218b9e7fa00deb499e4b22c3e98221f8e14": "de911eca8167a6fefe4dd7fbcdc98745",
".git/objects/41/35eaab103bad37ea7eed7d43c4b3a5e44d58ff": "a6968866248b134dc59f3c263713f5bf",
".git/objects/43/ebc22fbd43d9619a6de6b1c0ced88167f302dc": "413cdcc3be6d550282315dcb4cd4c197",
".git/objects/46/b33d840931d8682697bd104eb8a34f0a9d1b07": "e98cf69259cdda80c863f31fee658277",
".git/objects/48/4b7a4748e3289108f44dc2450a82ee0e0e02d5": "5b29be301f346aa07c17fbff0edcad37",
".git/objects/50/49adf9fb4dd237cb5a4dd4aab08c3483e531d6": "ee6601c6a59df3c1fbadc3e3da07a1a9",
".git/objects/51/9b2e4379f400ecae39cd1b182ff3c952821dad": "05a18124f1641e431bc6dab2b4c1feb3",
".git/objects/5c/ab0f911f7e40e0eca1beb326b692371771bfc7": "f13ac1651d3dea7713a6860abf1338b4",
".git/objects/5f/72e9127ffaae2a500cd9d950067f46c21b277c": "9334d3373cb9fc449377becf4cba5477",
".git/objects/63/605716051ed3e96b379acb72980c046b18976a": "5825431abc4a9f5dc1b3cffe6f835a64",
".git/objects/65/e616acbec8f7d20b8817322ef5ff2c44ae2d0f": "9cf88d84452cef2812b89c52c2b3238b",
".git/objects/67/bd84202ad5b2e307d3b6fac1731c2a5d963e0b": "aa161ace139f434c81be219b6f6205e5",
".git/objects/68/68f7bb64ba71b131690286ddc82aa0f542293e": "b6aeab417f5d5ef28ea070a09b61c7e0",
".git/objects/69/86ff551ae7a18dff06e4164f97f8e7a3b9141d": "3af060264e8ddc26ca5dda0ef7b6ebc0",
".git/objects/6c/ce217ddc2efe3411dc9fa34e294e48e4cdf4f5": "8a6cc32e7f23f25e611213b06bb38448",
".git/objects/6d/bd60f8133f96b9277645b9ad8f6d753afe0022": "48c9d5622c096a466ac7a0ea20f28b8e",
".git/objects/6e/cb68683477ecc5aed38ec3fc8910d9bb66276c": "8081799c6f0d89b405c8cca2b18cd6da",
".git/objects/70/15564ad166a3e9d88c82f17829f0cc01ebe29a": "b0b4eb8e40c5eaa3b07c9dcc175a4ab8",
".git/objects/75/8d9491d9087b5d3d48fc948ba26603190b1fed": "d2717f3bbf75d18d8551aebe7e026da4",
".git/objects/75/b395daeb4cb95d2de98b8ed98347b214bcce85": "b6a1e8081d7195f16fb18116b710782f",
".git/objects/7c/3cba490f7fabdbce9a0ea22396f13c144e7bb0": "72eaca94733b1491f55320cde4c6ef51",
".git/objects/7e/ce3282a4f7824b249d9e568819d98bd2fa3da6": "8c71b613b9912dfd1fdf473a52e99214",
".git/objects/80/dec42efbfa37e204cbf712829567965927e861": "e89ef60e2dacd048119e3831dd06d0d0",
".git/objects/81/58f25e836e45d2cc31fc891e47e73a00c82852": "9a2306f183d77fd89a0701d797d830f4",
".git/objects/85/e8f9d25b28599b1406f73d7681c00f5c9f41c0": "39fd0c2c61b965d71e3460839313cea6",
".git/objects/8c/5833048023c5a604cafface06f12b965fd62b3": "d10ddb9385b5faf0db0b6b72fbde99dd",
".git/objects/8e/189a1bcd440c9e7b16dff5db3de08bace33bdc": "4042bbbeb9d1d0df4f9fa4cbf924c234",
".git/objects/90/0cf9ab29c84033a064d3d8cc308c4ef0cf6a91": "0f83c5b3ea10ddf2dd8e2080d0e895bc",
".git/objects/94/8f0a5d26e899539e7821aa5a500932f76ba582": "e9093d046b81c96e5fd46a48a0b68b11",
".git/objects/99/7bd48671bced81920a02ed5376fa09cd8968d7": "c5698b00cd723bfe92b326c1f1ce9a72",
".git/objects/9b/d0b8c3be9c97c10403073cf3e6086e5413afc2": "73d47aa173abf166e2e18e4921762a62",
".git/objects/9c/81be3b2b3576fa355ee950e4c4a33275aa515b": "2c2dddbe6477aa9331bd6694e9598c3a",
".git/objects/a3/09313d5fb20765dff1d8f41dbd72c558097611": "ce77a88cc2b115d907f98afb245fa5f6",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/a8/5c14fe9afaca65c0a1adbf4756cb87855848f4": "eeddd715c0fe9620fc5e29bbefe493ae",
".git/objects/a8/92ae97aa1fec2f2ecfb64ba1ed05992c8a1159": "99bdd54e22fef1a0bcc81097b75d1065",
".git/objects/a9/e42170968d609459c7839267ba9db7ec525520": "20038604e3395c9be8fff1f0cbb76612",
".git/objects/b2/7565f857cb894f1cefb370de74fb6ac1814b29": "0b4868561b526a22dcad261127df056c",
".git/objects/b4/0580034b5dd89ea99be10de915c2e1bea19447": "2979442a916b62106092cf58d244b550",
".git/objects/b7/b5b5e8144d11cf6a9b31edf7c8f49350da3e50": "db42d7711538afbeb5cbf6649eede073",
".git/objects/ba/c9f2d66830387d74e0195684162f1c26a26c53": "9be5a67e631c241754e0a5fa4335c402",
".git/objects/be/04558ce994127b76fd730872d48c78090b5584": "abca28c9f4b49017edb509ae7614e029",
".git/objects/bf/78e94d8ca61dba8b5f6adf3ddf67f32d8e7b05": "89f71507ca645350c2f1ad25cbab7fe5",
".git/objects/c8/df92b853992397794e13e57140bbab28367e15": "4e587a7e4ba7acfc9ac1796c5c862e78",
".git/objects/c9/a85d38ff19b94f48aa6349a319509c914222cd": "f12b252ddf2b57488f96dbffc24abedc",
".git/objects/cd/d3eb46aaff923e5418c3003414b763099a5340": "88da14ba60029a1405ad8c18304fb6cf",
".git/objects/cd/fcae43fcf033cc4db40850ff58ef0c753f2554": "a77c8de4542165e1dd7e944368e9aeb6",
".git/objects/cf/e2d9f8fd1f1602ac2944104150deb151250322": "138cd42be5f7f5389f94211921b22a97",
".git/objects/d7/587f5341ec2d74a42379a82970c5b1724090d1": "84c88ce136335d7a4e29e66bc5791e62",
".git/objects/d7/c37625fb6f37c6f6a8b5b52f27b5999d490338": "11de01bfb96704418182ebfd8ca05404",
".git/objects/df/6c0d998b7f93b5ab236a01dca491e0df34ac21": "64b3fb9ef4dd209173f42f8896d8ab2f",
".git/objects/e4/ae46c6286b2d6c6676b0c3192fc92876778498": "c1fb9fd9132eb732a1d95b1d7a283648",
".git/objects/ea/8271f701a424d39d1b0d7a7bc6bae669e862a7": "6b30fe7c359af7bf3329fc7befde291a",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/f4/906cc51be7f8f284703b3f517bf2e28f7c2e50": "88a7782ad90b96264771ffc930c1ffe8",
".git/objects/f5/eaf7eb1511bd9532cebfae70e47524663de109": "50b1229f40423533da8629dc65d38889",
".git/objects/fb/c9fa550493f77abab82f7532e3260a209bbddf": "6a2f4302e0e0850d3bb5d1d103f2528f",
".git/objects/fc/963dfe2292c4e241afb5950e063414d544c093": "8cd8693ced3c797431323a7707d38029",
".git/objects/pack/pack-a8cc74ba84826857a0455ebadb777b920f7d9bec.idx": "86bddd8f8a5c755c4bc19a0a327d36af",
".git/objects/pack/pack-a8cc74ba84826857a0455ebadb777b920f7d9bec.pack": "ec3fe8279e19e032a216e956756dac8c",
".git/ORIG_HEAD": "bbc151c488ea1c1433f0f91048dd8bd1",
".git/refs/heads/master": "2e250a6b4e083d2090aaa9d0f38c7c55",
".git/refs/remotes/origin/imgbot": "bb56ae86ac5f6ef07050f2721b681f92",
".git/refs/remotes/origin/master": "2e250a6b4e083d2090aaa9d0f38c7c55",
"assets/Artboard.png": "3f627e509cc1dddab57ba48700f664b2",
"assets/AssetManifest.json": "3a81fec7d849e801cd190243cc24d965",
"assets/branfluenzas.jpg": "b8d0fb82695419d431e187459766ff7d",
"assets/dentify.png": "29eecdc80b8620cbaec13c6c5f1ce742",
"assets/expense.png": "ed0a0053c4bca6e90c78c0fd2cd59d7d",
"assets/FontManifest.json": "7aaf3996738086bbd796613e14ef9e45",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/kotoko.png": "919ec4b24ab4908cd6eeca5653fe09fe",
"assets/mb-redesign.png": "00c50a2645aa53803e0a6a156a88e6ed",
"assets/mb.png": "b8c3ea55461924a8ddc1effe75bd84ea",
"assets/md.png": "41177dbaaeca0e23b45caf5a6e9291f1",
"assets/md_anim.gif": "96cb5b3fb47934c7e610f4461cf8a917",
"assets/md_memoji.png": "25daee3cfde835c833695026b522eaac",
"assets/news.png": "0d7d9e8007cac975a707eac230ea2bc2",
"assets/NOTICES": "1ed68d1e7504c3d6bf84e554c9d8d045",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
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
"assets/tayp.png": "236effecfd52b2818cb1aa682c94b881",
"assets/todo.png": "c4e1285d17312c4ac2b64b96d174b77d",
"favicon.png": "db5ffc583eec64bfe33c49effd1048b6",
"icons/Icon-192.png": "db5ffc583eec64bfe33c49effd1048b6",
"icons/Icon-512.png": "db5ffc583eec64bfe33c49effd1048b6",
"index.html": "26817978d889aeb9d9e2304f76f57922",
"/": "26817978d889aeb9d9e2304f76f57922",
"main.dart.js": "87ae91377088b6d379270417a33748e5",
"manifest.json": "4776d95f0f3f3917380126e26f2aa195"
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
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
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
    return self.skipWaiting();
  }
  if (event.message === 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
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
