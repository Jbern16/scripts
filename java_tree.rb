project_name = ARGV[0] 

`mkdir "#{project_name}"`
`touch "#{project_name}"/build.gradle`
`mkdir "#{project_name}"/src`
`mkdir "#{project_name}"/src/main`
`mkdir "#{project_name}"/src/test`
`mkdir "#{project_name}"/src/test/java`
`mkdir "#{project_name}"/src/main/java`
`touch "#{project_name}"/src/main/java/"#{project_name}.java"`
`touch "#{project_name}"/src/test/java/"#{project_name}Test.java"`

open("#{project_name}/build.gradle", 'a') do |f|
  f << "apply plugin: 'java'\n\nrepositories{\n mavenCentral()\n}\n\ndependencies {\n testCompile 'junit:junit:4.12'\n}"
end
