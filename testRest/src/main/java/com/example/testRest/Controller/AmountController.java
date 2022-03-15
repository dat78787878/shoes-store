/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.testRest.Controller;
import com.example.testRest.Models.Amount;
import com.example.testRest.Models.SortCondition;
import com.example.testRest.Repo.AmountRepo;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

/**
 *
 * @author d782000
 */
@CrossOrigin("*")
@RestController
@RequestMapping("api/v1/Amount")

public class AmountController extends BaseController<Amount>  {
    @Autowired
    private AmountRepo amountRepo;
    
    @PutMapping(value = "")
    public int updateAmount(@RequestParam String productId,@RequestParam int size,@RequestParam int amount) {
        return amountRepo.updateAmountByID(productId,size,amount);
    }
    
    @GetMapping(value = "/productId")
    public int getAmount(@RequestParam String productId,@RequestParam String color,@RequestParam int size) {
        return amountRepo.getAmountByID(productId,color,size);
    }
    
     @GetMapping(value = "/color")
    public List<String> getColorProduct(@RequestParam String productId) {
        return amountRepo.getColorProductByID(productId);
    }
    
     @GetMapping(value = "/size")
    public List<String> getSizeProduct(@RequestParam String productId) {
        return amountRepo.getSizeProductByID(productId);
    }
    
       @GetMapping(value = "/img")
    public List<String> getImgProduct(@RequestParam String productId) {
        return amountRepo.getImgProductByID(productId);
    }
    
    
  
     @GetMapping(value = "/pagging")
    public ResponseEntity<Map<String, Object>> getPagging(@RequestParam int PageIndex, @RequestParam int PageSize, @RequestParam String Fil) {
        try {
            if(PageIndex == 0){
                PageIndex = 1;
            }
            if(PageSize == 1){
                PageSize = 10;
            }
            Map<String, Object> response = new HashMap<>();
            long count = amountRepo.count();
            response.put("data", amountRepo.getPagging(PageIndex, PageSize, Fil));
            response.put("pageIndex", PageIndex);
            response.put("pageSize", PageSize);
            response.put("totalRecord", count);
            if (count % PageSize != 0) {
                response.put("totalPages", (int) (count / PageSize) + 1);
            } else {
                response.put("totalPages", (int) (count / PageSize));
            }
            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
