$(document).ready ->
  $("#post_body").each (i, elem) ->
    $(elem).wysihtml5
      "font-styles": true #Font styling, e.g. h1, h2, etc. Default true
      emphasis: true #Italics, bold, etc. Default true
      lists: true #(Un)ordered lists, e.g. Bullets, Numbers. Default true
      html: true #Button which allows you to edit the generated HTML. Default false
      link: true #Button to insert a link. Default true
      image: false #Button to insert an image. Default true,
      color: true #Button to change color of font
  $("#new-post-submit").unbind("click").click (event) ->
    event.preventDefault()
    event.stopPropagation()
    console.log $("#new_post").serializeArray()
