rails generate scaffold Leader 			first_name:string middle_initial:string last_name:string leader_gid:integer school_id:integer comments:text
rails generate scaffold Phone  			leader_id:integer phone_number:string which_phone:integer comments:text
rails generate scaffold Email  			leader_id:integer email_account:string which_phone:integer comments:text
rails generate scaffold School 			school_name:string school_gid:integer comments:text school_address:string school_url:string comments:text
rails generate scaffold Group  			group_gid:string cycle:string school_id:integer meridian:string comments:text
rails generate scaffold Title  			leader_title:string comments:text
rails generate scaffold Role   			leader_role:string comments:text
rails generate scaffold Cycle  			cycle_name:string comments:text
rails generate scaffold Coach  			first_name:string middle_initial:string last_name:string coach_gid:integer school_id:integer email:string comments:text
rails generate scaffold Course			session_number:string session_day:string session_time:string comments:text
rails generate scaffold Facilitator 	group_id:integer leader_id:integer role_id:integer title_id:integer 
rails generate scaffold Seniority   	coach_role:string 
rails generate scaffold Supervisor 		group_id:integer coach_id:integer seniority:integer
rails generate scaffold User 			email:string password:string
rails generate scaffold Offering		name:string 
rails generate scaffold Training 		leader_id:string offering_id:integer register:string attended:string day:string payment:string certificate:string comments:text


INSERT INTO schools (school_name) VALUES("PS 72");
INSERT INTO schools (school_name) VALUES("PS 115");
INSERT INTO schools (school_name) VALUES("PS 119");
INSERT INTO schools (school_name) VALUES("PS 208");
INSERT INTO schools (school_name) VALUES("HCZ PA1");
INSERT INTO schools (school_name) VALUES("HCZ PAII");



coach_orders
coaches
cycles
days
emails
facilitators
groups
leaders
menus
phones


roles
schools
sec_lists
secs
seniorities
supervisors
titles
trainings
users



schema_migrations

