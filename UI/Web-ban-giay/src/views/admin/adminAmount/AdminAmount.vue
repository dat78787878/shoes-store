<template>
<div class="container p-5 h-content-table-admin">
    <div class="row">
        <div class="col-md-offset-1">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">Danh sách số lượng</h3>
                        </div>
                        <div style="width:300px;">
                          <h-input v-model="params.Filter" placeholder="Tìm kiếm" @keyup="filterData"/>
                        </div>
                        <!-- <div class="col col-xs-6 text-right" style="justify-content: flex-end; display: flex">
                            <div type="button" class="btn btn-sm btn-add h-display-flex" @click="addOrderDetail">
                                <div>Thêm mới</div>
                            </div>
                        </div> -->
                    </div>
                </div>
                <h-grid 
                    :columns="columns"
                    :data="amounts"
                    :pageSize="params.PageSize"
                    :pageIndex="params.PageIndex"
                    :fieldId="'productId'"
                    @deleteData="deleteAmount"
                    @editData="editAmount"
                >
                </h-grid>
                <div class="h-pagination">
                    <h-pagination ref="pagination" @getData="getData" :totalRecord="params.TotalRecord" :pageSize="params.PageSize" :totalPages="params.TotalPages" :pageIndex="params.PageIndex" :filter="params.Filter" :textTotal="'so luong'" />
                </div>
            </div>
        </div>
    </div>
    <AmountDetail :isShow="isShow" @closePopup="setStatePopup(false)" @showPopup="setStatePopup(true)" :amount="amount" :mode="mode" @loadData="getData" />
</div>
</template>

<script>
import {
    mapActions
} from "vuex";
import {
    ModuleAmount
} from "@/store/module-const";
import AmountDetail from "./AmountDetail.vue";
import {
    Amount
} from "@/common/models/models";
import _ from 'lodash';
export default {
    components: {
        AmountDetail,
    },
    created() {
        const me = this;
        me.getData();
    },
    data() {
        return {
            amounts: [],
            params: {
                PageIndex: 1,
                PageSize: 10,
                TotalRecord: 0,
                TotalPages: 0,
                Filter: "",
            },
            isShow: false,
            amount: Amount(),

            mode: "add",

            columns : [
                {
                    text : "",
                    icon : "fa fa-cog",
                    center : "text-center",
                    width:100
                },
                {
                    text :"STT",
                    serial : true,
                    center : "text-center"
                },
                {
                    text :"Sản phẩm",
                    width : 200,
                    dataField :"productId"
                },
                {
                    text :"Số lượng",
                    width : 200,
                    dataField :"amount"
                },
                {
                    text :"Size",
                    width : 200,
                    dataField :"size"
                },
            ]
        };
    },
    methods: {
        ...mapActions(ModuleAmount, [
            "getAmountsPagging",
            "getAmountsById",
            "deleteAmountAsync",
        ]),
        async getData() {
            const me = this;
            if(me.$refs.pagination){
                me.params.PageIndex = me.$refs.pagination.pageIndexD;
            }
            let res = await me.getAmountsPagging(me.params);
            if (res) {
                me.amounts = [...res.data];
                me.params.PageIndex = res.pageIndex;
                me.params.PageSize = res.pageSize;
                me.params.TotalRecord = res.totalRecord;
                me.params.TotalPages = res.totalPages;
            }
            if (!res) {
                me.amounts = [];
                me.params = {
                    PageIndex: 1,
                    PageSize: 10,
                    TotalRecord: 0,
                    TotalPages: 0,
                    Filter: me.params.Filter,
                };
            }

        },

        /**
         * Hàm sử lí click button thêm mới
         */
        async addAmount() {
            const me = this;
            me.showPopup();
            me.mode = "add";
        },
        // bịp vl vcl

        async editAmount(id) {
            const me = this;
            // Lấy OrderDetail theo id
            me.amount = await me.getAmountById(id);
            // Show popup
            me.showPopup();
            me.mode = "edit";
        },
        async deleteAmount(id) {
            const me = this;
            await me.deleteAmountAsync(id);
            if (me.amounts && me.amounts.length == 1) {
                me.params.PageIndex = me.$refs.pagination.pageIndexD - 1;
            } else if (me.amounts && me.amounts.length > 1) {
                me.params.PageIndex = me.$refs.pagination.pageIndexD;
            }
            let res = await me.getAmountPagging(me.params);
            if (res) {
                me.amounts = [...res.data];
                me.params.PageIndex = res.pageIndex;
                me.params.PageSize = res.pageSize;
                me.params.TotalRecord = res.totalRecord;
                me.params.TotalPages = res.totalPages;
            }
            if (!res) {
                me.amounts = [];
                me.params = {
                    PageIndex: 1,
                    PageSize: 10,
                    TotalRecord: 0,
                    TotalPages: 0,
                    Filter: me.params.Filter,
                };
            }
        },
        showPopup() {
            const me = this;
            me.isShow = true;
        },
        setStatePopup(show) {
            const me = this;
            me.isShow = show;
            if (!show) {
                me.resetData();
            }
        },
        resetData() {
            const me = this;
            me.amount = Amount();
        },

        filterData: _.debounce(function () {
          this.getData();
        }, 500),
    },
};
</script>

<style scoped>
@import "../../../assets/content/css/common/tableAdmin.css";
</style>
