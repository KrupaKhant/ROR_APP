# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Account.destroy_all
Branch.destroy_all
Employee.destroy_all
State.destroy_all
City.destroy_all
Role.destroy_all
User.destroy_all

# Create accounts
accounts = Account.create([
    { name: 'Saving', billable: true },
    { name: 'Nominal', billable: false },
    { name: 'Test acc.', billable: true }
  ])
  
  # Create branches
  branches = Branch.create([
    { name: 'SBI' },
    { name: 'Bank of Baroda' },
    { name: 'Axis Bank' }
  ])

  roles = Role.create([
    { name: 'Manager' },
    { name: 'Admin' },
    { name: 'Designer' }
  ])
  
  # Create employees and associate them with accounts and branches
  employees = Employee.create([
    { name: 'Krupa', account: accounts.first, branch: branches.first, salary: 50000.0 , role_id: roles.first.id },
    { name: 'Hetvi', account: accounts.second, branch: branches.second, salary: 78000.54 , role_id: roles.second.id },
    { name: 'Aelan', account: accounts.third, branch: branches.third, salary: 63500 , role_id: roles.third.id },
    { name: 'Jyot', account: accounts.first, branch: branches.second , salary: 45000, role_id: roles.first.id},
    { name: 'Urja', account: accounts.second, branch: branches.third, salary: 35000.45, role_id: roles.second.id }
  ])

  states =  State.create([
    {name: "Gujarat", code: "GJ"},
    {name: "Karnataka", code: "KA"},
    {name: "Telangana", code: "TA"}
  ])
  cities = City.create([
    {name: "Ahemdabad", pincode: "382424", state: states.first},
    {name: "Banglore", pincode: "90001", state: states.second},
    {name: "Surat", pincode: "60601", state: states.first},
    {name: "Hydrabad", pincode: "60601", state: states.third}
  ])

 users =  User.create([
    { name: 'Krupa', salary: 50000.0, dob: Date.new(2001, 7, 10), email: 'kpk02@example.com' },
    { name: 'Hetvi', salary: 70000.54, dob: Date.new(2004, 4, 23), email: 'hetvi45@example.com' },
    { name: 'Urja', salary: 63500.0, dob: Date.new(1998, 11, 15), email: 'patelurja@example.com' },
    { name: 'Aelan', salary: 45000.0, dob: Date.new(2000, 2, 28), email: 'aelan02@example.com' },
    { name: 'Jyot', salary: 35000.45, dob: Date.new(2002, 9, 7), email: 'js562@example.com' }
  ])
  


