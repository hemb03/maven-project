<build>
  <from>java:8u40</from>
  <maintainer>john.doe@example.com</maintainer>
  <tags>
    <tag>latest</tag>
    <tag>${project.version}</tag>
  </tags>
  <ports>
    <port>8080</port>
  </ports>
  <volumes>
    <volume>/path/to/expose</volume>
  </volumes>
  <buildOptions>
    <shmsize>2147483648</shmsize>
  </buildOptions>
 
  <entryPoint>
    <!-- exec form for ENTRYPOINT -->
    <exec>
      <arg>java</arg>
      <arg>-jar</arg>
      <arg>/opt/demo/server.jar</arg>
    </exec>
  </entryPoint>
 
  <assembly>
    <mode>dir</mode>
    <targetDir>/opt/demo</targetDir>
    <descriptor>assembly.xml</descriptor>
  </assembly>
</build>
