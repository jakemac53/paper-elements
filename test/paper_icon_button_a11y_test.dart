//Copyright (c) 2014 The Polymer Project Authors. All rights reserved.
//This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
//The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
//The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
//Code distributed by Google as part of the polymer project is also
//subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt

library paper_icon_button.a11y_test;

import "dart:async";
import "dart:html";
import "package:paper_elements/paper_icon_button.dart";
import "package:polymer/polymer.dart";
import "package:unittest/unittest.dart";
import "package:unittest/html_config.dart" show useHtmlConfiguration;

void main() {
  useHtmlConfiguration();

  initPolymer().run(() {
    Polymer.onReady.then((_) {
      var f1 = document.getElementById('fab1') as PaperIconButton;
      var f2 = document.getElementById('fab2') as PaperIconButton;
      var f3 = document.getElementById('fab3') as PaperIconButton;
      
      test('aria role is a button', () {
        expect(f1.attributes['role'], 'button');
      });
      
      test('aria-disabled is set', () {
        expect(f2.attributes['aria-disabled'], isNotNull);
        return new Future(() {}).then((_) {
          f2.attributes.remove('disabled');
          return new Future(() {}).then((_) {
            expect(f2.attributes['aria-disabled'], isNull);
          });
        });
      });
      
      test('aria-label is set', () {
        expect(f1.attributes['aria-label'], 'add');
      });
      
      test('user-defined aria-label is preserved', () {
        expect(f3.attributes['aria-label'], 'custom');
        f3.icon = 'arrow-forward';
        return new Future(() {}).then((_) {
          expect(f3.attributes['aria-label'], 'custom');
        });
      });

    });
  });
}
