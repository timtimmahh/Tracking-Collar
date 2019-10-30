file(REMOVE_RECURSE
  "lib/libztcore.pdb"
  "lib/libztcore.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/ztcore.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
