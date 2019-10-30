file(REMOVE_RECURSE
  "lib/liblwip.pdb"
  "lib/liblwip.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/lwip.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
