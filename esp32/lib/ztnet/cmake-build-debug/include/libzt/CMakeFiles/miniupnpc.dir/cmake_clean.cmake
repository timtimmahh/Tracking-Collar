file(REMOVE_RECURSE
  "lib/libminiupnpc.pdb"
  "lib/libminiupnpc.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/miniupnpc.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
