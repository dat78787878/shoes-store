/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.testRest.Models;

import java.time.LocalDateTime;
import javax.persistence.*;
import java.util.UUID;
import org.hibernate.annotations.Type;

/**
 *
 * @author d782000
 */

@Entity

public class Amount {
    
    @Id
    @GeneratedValue(generator="system-uuid")
    @Column(length = 36)
    @Type(type = "uuid-char")
    private UUID amountProductId;

    public UUID getAmountProductId() {
        return amountProductId;
    }

    public void setAmountProductId(UUID amountProductId) {
        this.amountProductId = amountProductId;
    }
    
    @GeneratedValue(generator="system-uuid")
    @Column(length = 36)
    @Type(type = "uuid-char")
    private UUID productId;
    
    @Column
    private LocalDateTime createdDate = LocalDateTime.now();
    @Column
    private LocalDateTime modifiedDate = LocalDateTime.now(); 

    @Column
    private int size;
    @Column
    private String color;
     @Column
    private String image;

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    @Column
    private int amount;

    public UUID getProductId() {
        return productId;
    }

    public void setProductId(UUID productId) {
        this.productId = productId;
    }

    public LocalDateTime getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }

    public LocalDateTime getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(LocalDateTime modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    
    
    
}
