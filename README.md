# nobody / personne

## English

### Description

Nobody is a gem to add shorthand ability of implementing the Null Object Pattern in a class.

### Installation

```bash
$ gem install nobody
```

### Usage

Using nobody is easy, just include the module in your class and then use one if its methods, `returns_nil_for`, `returns_true_for`, or `returns_false_for`. You can specify any other methods normally in the class.

```ruby
class NullOdysseus
  include Nobody

  returns_nil_for :name, :email_address
  returns_true_for :is_adventurer?, :alive?
  returns_false_for :dead?, :cyclops?

  def hometown
    'Itaca'
  end
end

o = NullOdysseus.new
o.name #=> nil
o.alive? #=> true
o.dead? #=> false
```  

## Français

### Description

Personne est un gem pour utiliser facilement la Modèle d'objet Null dans un class.

### Installation

```bash
$ gem install nobody
```

### Utilisation

Utiliser personne est facile. On doit seulement inclure le module dans son class et puis utiliser un de ses méthodes, `returns_nil_for`, `returns_true_for`, ou `returns_false_for`. On peut écrire des autre méthodes comme d'habitude.

```ruby
class NullOdysseus
  include Nobody

  returns_nil_for :name, :email_address
  returns_true_for :is_adventurer?, :alive?
  returns_false_for :dead?, :cyclops?

  def hometown
    'Itaca'
  end
end

o = NullOdysseus.new
o.name #=> nil
o.alive? #=> true
o.dead? #=> false
```

## Acknowledgements

Thanks to Ben Orenstein (@r00k) for his talk at RMR12 on refactoring, which included this pattern.

## License

Copyright (c) 2012 GordonDiggs

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
