package org.webapplication.backend.models;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "Company")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Company{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "email")
    private String emailOwner;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "initCapital")
    private int initCapital;

    @Column(name = "todayCapital")
    private int todayCapital;

    @Column(name = "dateCreate")
    private String date;




}
