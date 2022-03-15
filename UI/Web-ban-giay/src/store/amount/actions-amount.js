import BaseAPI from '@/api/base/base-api';
import { BASE_URL } from '@/api/url'
export default{
    /**
     * Lấy danh sách chi tiết đơn hàng
     */
    getAmounts : async function(context,payload){
        let url = BASE_URL + '/Amount';
        let res = await BaseAPI.getAsync(url,payload);
      
        return res;
    },
    /**
     * Lấy danh sách phân trang theo điều kiện lọc
     */
    getAmountsPagging : async function(context,payload){
        let url = BASE_URL + '/Amount/pagging';
        if(payload){
            url += '?PageIndex='+payload.PageIndex+'&PageSize='+payload.PageSize+'&Fil='+payload.Filter;
        }
        let res = await BaseAPI.getAsync(url,payload);
        if(res){
            // context.commit("updateUsers");
        }
        return res;
    },
    getAmountsById : async function(context,payload){
        let url = BASE_URL + '/Amount/productId';
        console.log(payload);

        if(payload){
            url += '?productId='+payload.productId+'&color='+payload.color+'&size='+payload.size;
        }
        let res = await BaseAPI.getAsync(url,payload);
        return res;
    },
    getColorProductById : async function(context,payload){
        let url = BASE_URL + '/Amount/color'+`?productId=${payload}`;
        let res = await BaseAPI.getAsync(url,payload);
        return res;
    },
    getSizeProductById : async function(context,payload){
        let url = BASE_URL + '/Amount/size'+`?productId=${payload}`;
        let res = await BaseAPI.getAsync(url,payload);
        return res;
    },
    getImgProductById : async function(context,payload){
        let url = BASE_URL + '/Amount/img'+`?productId=${payload}`;
        let res = await BaseAPI.getAsync(url,payload);
        return res;
    },
    
    addAmountAsync : async function(context,payload){
        let url = BASE_URL + '/Amount';
        let res = await BaseAPI.postAsync(url,payload);
        if(res){
            return res;
        }
        
    },
    editAmountAsync : async function(context,payload){
        let url = BASE_URL + '/Amount';
        let res = await BaseAPI.putAsync(url,payload);
        return res;
    },
    
    deleteAmountAsync : async function(context, payload){
        let url = BASE_URL + '/Amount/'+payload;
        let res = await BaseAPI.deleteAsync(url,payload);
        return res;
    }
}
    