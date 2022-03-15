/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.testRest.Repo;

import com.example.testRest.Models.Amount;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
/**
 *
 * @author d782000
 */
public interface AmountRepo extends BaseRepo<Amount>{
    @Query(value = "proc_get_amount_by_id ?1,?2,?3", nativeQuery = true)
    public int getAmountByID(String productId,String color,int size);
    
     @Query(value = "proc_get_colorproduct_by_id ?1", nativeQuery = true)
    public List<String> getColorProductByID(String productId);
    
     @Query(value = "proc_get_sizeproduct_by_id ?1", nativeQuery = true)
    public List<String> getSizeProductByID(String productId);
    
     @Query(value = "proc_get_imgproduct_by_id ?1", nativeQuery = true)
    public List<String> getImgProductByID(String productId);
    
    
    @Query(value = "proc_update_amount_by_id ?1,?2,?3", nativeQuery = true)
    public int updateAmountByID(String productId,int size,int amount);
    
     @Query(value = "proc_get_amount_filter ?1,?2,?3", nativeQuery = true)
    public List<Amount> getPagging(int pageIndex, int pageSize, String fil);
}
