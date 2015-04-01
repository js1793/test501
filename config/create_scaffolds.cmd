rails generate scaffold Leader 			first_name:string middle_initial:string last_name:string leader_gid:integer school_id:integer comments:text
rails generate scaffold Phone  			leader_id:integer phone_number:string which_phone:integer comments:text
rails generate scaffold Email  			leader_id:integer email_account:string which_phone:integer comments:text
rails generate scaffold School 			school_name:string school_gid:integer comments:text school_address:string school_url:string comments:text
rails generate scaffold Group  			group_gid:string cycle_id:integer school_id:integer meridian:string comments:text
rails generate scaffold Title  			leader_title:string comments:text
rails generate scaffold Role   			leader_role:string comments:text
rails generate scaffold Cycle  			cycle_name:string comments:text
rails generate scaffold Coach  			first_name:string middle_initial:string last_name:string coach_gid:integer school_id:integer email:string comments:text
rails generate scaffold Sec		        num_session:string day_session:string t_session:string comments:text
rails generate scaffold Facilitator 	group_id:integer leader_id:integer role_id:integer title_id:integer
rails generate scaffold Seniority   	coach_role:string
rails generate scaffold Supervisor 		group_id:integer coach_id:integer seniority_id:integer
rails generate scaffold User 			email:string password:string
rails generate scaffold Menu     		name:string
rails generate scaffold Training 		leader_id:string menu_id:integer register:string attended:string day:string payment:string certificate:string comments:text



rails generate migration add_school_id_to_leaders school_id:integer
rails generate migration add_leader_id_to_phones leader_id:integer
rails generate migration add_leader_id_to_emails leader_id:integer
rails generate migration add_leader_id_to_trainings leader_id:integer
rails generate migration add_leader_id_to_groups leader_id:integer
rails generate migration add_school_id_to_groups school_id:integer
rails generate migration add_school_id_to_coaches school_id:integer
rails generate migration add_cycle_id_to_groups cycle_id:integer
rails generate migration add_group_id_to_facilitators group_id:integer
rails generate migration add_leader_id_to_facilitators leader_id:integer
rails generate migration add_role_id_to_facilitators role_id:integer
rails generate migration add_title_id_to_facilitators title_id:integer
rails generate migration add_group_id_to_facilitators group_id:integer
rails generate migration add_senority_id_to_facilitators supervisor_id:integer
rails generate migration add_menu_id_to_trainings menu_id:integer


