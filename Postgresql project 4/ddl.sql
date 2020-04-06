show search_path;
create schema stackoverflow_filtered;
select *
from information_schema.tables 
where table_schema = 'stackoverflow_filtered';
create table stackoverflow_filtered."result"(
"identical" int4 not null,
 "display_name" text not null, 
 "reputation" int4  null, 
 "website_url" text  null, 
 "location" text  null ,
 "about_me" text  null ,
 "views" int4  null ,
 "up_votes" int4  null, 
 "down_votes" int4  null, 
 "image_url" text null, 
 "users_created_at" timestamp not null,
 "updated_at" timestamp not null, 
 "city" text not null, 
 "country" text not null, 
 "identity" int4 not null, 
 "questions_user_id" int4 not null, 
 "title" text not null, 
 "body" text not null, 
 "accepted_answer_id" int4 not null, 
 "questions_score" int4 not null, 
 "view_count" int4 not null, 
 "comment_count" int4 not null,
 "questions_created_at" timestamp not null, 
 "identify" int4 not null,
 "answers_user_id" int4 not null,
 "question_id" int4 not null,
 "answers_body" text not null,
 "answers_score" int4 not null default 0,
 "comment_at" int4 not null default 0,
 "answers_created_at" timestamp,
 primary key ("identical")
 );
select *
from information_schema.tables
where table_schema = 'stackoverflow_filtered';
select * from result;
select * from stackoverflow_filtered.result;
set search_path to stackoverflow_filtered;
select * from result;
select count (*)
from result;
create unique index reputation_idx on result (reputation);

create index display_name_idx on result using hash (display_name);

create view stackoverflow_filtered.stack_view as 
select display_name, city, identify from postgres.stackoverflow_filtered.results
where accepted_answer_id is not null; 



 