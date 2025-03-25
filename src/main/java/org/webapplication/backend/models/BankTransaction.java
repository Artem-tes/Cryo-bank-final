package org.webapplication.backend.models;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "TransactionHistory")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class BankTransaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "idCard")
    private Integer idCard;

    @Column(name = "date")
    private String date;

    @Column(name = "amount")
    private String amount;

    @Column(name = "move")
    private Integer move;

}
