#!/bin/bash
ng build --prod --aot
sed -i '' "s/const req = event.request;/const req = event.request;if(req.url.toLowerCase().includes('apple')){return;}/" dist/apple-music-web-player/ngsw-worker.js