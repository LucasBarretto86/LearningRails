# Access control model

- [Access control model](#access-control-model)
  - [Key Components of Access Control Models](#key-components-of-access-control-models)
  - [Common Access Control Models](#common-access-control-models)
    - [DAC - Discretionary Access Control](#dac---discretionary-access-control)
    - [MAC - Mandatory Access Control](#mac---mandatory-access-control)
    - [RBAC - Role-Based Access Control](#rbac---role-based-access-control)
    - [ABAC - Attribute-Based Access Control](#abac---attribute-based-access-control)
    - [PBAC - Policy-Based Access Control](#pbac---policy-based-access-control)

An **access control model** defines how permissions and access rights are assigned and enforced within a system. It provides a framework for determining who can access what resources and under what conditions. Access control models are essential for ensuring security and managing user permissions effectively in software applications and systems.

## Key Components of Access Control Models

1. **Subjects**:
   - **Definition**: Entities that request access to resources, typically users or processes.
   - **Example**: A user account in a system or a process running on a server.

2. **Objects**:
   - **Definition**: Resources that subjects want to access or manipulate.
   - **Example**: Files, databases, or system components.

3. **Permissions**:
   - **Definition**: Actions that can be performed on objects by subjects.
   - **Example**: Read, write, execute, or delete permissions.

4. **Access Control Policies**:
   - **Definition**: Rules or policies that define how permissions are granted or denied based on various criteria.
   - **Example**: Role-based policies, attribute-based policies.

5. **Access Control Lists (ACLs)**:
   - **Definition**: Lists associated with objects that specify which subjects have which permissions on those objects.
   - **Example**: A file ACL that specifies which users or groups can read or modify the file.

6. **Roles** (in Role-Based Access Control):
   - **Definition**: Named collections of permissions assigned to subjects based on their role within the organization or system.
   - **Example**: Admin, Editor, Viewer roles.

## Common Access Control Models

Access control models are fundamental in defining how permissions are assigned, managed, and enforced in a system. They help to ensure that only authorized users can access specific resources and perform certain actions, enhancing security and operational efficiency.

### DAC - Discretionary Access Control

**Definition**: In DAC, the resource owner controls who has access to their resources and what actions they can perform.

**Example**: Suppose you have a `Post` model where users can create posts and decide who can view or edit them.

```ruby
# app/models/user.rb
class User < ApplicationRecord
  has_many :posts
end

# app/models/post.rb
class Post < ApplicationRecord
  belongs_to :user
  # Each post belongs to a user who is its owner
  # Users can only edit or delete their own posts

  # Method to check if a user can edit a post
  def editable_by?(user)
    self.user == user
  end
end

# In the controller
class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  def edit
    unless @post.editable_by?(current_user)
      redirect_to posts_path, alert: 'Not authorized to edit this post.'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @post.editable_by?(current_user)
      @post.destroy
      redirect_to posts_path, notice: 'Post was successfully deleted.'
    else
      redirect_to posts_path, alert: 'Not authorized to delete this post.'
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
```

In this example, users can only edit or delete their own posts. The `editable_by?` method checks if the current user is the owner of the post before allowing them to perform actions.

---

### MAC - Mandatory Access Control

**Definition**: In MAC, access decisions are made based on predefined policies and security labels, and users cannot modify access permissions.

**Example**: Suppose you have a system where documents have different sensitivity levels, and access is based on security clearances.

```ruby
# app/models/document.rb
class Document < ApplicationRecord
  enum sensitivity: { public: 0, internal: 1, confidential: 2, secret: 3 }

  def accessible_by?(user)
    user.clearance_level >= self.sensitivity_level
  end
end

# app/models/user.rb
class User < ApplicationRecord
  enum clearance_level: { basic: 0, intermediate: 1, advanced: 2, top_secret: 3 }
end

# In the controller
class DocumentsController < ApplicationController
  before_action :set_document, only: [:show]

  def show
    unless @document.accessible_by?(current_user)
      redirect_to root_path, alert: 'Access denied.'
    end
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end
end
```

Here, each `Document` has a `sensitivity` level, and `User` has a `clearance_level`. Access to documents is controlled based on these levels.

---

### RBAC - Role-Based Access Control

**Definition**: RBAC assigns permissions based on roles. Users are assigned to roles, and roles have specific permissions.

**Example**: In a Rails application, you might have roles such as `admin`, `editor`, and `viewer`.

```ruby
# app/models/user.rb
class User < ApplicationRecord
  # Roles are managed through a role attribute
  # Example roles: admin, editor, viewer

  def admin?
    role == 'admin'
  end

  def editor?
    role == 'editor'
  end

  def viewer?
    role == 'viewer'
  end
end

# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :authorize_user, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post deleted.'
  end

  private

  def authorize_user
    unless current_user.admin? || (current_user.editor? && @post.editable_by?(current_user))
      redirect_to posts_path, alert: 'Not authorized.'
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
```

In this example, the `authorize_user` method checks the user's role before allowing actions. Admins can perform any action, while editors can only edit posts they own.

---

### ABAC - Attribute-Based Access Control

**Definition**: ABAC uses attributes (such as user attributes, object attributes, and environmental conditions) to make access decisions.

**Example**: Access to a project is based on the project’s department and the user’s department attribute.

```ruby
# app/models/project.rb
class Project < ApplicationRecord
  def accessible_by?(user)
    user.department == self.department
  end
end

# app/models/user.rb
class User < ApplicationRecord
  # Users have a department attribute
end

# In the controller
class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def show
    unless @project.accessible_by?(current_user)
      redirect_to root_path, alert: 'Access denied.'
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
```

In this example, the `accessible_by?` method checks if the user’s department matches the project’s department to determine access.

---

### PBAC - Policy-Based Access Control

**Definition**: PBAC uses policies to determine access based on a combination of attributes, roles, and contextual information.

**Example**: Users have access based on policies that consider their role, department, and time of access.

```ruby
# app/policies/project_policy.rb
class ProjectPolicy
  attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end

  def show?
    user.admin? || (user.department == project.department && within_business_hours?)
  end

  private

  def within_business_hours?
    Time.current.hour.between?(9, 17)
  end
end

# In the controller
class ProjectsController < ApplicationController
  before_action :set_project

  def show
    unless ProjectPolicy.new(current_user, @project).show?
      redirect_to root_path, alert: 'Access denied.'
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
```

In this example, the `ProjectPolicy` class determines access based on the user’s role, department, and the time of access.

---

These examples illustrate how different access control models can be applied in a Rails 7 application to manage user permissions and ensure secure access to resources.