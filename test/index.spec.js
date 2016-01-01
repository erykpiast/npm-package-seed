/* global suite, test, setup, teardown */
import { default as chai, assert } from 'chai';
import chaiSpies from 'chai-spies';
import chaiSpiesTdd from 'chai-spies-tdd';

chai.use(chaiSpies);
chai.use(chaiSpiesTdd);

import index from '../src/index';

suite('just a test', () => {
  setup(() => {

  });

  teardown(() => {

  });

  test('index is defined', () => {
    assert(index !== undefined);
  });
});