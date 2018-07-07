tomcat:
  service.dead:
    - name: tomcat

delete-file:
 file.absent:
   - name: /var/lib/tomcat/webapps/java-sample-app-1.0.0

/var/lib/tomcat/webapps/java-sample-app-1.0.0.war:
  file.managed:
  - source: salt://apache/files/java-sample-app-1.0.0.war

tomcat1:
  service.running:
    - name: tomcat
    - reload: True
