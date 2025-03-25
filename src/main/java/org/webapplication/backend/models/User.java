package org.webapplication.backend.models;

import lombok.*;

import javax.persistence.*;

@ToString
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "UserData")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Integer ID;
    @Column(name = "firstname")
    private String firstName;
    @Column
    private String lastName;
    @Column(name = "email")
    private String email;
    @Column(name = "number")
    private String phone;
    @Column
    private String password;

}
