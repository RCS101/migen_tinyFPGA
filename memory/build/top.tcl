prj_project new -name "top" -impl "impl" -dev LCMXO2-1200HC-4SG32C -synthesis "synplify"
prj_src add "top.v" -work work
prj_impl option top "top"
prj_project save
prj_run Synthesis -impl impl -forceOne
prj_run Translate -impl impl
prj_run Map -impl impl
prj_run PAR -impl impl
prj_run Export -impl impl -task Bitgen
prj_run Export -impl impl -task Jedecgen