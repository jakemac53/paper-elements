//Copyright (c) 2014 The Polymer Project Authors. All rights reserved.
//This code may only be used under the BSD style license found at http://polymer.github.io/LICENSE.txt
//The complete set of authors may be found at http://polymer.github.io/AUTHORS.txt
//The complete set of contributors may be found at http://polymer.github.io/CONTRIBUTORS.txt
//Code distributed by Google as part of the polymer project is also
//subject to an additional IP rights grant found at http://polymer.github.io/PATENTS.txt

library paper_input.a11y_test;

import "dart:async";
import "dart:html";
import "package:paper_elements/paper_input_decorator.dart";
import "package:polymer/polymer.dart";
import "package:unittest/unittest.dart";
import "package:unittest/html_config.dart" show useHtmlConfiguration;

void main() {
  useHtmlConfiguration();

  initPolymer().run(() {
    Polymer.onReady.then((_) {
      var d1 = querySelector('#decorator1') as PaperInputDecorator;
      var i1 = querySelector('#input1') as InputElement;

      test('aria-label set on input', () {
        expect(i1.attributes['aria-label'], d1.label);
      });
    });
  });
}
