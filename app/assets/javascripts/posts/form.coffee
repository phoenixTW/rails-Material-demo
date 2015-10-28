$(document).ready ->
  getSubmissionFormData = (data) ->
    data.reduce( (sendableData, datam) ->
      sendableData[datam.name] = datam.value
      sendableData
    , {})

  $("#post_body").each (i, elem) ->
    $(elem).wysihtml5 toolbar:
      "font-styles": true #Font styling, e.g. h1, h2, etc. Default true
      emphasis: true #Italics, bold, etc. Default true
      lists: true #(Un)ordered lists, e.g. Bullets, Numbers. Default true
      html: true #Button which allows you to edit the generated HTML. Default false
      link: true #Button to insert a link. Default true
      image: false #Button to insert an image. Default true,
      color: true #Button to change color of font

  # $("#new-post-submit").unbind("click").click (event) ->
  #   event.preventDefault()
  #   event.stopPropagation()
  #   userEnteredData = $("#new_post").serializeArray()
  #
  #   $.post("/posts", getSubmissionFormData(userEnteredData)).done( (renderedData) ->
  #       console.log renderedData
  #     ).error( (error) -> console.log error )
