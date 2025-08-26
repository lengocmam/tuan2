# Sử dụng Tomcat chính thức
FROM tomcat:9.0-jdk11

# Xóa các ứng dụng mặc định của Tomcat (ROOT, docs, examples)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào thư mục webapps/ROOT.war
COPY Emailbt2.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]

