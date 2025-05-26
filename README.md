# Employee Management System

A web application for managing employee information within a company, built with **Ruby on Rails** and **MySQL**.


## Tech Stack

* **Framework**: Ruby on Rails
* **Database**: MySQL
* **Language**: Ruby
* **Frontend**: HTML + ERB


## Requirements

* Ruby >= 3.0
* Rails >= 7.0
* MySQL >= 5.7 or 8.x
* Bundler


## Setup Instructions

1. **Clone the repository**

```bash
git clone https://github.com/your-username/employee-management.git
cd employee-management
```

2. **Install dependencies**

```bash
bundle install
```

3. **Create and migrate the database**

```bash
rails db:create
rails db:migrate
```

4. **Start the development server**

```bash
rails server
```

Visit: [http://localhost:3000](http://localhost:3000)

---

## Features

### Employee Management

* Create employee with:

  * Full name
  * Date of birth
  * Gender
  * Phone number
  * Email
  * Address
  * Join date
  * Resignation date (optional)

* List all employees with:

  * Full name
  * Phone number
  * Email

* View detailed employee profile

* Update employee information (e.g. resignation date)

---

### Relative Management (Extended Feature)

* Each employee can have multiple relatives (e.g. spouse, children)

* Relative fields:

  * Full name
  * Date of birth
  * Gender
  * Relationship (spouse, son, daughter)

* Support for:

  * Add a relative
  * Edit relative details
  * Delete a relative

---

## Database Schema Overview

* `Employee` has many `Relatives`
* `Relative` belongs to `Employee`

---
