sat
(objectives
 (a 0)
)
(model 
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |1_1__agg3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_e0-0_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |3_3__agg1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |1_1__agg3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg3-0ImportFilterAddSoft0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |3_3__agg3-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e2-0_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |2_2__e3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    22)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_c3_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__agg3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__e1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |2_icmp-code| () Int
    0)
  (define-fun |0_agg2-0-StaticRouteAddSoft-agg2-0,GigabitEthernet0/4 --> e2-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__e0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |4_4__e0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_agg3-1-StaticRouteAddSoft-agg3-1,GigabitEthernet0/3 --> e3-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_4__agg3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_e0-0ImportFilterAddSoft0_e0-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |0_CONTROL-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e1-1ImportFilterAddSoft0_e1-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_3__agg2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |3_3__agg2-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    22)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_0__e1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |1_1__c3_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__agg2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c2_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_c2-StaticRouteAddSoft-c2,GigabitEthernet0/1 --> agg0-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__agg2-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_SINGLE-EXPORT__metric| () Int
    22)
  (define-fun |0_0__c3_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    21)
  (define-fun |2_2__c1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |4_4__c2_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c2_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-0_OVERALL_BEST_None_metric| () Int
    21)
  (define-fun |3_3__agg3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |3_3__c2_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c2_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c2_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__e1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    21)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |4_4__e3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-1ImportFilterAddSoft0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |3_3__e1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_ip-protocol| () Int
    0)
  (define-fun |0_e0-1ImportFilterAddSoft0_e0-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_e1-0_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |1_1__agg3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg2-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_1__e1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3-StaticRouteAddSoft-c3,GigabitEthernet0/3 --> agg2-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_e0-1ImportFilterAddSoft0_e0-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_e1-0_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_agg3-0-StaticRouteAddSoft-agg3-0,GigabitEthernet0/4 --> e3-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__agg0-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_c2ImportFilterAddSoft0_c2_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_4__agg2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |1_1__agg1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1-StaticRouteAddSoft-e1-1,GigabitEthernet0/1 --> agg1-0,GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_1__e1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |1_1__e3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |1_1__e3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_e1-1OSPFExportAddSoft30.1.1.0/30| () Bool
    false)
  (define-fun |0_0__agg1-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_0__agg3-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_c0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |3_3__e2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |2_2__c2_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |3_3__agg3-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_0__agg2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c3_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_0__agg2-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |1_icmp-code| () Int
    0)
  (define-fun |0_e1-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |1_1__agg3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_1__c2_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_e0-1_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |0_e1-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__agg3-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |4_4__e0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0-StaticRouteAddSoft-c0,GigabitEthernet0/2 --> agg1-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__c3_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |1_dst-ip| () (_ BitVec 32)
    #x1e030000)
  (define-fun |0_CONTROL-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg3-1_OVERALL_BEST_None_metric| () Int
    21)
  (define-fun |0_c1_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_0__c1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1-StaticRouteAddSoft-agg2-1,GigabitEthernet0/4 --> e2-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_4__e1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |2_2__c1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg3-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_e3-1-StaticRouteAddSoft-e3-1,GigabitEthernet0/2 --> agg3-1,GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_4__c1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_Redistributed_metric| () Int
    20)
  (define-fun |4_4__agg3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg3-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_3__c0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0OSPFExportAddSoft30.0.0.0/30| () Bool
    false)
  (define-fun |0_c0ImportFilterAddSoft0_c0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_1__agg0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_0__c1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |3_3__e1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_e3-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg1-0ImportFilterAddSoft0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_0__e0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1-StaticRouteAddSoft-c1,GigabitEthernet0/4 --> agg3-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_4__c0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |3_3__c0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |3_3__c0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_0__agg3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |2_2__e0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OVERALL_BEST_None_metric| () Int
    22)
  (define-fun |0_e3-0_OVERALL_BEST_None_history| () (_ BitVec 1)
    #b1)
  (define-fun |0_agg2-0ImportFilterAddSoft0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_e1-1_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |2_2__c2_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_c0_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |2_2__agg3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |2_icmp-type| () Int
    0)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_0__e1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0-StaticRouteAddSoft-agg3-0,GigabitEthernet0/2 --> c1,GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_4__e3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |3_3__e0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |2_2__agg2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |4_4__agg0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_e3-0OSPFSoftRedisRemove| () Bool
    true)
  (define-fun |2_2__e1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_3__agg3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__agg1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c3_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_c0-StaticRouteAddSoft-c0,GigabitEthernet0/1 --> agg0-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_3__agg1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_3__e0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_0__e2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |3_3__agg3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |1_1__e3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__e0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__c1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e1-1_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |1_1__agg0-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_src-ip| () (_ BitVec 32)
    #x1e000000)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_src-port| () Int
    0)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_dst-ip| () (_ BitVec 32)
    #x1e030000)
  (define-fun |3_3__c2_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |1_1__agg2-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    24)
  (define-fun |0_agg3-1ImportFilterAddSoft0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_e2-0OSPFExportAddSoft30.2.0.0/30| () Bool
    false)
  (define-fun |1_1__agg3-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |1_1__c1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_CONTROL-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_1__e2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |0_0__e2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c1-StaticRouteAddSoft-c1,GigabitEthernet0/1 --> agg0-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_e1-1_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |0_0__agg1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_e2-1_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_0__agg0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_ip-protocol| () Int
    0)
  (define-fun |0_agg1-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__c0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c3_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1-StaticRouteAddSoft-agg3-1,GigabitEthernet0/1 --> c2,GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_3__agg0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_0__e1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_2__agg0-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |3_3__agg2-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_0__c1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |0_CONTROL-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_e2-0ImportFilterAddSoft0_e2-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0ImportFilterAddSoft0_e0-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_0__c2_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_1__agg3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__c0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |4_4__e0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |0_agg2-0-StaticRouteAddSoft-agg2-0,GigabitEthernet0/2 --> c1,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_agg3-1-StaticRouteAddSoft-agg3-1,GigabitEthernet0/4 --> e3-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_agg1-0-StaticRouteAddSoft-agg1-0,GigabitEthernet0/2 --> c1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_0__agg0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1-StaticRouteAddSoft-agg0-1,GigabitEthernet0/2 --> c3,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |1_1__c1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0ImportFilterAddSoft0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |1_1__agg2-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |3_3__e1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__e1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |3_3__agg2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1ImportFilterAddSoft0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-1_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |4_4__e1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0ImportFilterAddSoft0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_4__agg0-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_0__agg1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__c1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0OSPFExportAddSoft30.3.0.0/30| () Bool
    false)
  (define-fun |1_1__c0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c2_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_1__c3_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |2_2__agg2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1ImportFilterAddSoft0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c2ImportFilterAddSoft0_c2_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_1__c0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_c3-StaticRouteAddSoft-c3,GigabitEthernet0/1 --> agg0-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_src-ip| () (_ BitVec 32)
    #x1e010000)
  (define-fun |2_2__agg2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    21)
  (define-fun |4_4__c1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__agg1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e2-1ImportFilterAddSoft0_e2-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_dst-port| () Int
    0)
  (define-fun |0_agg1-1_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    22)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |2_2__agg1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__e2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0-StaticRouteAddSoft-e1-0,GigabitEthernet0/2 --> agg1-1,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_c1-StaticRouteAddSoft-c1,GigabitEthernet0/3 --> agg2-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_2__c3_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |4_4__c2_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_e0-0-StaticRouteAddSoft-e0-0,GigabitEthernet0/1 --> agg0-0,GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_4__agg0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_dst-port| () Int
    0)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |2_2__e2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_e2-0_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg1-1ImportFilterAddSoft0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |4_4__e2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_e1-0_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_CONTROL-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__agg2-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |4_4__c1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_e2-0_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg3-1ImportFilterAddSoft0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |4_icmp-type| () Int
    0)
  (define-fun |0_c0ImportFilterAddSoft0_c0_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    21)
  (define-fun |2_2__agg0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |2_2__e3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |2_2__e0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1ImportFilterAddSoft0_c1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_c1_OSPF_SINGLE-EXPORT__metric| () Int
    22)
  (define-fun |1_icmp-type| () Int
    0)
  (define-fun |0_0__c2_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0ImportFilterAddSoft0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_4__agg2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__agg3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |3_3__agg1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |1_1__c2_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_c2_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__e0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_0__c3_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |3_3__e2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1-StaticRouteAddSoft-e0-1,GigabitEthernet0/1 --> agg0-0,GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_1__agg0-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_0__c2_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_e2-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    24)
  (define-fun |2_2__e2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__c2_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |3_3__c1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c2_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c2-StaticRouteAddSoft-c2,GigabitEthernet0/3 --> agg2-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_3__agg3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_ip-protocol| () Int
    0)
  (define-fun |3_3__e2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0-StaticRouteAddSoft-agg1-0,GigabitEthernet0/1 --> c0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_0__agg1-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_0__agg1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_src-ip| () (_ BitVec 32)
    #x1e020000)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |4_4__agg3-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_dst-ip| () (_ BitVec 32)
    #x1e030000)
  (define-fun |1_1__e0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_e2-0_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_e1-0-StaticRouteAddSoft-e1-0,GigabitEthernet0/1 --> agg1-0,GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_3__e3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_e3-0-StaticRouteAddSoft-e3-0,GigabitEthernet0/1 --> agg3-0,GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_4__c2_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_src-port| () Int
    0)
  (define-fun |0_0__e3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_2__c3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |1_1__e0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0_OSPF_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__agg2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_icmp-type| () Int
    0)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |4_4__c2_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c3_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c3_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OVERALL_BEST_None_metric| () Int
    22)
  (define-fun |0_agg0-0ImportFilterAddSoft0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_1__c3_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c2_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |1_1__e2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg3-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0ImportFilterAddSoft0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_3__c3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_dst-port| () Int
    0)
  (define-fun |2_2__e3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_1__c0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |4_4__c0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |4_4__agg2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_e2-0_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |4_4__c1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_SINGLE-EXPORT__metric| () Int
    22)
  (define-fun |0_CONTROL-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_4__agg2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c2_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__e0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_CONTROL-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e3-1_OVERALL_BEST_None_metric| () Int
    22)
  (define-fun |0_agg1-0ImportFilterAddSoft0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_c2-StaticRouteAddSoft-c2,GigabitEthernet0/2 --> agg1-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__agg3-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_2__c2_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |4_4__c1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg2-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0ImportFilterAddSoft0_c0_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |2_2__e1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_0__c1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_0__agg0-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |2_2__e2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |3_3__c1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1-StaticRouteAddSoft-agg3-1,GigabitEthernet0/2 --> c3,GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_1__agg1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg2-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_0__agg1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |4_4__agg3-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_agg2-0-StaticRouteAddSoft-agg2-0,GigabitEthernet0/1 --> c0,GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_dst-ip| () (_ BitVec 32)
    #x1e030000)
  (define-fun |3_3__e3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |3_3__c3_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__agg3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__c2_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |2_2__agg0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1-StaticRouteAddSoft-agg0-1,GigabitEthernet0/3 --> e0-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_1__c0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_1__agg2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_0__agg2-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |2_2__e0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1-StaticRouteAddSoft-agg1-1,GigabitEthernet0/2 --> c3,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_agg3-1_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b1)
  (define-fun |0_e2-0ImportFilterAddSoft0_e2-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_e3-1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__e2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |3_3__e0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__e2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__c1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c2_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |4_4__agg1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |2_2__c1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_0__agg2-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_e3-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_CONTROL-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__c2_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0OSPFExportAddSoft30.1.0.0/30| () Bool
    false)
  (define-fun |1_1__e3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_0__e0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    22)
  (define-fun |0_CONTROL-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e3-0_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |1_src-ip| () (_ BitVec 32)
    #x1e000100)
  (define-fun |1_1__agg0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |4_4__agg3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |3_3__agg2-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0ImportFilterAddSoft0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_1__agg2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |3_3__c1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_CONTROL-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1ImportFilterAddSoft0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg3-0-StaticRouteAddSoft-agg3-0,GigabitEthernet0/1 --> c0,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    24)
  (define-fun |0_c3-StaticRouteAddSoft-c3,GigabitEthernet0/2 --> agg1-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |2_2__c0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_agg0-0-StaticRouteAddSoft-agg0-0,GigabitEthernet0/4 --> e0-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_2__agg1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0_OSPF_Redistributed_prefixLength| () Int
    30)
  (define-fun |2_2__agg2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c3_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_src-port| () Int
    0)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c3_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_0__e1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |1_1__c0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c0-StaticRouteAddSoft-c0,GigabitEthernet0/4 --> agg3-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__e1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_agg2-1ImportFilterAddSoft0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c2_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_e3-0_OSPF_BEST_None_metric| () Int
    22)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__e3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1ImportFilterAddSoft0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_3__e2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |1_1__agg0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    22)
  (define-fun |2_2__e2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0ImportFilterAddSoft0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |2_2__agg3-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |3_3__agg2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    21)
  (define-fun |1_1__agg0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-0_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b1)
  (define-fun |0_0__agg2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg0-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_3__agg3-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1ImportFilterAddSoft0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_2__e1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg3-1ImportFilterAddSoft0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    22)
  (define-fun |4_4__e0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_agg3-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg0-1_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |2_2__e0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_0__e3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__agg3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OVERALL_BEST_None_metric| () Int
    22)
  (define-fun |0_c0ImportFilterAddSoft0_c0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_0__agg0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_e3-0_OSPF_Redistributed_permitted| () Bool
    true)
  (define-fun |1_1__agg2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |1_1__agg0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-1-StaticRouteAddSoft-agg1-1,GigabitEthernet0/1 --> c2,GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_4__agg3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |4_4__e2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_c3_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    21)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_agg2-1-StaticRouteAddSoft-agg2-1,GigabitEthernet0/1 --> c2,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_0__c0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c2_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_e0-0-StaticRouteAddSoft-e0-0,GigabitEthernet0/2 --> agg0-1,GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_2__agg3-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c3_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_c1_OVERALL_BEST_None_metric| () Int
    22)
  (define-fun |0_0__agg0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1ImportFilterAddSoft0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__agg2-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg2-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |3_3__agg3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |0_0__agg3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_dst-ip| () (_ BitVec 32)
    #x1e030000)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__c2_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |2_2__e0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |1_1__agg3-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c2_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_ip-protocol| () Int
    0)
  (define-fun |4_4__agg1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1-StaticRouteAddSoft-agg0-1,GigabitEthernet0/4 --> e0-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_2__e3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1-StaticRouteAddSoft-c1,GigabitEthernet0/2 --> agg1-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_4__e0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg2-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_2__e0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0-StaticRouteAddSoft-agg0-0,GigabitEthernet0/2 --> c1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__agg2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2-StaticRouteAddSoft-c2,GigabitEthernet0/4 --> agg3-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg3-0-StaticRouteAddSoft-agg3-0,GigabitEthernet0/3 --> e3-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__agg3-1_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |2_2__e1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    25)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_e2-1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__c0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |2_2__e1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e0-1OSPFExportAddSoft30.0.1.0/30| () Bool
    false)
  (define-fun |0_agg0-0-StaticRouteAddSoft-agg0-0,GigabitEthernet0/1 --> c0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__agg1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__agg3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c2_OSPF_SINGLE-EXPORT__metric| () Int
    22)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_c2ImportFilterAddSoft0_c2_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg0-0ImportFilterAddSoft0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_0__agg0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1-StaticRouteAddSoft-agg2-1,GigabitEthernet0/3 --> e2-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_1__c2_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |2_2__c3_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0ImportFilterAddSoft0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_e3-0ImportFilterAddSoft0_e3-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int
    22)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_1__agg1-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1ImportFilterAddSoft0_e3-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_4__e2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_icmp-code| () Int
    0)
  (define-fun |0_agg0-1-StaticRouteAddSoft-agg0-1,GigabitEthernet0/1 --> c2,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |3_3__e3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg2-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__e2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |0_0__c1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |3_3__c3_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |3_3__agg0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |2_2__e3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |4_4__agg2-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0-StaticRouteAddSoft-agg2-0,GigabitEthernet0/3 --> e2-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__agg3-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c3-StaticRouteAddSoft-c3,GigabitEthernet0/4 --> agg3-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_0__agg2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |2_2__c1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1-StaticRouteAddSoft-e2-1,GigabitEthernet0/2 --> agg2-1,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |3_3__c2_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c3_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c2_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_1__c1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_src-ip| () (_ BitVec 32)
    #x1e010100)
  (define-fun |2_2__e3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__agg0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_e3-1_OSPF_SINGLE-EXPORT__metric| () Int
    22)
  (define-fun |1_1__e3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    25)
  (define-fun |4_4__e3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    21)
  (define-fun |3_3__agg3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    21)
  (define-fun |0_e0-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-0_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |0_e0-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_e1-1-StaticRouteAddSoft-e1-1,GigabitEthernet0/2 --> agg1-1,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_agg2-1-StaticRouteAddSoft-agg2-1,GigabitEthernet0/2 --> c3,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e2-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |1_1__agg1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_c2_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |4_4__e3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |2_2__e2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |2_2__c2_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_SINGLE-EXPORT__metric| () Int
    20)
  (define-fun |1_1__e2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_agg2-0ImportFilterAddSoft0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_e2-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_e0-1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__c0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_0__c3_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |3_3__e1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_icmp-code| () Int
    0)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_agg1-1-StaticRouteAddSoft-agg1-1,GigabitEthernet0/3 --> e1-0,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0_OSPF_Redistributed_adminDist| () Int
    0)
  (define-fun |2_2__agg3-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c2_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg3-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c1ImportFilterAddSoft0_c1_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |1_1__e1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_0__agg2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_e1-1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0ImportFilterAddSoft0_e3-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |4_4__c2_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e2-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    21)
  (define-fun |0_0__e0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0-StaticRouteAddSoft-agg1-0,GigabitEthernet0/4 --> e1-1,GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_4__agg0-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |1_1__agg3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_e3-0_OSPF_Redistributed_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__e3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3ImportFilterAddSoft0_c3_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |3_3__e3-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_4__agg2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_c0_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |1_1__c1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0-StaticRouteAddSoft-agg0-0,GigabitEthernet0/3 --> e0-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_4__agg2-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0ImportFilterAddSoft0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_1__agg0-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__agg0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__agg0-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1-StaticRouteAddSoft-e3-1,GigabitEthernet0/1 --> agg3-0,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |1_dst-port| () Int
    0)
  (define-fun |3_icmp-type| () Int
    0)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__e1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |4_ip-protocol| () Int
    0)
  (define-fun |3_3__e3-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OVERALL_BEST_None_ospfArea| () (_ BitVec 1)
    #b0)
  (define-fun |4_4__e0-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |0_c3ImportFilterAddSoft0_c3_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_c3_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_e1-0ImportFilterAddSoft0_e1-0_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_0__c1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |3_3__c3_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__e2-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0-StaticRouteAddSoft-c0,GigabitEthernet0/3 --> agg2-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__e2-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_e1-0_OVERALL_BEST_None_metric| () Int
    24)
  (define-fun |0_c1ImportFilterAddSoft0_c1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |2_2__agg0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_1__e1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c3_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e1-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |3_3__e1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1ImportFilterAddSoft0_e1-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_4__agg2-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    22)
  (define-fun |1_1__e1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg1-0-StaticRouteAddSoft-agg1-0,GigabitEthernet0/3 --> e1-0,GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_4__agg2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c2_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c2_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg3-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_3__agg2-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c3_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |3_3__agg0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__e2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_1__e0-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b00)
  (define-fun |4_4__agg2-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg2-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |3_3__c0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0ImportFilterAddSoft0_e1-0_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_0__e3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    21)
  (define-fun |0_e3-1_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |4_4__agg2-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1ImportFilterAddSoft0_c1_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_1__agg2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e3-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |1_1__c3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c3_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg3-1ImportFilterAddSoft0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_0__agg1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e3-0-StaticRouteAddSoft-e3-0,GigabitEthernet0/2 --> agg3-1,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_0__e1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_e3-1ImportFilterAddSoft0_e3-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |3_3__agg1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_e1-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_c2_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_adminDist| () Int
    0)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_0__agg2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |2_2__e2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg1-0_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg3-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OVERALL_BEST_None_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OVERALL_BEST_None_metric| () Int
    23)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_agg2-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |2_2__agg0-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |0_agg1-0ImportFilterAddSoft0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |3_3__agg0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |4_4__c0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/4_metric| () Int
    23)
  (define-fun |0_0__agg1-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |2_2__e2-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e2-0-StaticRouteAddSoft-e2-0,GigabitEthernet0/1 --> agg2-0,GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_e0-0_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_0__c0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__c0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__c3_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e0-0_OSPF_SINGLE-EXPORT__adminDist| () Int
    0)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |2_dst-port| () Int
    0)
  (define-fun |0_0__e1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1ImportFilterAddSoft0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_e2-1_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |0_0__agg0-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_metric| () Int
    24)
  (define-fun |0_agg2-1_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |1_1__e0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__agg1-0_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |2_2__e0-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |0_0__c3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c3_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__c3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__agg1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__c2_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_src-port| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |3_3__e2-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |3_3__e1-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    24)
  (define-fun |0_agg1-1_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_agg0-1_OSPF_EXPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |1_1__c1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_e1-0_OSPF_SINGLE-EXPORT__prefixLength| () Int
    30)
  (define-fun |2_2__agg2-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c3ImportFilterAddSoft0_c3_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_icmp-code| () Int
    0)
  (define-fun |2_2__c2_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c1_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |4_4__agg0-0_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e0-0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_e0-0_OVERALL_BEST_None_prefixLength| () Int
    30)
  (define-fun |1_1__e3-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e1-0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |2_2__agg1-0_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__e3-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |3_3__agg2-1_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__agg1-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg3-0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_CONTROL-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_EXPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |0_e2-1ImportFilterAddSoft0_e2-1_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_0__e0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg1-0_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |2_2__e0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__agg0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__e3-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_agg0-0_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |4_4__agg3-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_src-port| () Int
    0)
  (define-fun |0_agg3-0_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__e1-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-1ImportFilterAddSoft0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_4__c1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    24)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |1_1__c2_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/3_metric| () Int
    23)
  (define-fun |4_4__agg0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    30)
  (define-fun |2_2__agg0-0_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |4_4__e1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |2_2__e3-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |4_4__e0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |2_2__c0_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |0_0__e0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__agg0-1_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    30)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |1_1__c3_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__e0-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |3_3__c3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg2-1ImportFilterAddSoft0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_0__agg0-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_adminDist| () Int
    0)
  (define-fun |1_1__e2-0_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2ImportFilterAddSoft0_c2_OSPF_IMPORT_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_e2-0-StaticRouteAddSoft-e2-0,GigabitEthernet0/2 --> agg2-1,GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_4__agg2-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/1_metric| () Int
    23)
  (define-fun |1_1__e1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |2_2__e1-1_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_EXPORT_GigabitEthernet0/4_adminDist| () Int
    0)
  (define-fun |0_agg1-1_OSPF_EXPORT_GigabitEthernet0/2_metric| () Int
    23)
  (define-fun |0_0__e3-1_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_0__agg3-1_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_adminDist| () Int
    0)
  (define-fun |4_4__c3_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_EXPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_agg2-1_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_0__c0_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_c3ImportFilterAddSoft0_c3_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_ospfType| () (_ BitVec 2)
    #b11)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    30)
  (define-fun |0_e2-1_OSPF_SINGLE-EXPORT__metric| () Int
    24)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |3_3__agg0-1_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_agg1-1-StaticRouteAddSoft-agg1-1,GigabitEthernet0/4 --> e1-1,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_e2-1-StaticRouteAddSoft-e2-1,GigabitEthernet0/1 --> agg2-0,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_e0-1-StaticRouteAddSoft-e0-1,GigabitEthernet0/2 --> agg0-1,GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_e3-0_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    30)
  (define-fun |4_DATA-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_DATA-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |4_DATA-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |4_FAILED-EDGE_e1-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-1_c2| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-0_e2-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-1_c2| () Int
    0)
  (define-fun |4_FAILED-EDGE_e2-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-0_e0-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-1_e3-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-0_c1| () Int
    0)
  (define-fun |4_FAILED-EDGE_e0-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-1_c3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-1_e2-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-0_c0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-1_c2| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-1_e3-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-0_c1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-1_c3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-0_e3-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-1_c2| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-0_c1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-1_e0-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_e0-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-0_e3-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-0_e1-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-1_c3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-1_c3| () Int
    0)
  (define-fun |4_FAILED-EDGE_e1-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-0_c0| () Int
    0)
  (define-fun |4_FAILED-EDGE_e3-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-0_c0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-0_e0-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-1_e1-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-0_e2-1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-1_e2-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg2-0_c1| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-0_e1-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg1-1_e1-0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg3-0_c0| () Int
    0)
  (define-fun |4_FAILED-EDGE_agg0-1_e0-1| () Int
    0)
  (define-fun |3_DATA-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_DATA-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |3_DATA-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |3_FAILED-EDGE_e1-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-1_c2| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-0_c0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-1_e0-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-1_e0-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-1_e3-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-1_e2-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-1_c3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-0_c1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-0_c0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-1_c2| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-0_c1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-1_e1-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-1_c2| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-0_e0-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_e1-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-1_e3-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-0_c1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-0_e2-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-0_e2-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-0_e3-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_e0-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-1_c2| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-1_c3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-1_c3| () Int
    0)
  (define-fun |3_FAILED-EDGE_e0-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-0_e1-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_e3-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_e2-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-1_c3| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-0_c0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-0_e3-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-0_c1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg3-0_c0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg0-0_e0-1| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg2-1_e2-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-0_e1-0| () Int
    0)
  (define-fun |3_FAILED-EDGE_agg1-1_e1-0| () Int
    0)
  (define-fun |2_DATA-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_DATA-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |2_DATA-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |2_FAILED-EDGE_agg2-1_e2-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-0_c0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-0_e0-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-0_c0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-1_e3-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-1_e1-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_e1-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-1_e2-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-0_e2-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-0_e3-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-1_c2| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-1_e3-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-1_e0-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-0_c0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-1_c3| () Int
    0)
  (define-fun |2_FAILED-EDGE_e2-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-0_e3-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-0_e0-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-1_e1-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-1_c2| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-0_c1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-1_c2| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-0_e1-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-0_e1-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_e0-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_e1-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_e0-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-0_e2-0| () Int
    0)
  (define-fun |2_FAILED-EDGE_e3-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-1_c3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-1_e0-1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-1_c3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg3-1_c2| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-1_c3| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-0_c0| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg0-0_c1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg1-0_c1| () Int
    0)
  (define-fun |2_FAILED-EDGE_agg2-0_c1| () Int
    0)
  (define-fun |1_DATA-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_DATA-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_FAILED-EDGE_e0-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-0_c0| () Int
    0)
  (define-fun |1_FAILED-EDGE_e1-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-0_c1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-1_e0-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-0_c0| () Int
    0)
  (define-fun |1_FAILED-EDGE_e3-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-1_e1-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-0_e0-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-0_c1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-1_c2| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-0_c1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-0_e2-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-1_c2| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-1_e0-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-1_c3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-0_c0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-1_c3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-0_e2-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-1_c2| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-1_e3-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-1_e1-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-0_e3-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-0_e1-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-1_e2-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-1_c3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-0_c0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-1_c3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-0_e1-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-1_e3-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg2-1_e2-0| () Int
    0)
  (define-fun |1_FAILED-EDGE_e1-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_e0-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-0_c1| () Int
    0)
  (define-fun |1_FAILED-EDGE_e2-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg1-1_c2| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg0-0_e0-1| () Int
    0)
  (define-fun |1_FAILED-EDGE_agg3-0_e3-1| () Int
    0)
  (define-fun |0_DATA-FORWARDING_e3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e3-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e3-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e3-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg3-1_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg3-1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg3-1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg3-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg2-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg2-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg2-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg1-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg1-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg1-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg3-0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg3-0_GigabitEthernet0/3| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg3-0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg3-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg2-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg2-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg2-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg2-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg0-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg1-0_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg0-1_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_agg0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_agg0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_c3_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c3_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c3_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c3_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_c2_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c2_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c2_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_c2_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c1_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c1_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_c1_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c0_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c0_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_c0_GigabitEthernet0/4| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e1-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e1-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e0-1_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e0-1_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_e0-0_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e0-0_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e2-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e1-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e1-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e0-1_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_e0-0_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_e3-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e3-0_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e3-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e2-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e2-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e1-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e3-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    true)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_agg3-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_agg2-0_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg1-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    true)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_agg3-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_agg2-1_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg0-0_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg1-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    false)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_agg0-1_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    true)
  (define-fun |0_c3_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_c2_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    true)
  (define-fun |0_c1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_c0_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e1-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e0-1_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_e0-0_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    true)
  (define-fun |0_e3-0_CONNECTED_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e3-0_CONNECTED_BEST_None_prefixLength| () Int
    30)
  (define-fun |0_e3-0_OSPF_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e2-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e2-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e1-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e3-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg3-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg2-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg1-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg3-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg2-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg0-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg1-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_agg0-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_c3_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_c2_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_c1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_c0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e1-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e0-1_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e0-0_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_e3-0_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_FAILED-EDGE_e3-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_e0-1_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-0_c1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-0_c0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-0_e2-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_e2-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-1_c3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-1_c2| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-0_c0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-1_e1-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-1_c2| () Int
    0)
  (define-fun |0_FAILED-EDGE_e0-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-1_e2-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-1_e0-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-0_e0-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-0_e1-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-1_e3-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-1_c3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-1_e3-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-0_e0-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-0_c0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-1_c3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-1_c2| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-0_c1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-0_c0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-1_c2| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-1_e0-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-0_e3-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-0_c1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-0_e2-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg0-1_c3| () Int
    0)
  (define-fun |0_FAILED-EDGE_e1-0_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg2-1_e2-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-0_c1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-1_e1-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg3-0_e3-1| () Int
    0)
  (define-fun |0_FAILED-EDGE_agg1-0_e1-0| () Int
    0)
  (define-fun |0_FAILED-EDGE_e1-1_GigabitEthernet0/3| () Int
    0)
)
