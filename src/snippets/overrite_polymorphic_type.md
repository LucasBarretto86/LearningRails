# Override Polymorphic Type

```rb
# frozen_string_literal: true

module FakeGFRecord::PolymorphicOverride
  extend ActiveSupport::Concern

  module ClassMethods
      def polymorphic_name
        "Progression"
      end
    end
end
```

```rb
# frozen_string_literal: true

class FakeGFRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :fake_gf, reading: :fake_gf }
end
```

```rb
# frozen_string_literal: true

class FakeGF::Progression < FakeGFRecord
  include PolymorphicOverride

  belongs_to :patient, class_name: "FakeGF::Patient"
  has_many :images, class_name: "FakeGF::Image", as: :imageable
end
```

```rb
# frozen_string_literal: true

class FakeGF::Image < FakeGFRecord
  belongs_to :progression, class_name: "FakeGF::Progression", polymorphic: true
end
```
