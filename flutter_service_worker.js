'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
<<<<<<< HEAD
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
=======
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
".git/index": "a715e2c97d373e793d80ebc1ffedf2cf",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/ORIG_HEAD": "b38b026c3c1809197799231aec5be77b",
".git/config": "8432aabce7e2e4d4d2e3e71a5f33f2d6",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/refs/heads/origin/develop": "2d0f7c5fc8c19d934f2d5a63670c9ef1",
".git/refs/heads/main": "b38b026c3c1809197799231aec5be77b",
".git/refs/heads/develop": "0f86482556bb07f7d1ac5eadf727d4bf",
".git/refs/remotes/origin/main": "b38b026c3c1809197799231aec5be77b",
".git/refs/remotes/origin/develop": "0f86482556bb07f7d1ac5eadf727d4bf",
".git/COMMIT_EDITMSG": "a0009f003deee2a0f9c6f08cd5be796d",
".git/objects/cb/f33bc659157dbe208e960e65d27b67c7a11769": "199e3851e3f66f4e8f994074acda6bc6",
".git/objects/cb/f57c5cc9ea7574cc2c09a2c6510610821a1cae": "9f9e076fcff447addb88882e9193215e",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/b8/5d83a2086965db566dc8ef729b10679f4a216f": "ee80690197f1eb226187ba0389dbc29b",
".git/objects/bf/22b90e1603bec3352e7a7792f0ca9a7642fcf6": "08ddc28b97c54e13a0a8bc83fb26495f",
".git/objects/c0/48b6bff54cac275996800e076d9f5d95170ad5": "fc2d4fbbc0820384783c2e17afd44d21",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/28/573d165a6a9840efd369b21da407cd6a8d47b9": "7e59edbb760c76e32f14cf522a55f3ba",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/a7/e76014179d9ce27c3d1810a33fb83a671692e4": "65f3fa6015c67e39e75ca323741414fc",
".git/objects/35/5025499b5dd9ec45da366265a31ac6984fd8d3": "df787428c20d5b97f64f18c0eff00a49",
".git/objects/f6/dfca2f8434efa427295bf6fc6435ab286c64e2": "73892fc5e5d31e69a988ce7c9aae3bdf",
".git/objects/57/8c53b67fbafdd3fa30cc6650abd72fc34d182a": "42e92000c36e3f4bc6ba1b3aefe0d5d2",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/df/4e95ba7381223cb34941d75a96829cdafef3c6": "c0e41db82c0f83b8945fc4455bbb1ba5",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/93/5d3334c59311aba2cf2c9a8e9d15db24f4f1c5": "0b244ab9b9e56d5af12a11c59ce3df6e",
".git/objects/9c/0e4126471c636e6dc655f0a5747d223435b0b6": "09d0bf19240ff074ea2c51e4af9fd9d0",
".git/objects/ef/f4d66c549e506a663c0936d7eab0f2a26b841a": "92ec908c2fc527c67e76c75ce43a8ee3",
".git/objects/70/b62afe5950f0df9cae814dc3af48219d517400": "ff247f9fc0d687e103e21c0fcaf14b70",
".git/objects/5c/903fa74706a5009943c2f8435dd73d32539f91": "8a31310a20ea0e77a38feaa93830d44e",
".git/objects/39/1560687f8d83c78be81c72909fb7ef3354a8ef": "751e6de84b5655367f554c3f021f185e",
".git/objects/39/4789872945fb99933f4d5532b512b582cc0240": "2f1430dd10c89f69b2ff96124e74f913",
".git/objects/d2/a496c43115725fbc49b5a6a99d183139cfaafb": "020e35ebad35ac442a6b5c61576553e8",
".git/objects/a8/38e2a97741353e50ec868c87acb203aa0e6a1b": "605ced1451b327d31a55c368d0ae056e",
".git/objects/69/d7cf5148eedb9bc3d0304be6412495b277129a": "0c4d7a983a544536b890ac03b2869aee",
".git/objects/67/149b3c66259b9ee825e43b6112a6045903c9fe": "f137e88e6ef6dfd1beb02b2f426a66a5",
".git/objects/97/147925e2ef386b43f49b90f138f73bac75d31d": "e525bdbc23fb7f73dfb97a9341a2e988",
".git/objects/49/9b1025520fbc3f108a233494de49b1e49a3e8d": "c24e35bee9e0f9d1b5f46ee099f2c4a2",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ed/fc086d226d139826fe3cfff177967b4a4ebcc5": "1e81ebf78e9a28247bc162888ca72840",
".git/objects/ed/2e99e6a4445ef7b75e8f754322657f53794d11": "cd4b3850f4457eb8d8cb2079566487cc",
".git/objects/ed/b4ce991ab91dd1cf02f9389df47a878d949854": "70a96733e9d81f4465ef704b368a3852",
".git/objects/64/d6c3a24d6b4999ade96dc8256a709d8f749446": "cd02cf4367dce40ee5a56b657cca51af",
".git/objects/f5/4e2e5db5cf94fdffaa5e9b78d7f5d8fb174c14": "07dd0ff46ebb7eda2bdc11bc61073533",
".git/objects/0c/86aabb83360d52384ff5833329785fb876f7cb": "4e3780c33ad63f562c8f423b55d8e976",
".git/objects/0c/04f8f365dce00f23e02bf727a4aa24030f05fc": "dd7d1101eeb3cefeda5488b452d83518",
".git/objects/22/52bb5101b2c1d27fec6a467bbdc9d5b80c6481": "a6d06a0c29ad0377cef0c53e4a622768",
".git/objects/22/655ade959a6155ce878c02c109d7f118eb4f19": "8678803631a33f478bcd31ea2733afdf",
".git/objects/05/5b98ec6945da8eb4e2bda03a367e67dfbf3687": "76d7e1e0ac0001a1fea5948c82d9f552",
".git/objects/05/31eccef3b622da24838500ea35bc4f9e3a7500": "eb928ba3ae01fd24cee922c0c7651357",
".git/objects/a4/9004fc89587f3da8b0061ec2cb74e98da00b04": "0808834d3432cfa1d3e73d711f343b98",
".git/objects/78/3a0a867ff449bd442d075888f9ed8ed4093fc0": "b1f3ed1af64f01641a70d3763291fd91",
".git/objects/b0/0d530f5b04a6d1532dc4a4ee7c0329705bbd18": "28f35a558280e3d5ae45a7106bc93b69",
".git/objects/e9/2487f46e1f222acbec6a4bf9ecefaccbde7d4b": "e72de8cfd30d5e80fb050d96c1c9bbf4",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/23/dfe3529a1e429d602812de2ad03f609d7cdafa": "153f0457ba613642db1db57ad4ba0af9",
".git/objects/23/98cba90b0a449a9570d61afdac15767ad11422": "3089651aa2d23f9e474fbbb19b395cad",
".git/objects/7a/01e647ae21535cf999447e31cef4993a29049b": "a5704d05830c42d9ff006183d98d7e4c",
".git/objects/b1/169d4878a17c95feb463a8d8cf4d5e84f1e84f": "fdc25446477d88f351a7cd8202cd28fb",
".git/objects/00/57e57ca9ad14c4ed61a92fff19d7deb86fb624": "92b30efd7da701a45351a3bcad14d16f",
".git/objects/a9/a25503636be4e0163ffc0054ea3b802fa01312": "c03ac6d5973c81f24e0b6b51485d9798",
".git/objects/50/0a4e905ddd8e713c1e3cd64993838b1140ed14": "77e2c50df156fae7b7e5c1e8a088199b",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/0f/40cda5fd00231ec39115a4fc8dcef0054df1d6": "c3be653b7c833b659c1d30870a202aa7",
".git/objects/0f/bb32a9f476801a54efbce932b8e0e30795ede8": "3011d41f1c4c67ccedc1680f2d68cd09",
".git/objects/0f/067f19a38376b53013572bc5b18902e4a479b5": "316fb5828dafba7a9ba7c8f39ddb9957",
".git/objects/08/dbd60f73766a28b9acf6c92611003d152e70f8": "5318e3e8eea606d579e029e81ecec1bd",
".git/objects/08/5ccbfe6d05cc734da99fd4728fa00a7dfbe033": "49fd0c57d7024f91b0dd44e062369bd4",
".git/objects/ff/600c19833d4290c4a3ccacf7b1d1b12218c421": "f4dc03663fa69e85b4588e79e09846a9",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/b4/b87bef44dd70c02bfaa74b0582798491140305": "7c0b893df3cc814472cb5f0db45c16e5",
".git/objects/9e/f7d8647aa1f997b9f5a20e1ef48a9e89710f55": "fe45380919fea0ee10ea37714724bf61",
".git/objects/cd/54a74255c5f051fc5742c15b3360aad00247ba": "fb04726762520dba83e99ef54d738dc6",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/fe/8ea367b7b7e4e0f99f11241310cafac10e0dba": "286a377b7cb1db82e64276521b8a2e6b",
".git/objects/fd/fc34fecdb784032d03dd4e3b75a01e75e89999": "02bad71cfb1c6f95489f62012f0403f8",
".git/objects/37/4e23101e051040022b44a586d448413fd8400e": "13cd070b1d91a96f79975ff99a6e3fc0",
".git/objects/37/0563539b3db667283d4985893a0ef042fa1dd4": "69113ee714cf91b17853edf988c75d52",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/21f0a5e5c1cde6756869da9a3da62bdc854c4b": "d0243d383b4e27a19c9bdd9ee85c9e5b",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/17/c6d68e4ef266e9f1f50b4f68be3dbae3a6a0db": "0942276cb01dacdce7356253c0d62679",
".git/objects/1d/9ece6ac44bbcbfe655c008aa403684d2b9f4fc": "6071fa2bd3872dfb1ec7032036da205c",
".git/objects/43/712179b54f2233bbfec462320cf7e7de544e36": "1dafcf36862cc52fb5b1679778d8b08f",
".git/objects/e0/c15b28b5cde500ecf6595c83a9d4c67b2a01d0": "a7a1cb0ecdbc467106ab1696c619bd37",
".git/objects/ce/a29c1c13c56df0599b5c3bcb62ede5f5567fc7": "821ef1e89a000eccbab397273934f531",
".git/objects/ce/23c11a951bc78bf6e51ca7d762d4261d54855c": "5d3ca30dc0155a8e2fc5accc08c4dca0",
".git/objects/e4/36a62d97a50a0e8bb17268758d9270d64c7d15": "fcac22e8b603d3168bb44f4fc3206d06",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d1a8dc787ae5213e16d6eb4c1770c58862871b": "05304432bf2a447d09f8c15f3128d3b8",
".git/objects/6d/758b8b3773fc7be534182912ce33788c603810": "2875ff3099d74d0cb5d8116b9ddf253d",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/b12747e8057011b5099be455f0f5c252d88269": "929bfcf275d59481da9dcbd1260fb7ca",
".git/objects/ac/40c64867810004bae9faa3ac634221c5b1f165": "4de5be51420c44dd784a51b0e252a30d",
".git/objects/ac/969ae0b2ae37e11fd707b7355b7680dfda88b7": "5384257e605bd84aa1459990c60f83ea",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/88/02334f2e748f01c95541b3642fc33df0359f4b": "4883a5c547c607f979dda6ee2f22347a",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/c1/d744c41a5e326c8fcacc6d04aacf39158d9fbd": "75930d02df74f68a1e67f37408bd5ddb",
".git/objects/86/c327fdcb88d6b5f8fa3eb89d51bb106b3eac36": "354894a3323ca9479acda20236b9e111",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/FETCH_HEAD": "160355c0f6de6b74f0a68f11e9f62a4e",
".git/logs/HEAD": "1d4a33b0372270dd73a4aed8fc2f752c",
".git/logs/refs/heads/origin/develop": "07fbf8fff6ecd5c62e4ed96198a5a7c1",
".git/logs/refs/heads/main": "d387699e62fc3cfaa3156420b9831c20",
".git/logs/refs/heads/develop": "98cc65b1934814b60ea84c44a279bdb7",
".git/logs/refs/remotes/origin/main": "4a2bd1a33b0666baf509adbd8cbd07b9",
".git/logs/refs/remotes/origin/develop": "e005a7cafde86c085f1a8610efff15fb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
>>>>>>> ea333232132930ff526052d7391b1ebd8444ae7b
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
<<<<<<< HEAD
"main.dart.js": "b17a0646e5fa9a9e2fb2e9fdeb6fb9a3",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "8ea8b37cbb4bee6a501ab50278926b2e",
"assets/NOTICES": "bc331528abea3f2efd55dab00f8bf619",
"assets/assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
"assets/assets/icons/api.png": "e3073de1de0fb3e9f37a03a669119ec4",
=======
"main.dart.js": "8dfef1abb0a4dfddf54f60e78f18af9e",
"version.json": "5a7b54e415d358e7ed98b39afc67182b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "5c6bc4d670a127c0660e2abfaa1debba",
"assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
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
"assets/NOTICES": "bc331528abea3f2efd55dab00f8bf619",
"assets/images/perfil-2.png": "e509efebbba31fcf8383a08ab0a4d183",
"assets/images/perfil.png": "6366a1f818b54f0d747d4fba25efb4b1",
"assets/images/me.jpeg": "14f36c9facb75fdfb846fc55448302b0",
"assets/assets/icons/android.png": "e3d4fd07afafd3ec1ec8e102df83ce45",
"assets/assets/icons/mysql.png": "67c31ed1d400bc49c8500cdf7feeeffe",
"assets/assets/icons/flutter.png": "6956a4a68696cf94d8db16530bc39686",
>>>>>>> ea333232132930ff526052d7391b1ebd8444ae7b
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
<<<<<<< HEAD
"assets/assets/images/expenseApp.png": "2aa4b55724419ff3c76583b8784ef328",
"assets/assets/images/webPortfolio.png": "4b3462535757d73d20eb3a38bda2f21f",
"assets/assets/images/lapiscoApp.png": "c8b8481656d73e5a5e482da3da776d03",
=======
>>>>>>> ea333232132930ff526052d7391b1ebd8444ae7b
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"manifest.json": "060679a5566e9b8f3f4c030447c23949",
<<<<<<< HEAD
"index.html": "fcef9de75d714115c3f6b775c7be627a",
"/": "fcef9de75d714115c3f6b775c7be627a",
=======
"index.html": "b454aa6796ed705c493e7a5b304d4980",
"/": "b454aa6796ed705c493e7a5b304d4980",
>>>>>>> ea333232132930ff526052d7391b1ebd8444ae7b
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
