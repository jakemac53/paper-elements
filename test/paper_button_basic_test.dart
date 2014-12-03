//Copyright (c) 2014 The Polymer Project Authors. All rights reserved.
//This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
//The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
//The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
//Code distributed by Google as part of the polymer project is also
//subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt

library paper_button.basic_test;

import "dart:async";
import "dart:html";
import "package:paper_elements/paper_button.dart";
import "package:paper_elements/paper_shadow.dart";
import "package:polymer/polymer.dart";
import "package:unittest/unittest.dart";
import "package:unittest/html_config.dart" show useHtmlConfiguration;

void main() {
  useHtmlConfiguration();

  initPolymer().run(() {
    return Polymer.onReady.then((_) {
      var b1 = document.getElementById('button1') as PaperButton;

      test('can set raised imperatively', () {
        expect(b1.shadowRoot.querySelector('paper-shadow'), isNull);
        b1.raised = true;
        return new Future(() {}).then((_) {
          var shadow =
              b1.shadowRoot.querySelector('paper-shadow') as PaperShadow;
          expect(shadow, isNotNull);
          // TODO(jakemac): Stop using js interop once $ is available
          // https://github.com/dart-lang/custom-element-apigen/issues/16
          expect(
              shadow.jsElement['\$']['shadow-top'].getComputedStyle().boxShadow,
              isNot('none'));
        });
      });

    });
  });
}
