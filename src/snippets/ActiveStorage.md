# Upload files throught ActiveStorage

Basically we use ´ActiveStorage´ to upload the image encrypted, and the use a job to handle the object uploaded to control it's location on cloud.

## Doing by example:

#### First step

On the model that related to the image we need to add: 

##### Example: whatever_model.rb
~~~
class WhateverModel < ApplicationRecord
 
  has_one_attached :image

 end
~~~

### Second step

On the respecitve model controller we need to permit the param for our  image

~~~

class WhateverModelController < ApplicationController

private
    def whatever_modelparams
      params.require(:whatever_model).permit(:image)
    end
~~~

####### as param ´:image´  for single image, ´images: []´ for multiple images



  mattr_accessor :domain, default: "https://festalab-development-assets.s3.amazonaws.com/"