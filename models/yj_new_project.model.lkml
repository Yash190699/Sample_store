connection: "test_bq_yj_ss"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: yj_new_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yj_new_project_default_datagroup

explore: sample {}

