
assert = require('chai').assert

describe 'coffee-script bugs', () ->
	it 'well i\'ll be...', () ->
    try
      values = [1, 2, 3]
      len = values.length
      for i in [0...(len-1)]
        values[i] = values[i] * 2
      assert.deepEqual(values, [2, 4, 6])
    catch e
      console.log e
      assert(false)

  it 'hmmm...', () ->
    try
      hello = (a, b, c, x) -> a b c x
      foo = (x) -> x + ' for?'
      bar = (x) -> x + ' you\'re looking'
      baz = (x) -> x + ' is it me'

      x = hello foo bar baz 'hello?'
      assert.equal(x, 'hello? is it me you\'re looking for?')
    catch e
      console.log e
      assert(false)

	it 'very curious...', () ->
    try
      class Foo
        constructor: (@values) ->
          @newValues = []
          @values.forEach (val) ->
            @newValues.push(val * 2)

      f = new Foo([1, 2, 3])
      assert.deepEqual(f.newValues, [2, 4, 6])
    catch e
      console.log e
      assert(false)

  it 'what in tarnation?!', () ->
    try
      class Foo
        constructor: (@values) ->
        foo = () ->
          @values[0] *= 2

      f = new Foo([1, 2, 3])
      f.foo()
      assert.deepEqual(f.newValues, [2, 2, 3])
    catch e
      console.log e
      assert(false)

  it 'dagnabit...', () ->
    try
      ages = {
        'john': 1
        'abel': 2
        'andrew': 3
      }
      for val, key of ages
        ages[key] *=2
      assert.deepEqual(ages, { 'john': 2, 'abel': 4, 'andrew': 6 })
    catch e
      console.log e
      assert(false)
