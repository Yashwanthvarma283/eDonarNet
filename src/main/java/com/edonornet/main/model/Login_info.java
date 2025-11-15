package com.edonornet.main.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Login_info")
@Getter
public class Login_info {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    String os=System.getProperty("os.name");
    String version=System.getProperty("os.version");
    String architecture=System.getProperty("os.arch");
    String java_version=System.getProperty("java.version");
    String system_user_name=System.getProperty("user.name");
    @Setter
    String email;
    @Setter
    String status;
    @Setter
    String reason="User Found";

}
