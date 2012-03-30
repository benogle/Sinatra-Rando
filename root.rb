require 'sinatra'

NODE = 'http://sharp-lightning-4081.herokuapp.com'

get '/' do
  #man, I'm lazy.
  "<!doctype html>
  <html lang=\"en\">
    <head>
        <meta charset=\"UTF-8\">
        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">

        <script src=\"#{NODE}/socket.io/socket.io.js\"></script>
        <script src=\"#{NODE}/share/share.js\"></script>
        <script src=\"#{NODE}/share/json.js\"></script>

        <script type=\"text/javascript\">
          window.SHARE = sharejs.open('filename', 'json', '#{NODE}/sjs', function(error, doc){
            window.DOC = doc
            console.log('DOC', doc, error)
          });
        </script>
    </head>
    <body></body>
    </html>"
end