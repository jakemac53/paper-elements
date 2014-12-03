//Copyright (c) 2014 The Polymer Project Authors. All rights reserved.
//This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
//The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
//The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
//Code distributed by Google as part of the polymer project is also
//subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt

library paper_ripple.position_test;

import "dart:async";
import "dart:html";
import "package:paper_elements/paper_ripple.dart";
import "package:polymer/polymer.dart";
import "package:unittest/unittest.dart";
import "package:unittest/html_config.dart" show useHtmlConfiguration;

void main() {
  useHtmlConfiguration();

  initPolymer().run(() {
    Polymer.onReady.then((_) {

      test('tall container', () {
        var ripple1 = querySelector('.ripple-1 paper-ripple');
        var center = centerOf(ripple1);
        var e = new MouseEvent('down', canBubble: true, clientX: center['x'],
            clientY: center['y']);
        ripple1.dispatchEvent(e);
        return new Future(() {}).then((_) {
          var wave = querySelector('.ripple-1 /deep/ .wave');
          expect(centerOf(ripple1), centerOf(wave));
        });
      });

      test('wide container', () {
        var ripple2 = querySelector('.ripple-2 paper-ripple');
        var center = centerOf(ripple2);
        var e = new MouseEvent('down', canBubble: true, clientX: center['x'],
            clientY: center['y']);
        ripple2.dispatchEvent(e);
        return new Future(() {}).then((_) {
          var wave = querySelector('.ripple-2 /deep/ .wave');
          expect(centerOf(ripple2), centerOf(wave));
        });
      });

    });
  });
}

centerOf(Element node) {
  var rect = node.getBoundingClientRect();
  return {
    'x': (rect.left + rect.width / 2).floor(),
    'y': (rect.top + rect.height / 2).floor(),
  };
}
