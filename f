[33mcommit b0678b161fcf74467ed3a63110557e3d6229cfa6[m
Author: cbuckey <caroline@udacity.com>
Date:   Mon May 24 04:15:21 2010 -0700

    Revert controls

[1mdiff --git a/game.js b/game.js[m
[1mindex 20be658..553849b 100644[m
[1m--- a/game.js[m
[1m+++ b/game.js[m
[36m@@ -4,9 +4,9 @@[m
 //[m
 [m
 KEY_CODES = {[m
[31m-  13: 'enter',[m
   32: 'space',[m
   37: 'left',[m
[32m+[m[32m  38: 'up',[m
   39: 'right',[m
   40: 'down',[m
   70: 'f',[m
[36m@@ -392,7 +392,7 @@[m [mShip = function () {[m
       this.vel.rot = 0;[m
     }[m
 [m
[31m-    if (KEY_STATUS.space) {[m
[32m+[m[32m    if (KEY_STATUS.up) {[m
       var rad = ((this.rot-90) * Math.PI)/180;[m
       this.acc.x = 0.5 * Math.cos(rad);[m
       this.acc.y = 0.5 * Math.sin(rad);[m
[36m@@ -406,7 +406,7 @@[m [mShip = function () {[m
     if (this.delayBeforeBullet > 0) {[m
       this.delayBeforeBullet -= delta;[m
     }[m
[31m-    if (KEY_STATUS.enter) {[m
[32m+[m[32m    if (KEY_STATUS.space) {[m
       if (this.delayBeforeBullet <= 0) {[m
         this.delayBeforeBullet = 10;[m
         for (var i = 0; i < this.bullets.length; i++) {[m
[36m@@ -919,7 +919,7 @@[m [mGame = {[m
     waiting: function () {[m
       Text.renderText(ipad ? 'Touch Sreen to Start' : 'Press Space to Start', 36, Game.canvasWidth/2 - 270, Game.canvasHeight/2);[m
       if (KEY_STATUS.space || window.gameStart) {[m
[31m-        KEY_STATUS.space = false; // hack so we don't move right away[m
[32m+[m[32m        KEY_STATUS.space = false; // hack so we don't shoot right away[m
         window.gameStart = false;[m
         this.state = 'start';[m
       }[m
