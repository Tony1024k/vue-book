package com.learn.vuebook.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ShippingAddress")
@Getter
@Setter()
@DynamicUpdate
public class ShippingAddress implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(nullable = false, updatable = false)
    @JsonIgnore
    User user;

    @Column(length = 64)
    private String address;

    @Column(length = 32)
    private String phone;

    @Column(length = 16)
    private String postcode;

    @Column(length = 24)
    private String consignee;

}
