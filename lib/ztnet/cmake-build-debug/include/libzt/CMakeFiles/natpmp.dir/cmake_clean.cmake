file(REMOVE_RECURSE
  "lib/libnatpmp.pdb"
  "lib/libnatpmp.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/natpmp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
