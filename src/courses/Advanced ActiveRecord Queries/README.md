# Advanced ActiveRecord Querying

- [Advanced ActiveRecord Querying](#advanced-activerecord-querying)
  - [^1 Advanced querying `belongs_to`](#1-advanced-querying-belongs_to)
    - [`merge` scopes](#merge-scopes)

## [^1] Advanced querying `belongs_to`

In this example the goal is to find all people who belong to a billable role

```rb
class Person < ActiveRecord::Base
  belongs_to :role
end

class Role < ActiveRecord::Base
  has_many :people
end
```

The most efficient way would be to use `joins`

```rb
Person.all.joins(:role).where(roles: { billable: true })
```

Always favors joins instead of `select` or `collect` or any other method that would make you iterate over the records to build the expected collection

In addition you could use the `merge` method to merge queries

### `merge` scopes

To use merge we are going to use the `scope` methods or some class method, but first we need to add those to our models

```rb
class Role < ActiveRecord::Base
  def self.billable
    where(billable: true)
  end
end

# OR

class Role < ActiveRecord::Base
  scope :billable, -> { where(billable: true) }
end
```

By doing it we can use the scope to merge into our query, however, in order to make the merge works we need to maintain the `joins`

```rb
Person.joins(:role).merge(Role.billable)
```

To make it more cleaner we could add also a scope on the `Person` model

```rb
class Person < ActiveRecord::Base
  def self.billable
    joins(:role).merge(Role.billable)
  end
end

# OR

class Person < ActiveRecord::Base
  scope :billable, -> { joins(:role).merge(Role.billable) }
end
```

By doing this we would have a cleaner and efficient way to make our query

```rb
Person.billable

# SAME AS

SELECT "people".*
FROM "people"
INNER JOIN "roles"
  ON "roles.id" = "people"."role_id"
WHERE "roles"."billable" = 't';
```

[^1]: <https://thoughtbot.com/upcase/videos/advanced-querying-belongs-to>
