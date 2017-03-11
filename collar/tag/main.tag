<main>
  <one show={view.one}></one>
  <two show={view.two}></two>
  <three show={view.three}></three>
  <four show={view.four}></four>
  <five show={view.five}></five>
  <six show={view.six}></six>

  <script type = "text/javascript">
    this.view = {
      one: true,
      two: false,
      three: false,
      four: false,
      five: false,
      six: false
    }
  </script>
  <script type = "text/javascript">
      r = riot.route.create()
      r('/', function () { viewswitch('one') })
      r('/2', function () { viewswitch('two') })
      r('/3', function () { viewswitch('three') })
      r('/4', function () { viewswitch('four') })
      r('/5', function () { viewswitch('five') })
      r('/6', function () { viewswitch('six') })

      var self = this

      function viewswitch(v){
          Object.keys(self.view).forEach(function (k) {
              self.view[k] = false
          })
          self.view[v] = true
          self.update()
      }
  </script>
</main>
