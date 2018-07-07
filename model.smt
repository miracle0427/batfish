sat
(objectives
 (a 1)
)
(model 
  (define-fun |1__reachable-id_C| () Int
    0)
  (define-fun |1_1__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_AOSPFExportRemoveSoft104.0.0.0/8| () Bool
    false)
  (define-fun |0_AOSPFExportRemoveSoft105.0.0.0/8| () Bool
    true)
  (define-fun |1_1__B_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_A-StaticRouteAddSoft-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_0__C_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_dst-port| () Int
    0)
  (define-fun |0_src-port| () Int
    0)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    2)
  (define-fun |0_A_OSPF_BEST_None_metric| () Int
    2)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__metric| () Int
    2)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2AllowChoiceUseSoft| () Bool
    false)
  (define-fun |1_1__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__C_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_CONTROL-FORWARDING_C_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    1)
  (define-fun |0_AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_C-StaticRouteAddSoft-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |1_C_OSPF_SINGLE-EXPORT__permitted| () Bool
    false)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__prefixLength| () Int
    8)
  (define-fun |1_1__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__metric| () Int
    1)
  (define-fun |1_CONTROL-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_A_OVERALL_BEST_None_prefixLength| () Int
    8)
  (define-fun |1_A_OVERALL_BEST_None_prefixLength| () Int
    8)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0_0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_icmp-code| () Int
    0)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |1_B_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |0_0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |1_C_OVERALL_BEST_None_prefixLength| () Int
    0)
  (define-fun |1_1__C_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_B_OSPF_SINGLE-EXPORT__prefixLength| () Int
    0)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |1_1__B_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    8)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__prefixLength| () Int
    8)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__A_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_A_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |1_ip-protocol| () Int
    0)
  (define-fun |0_B_OVERALL_BEST_None_prefixLength| () Int
    8)
  (define-fun |0_0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_icmp-type| () Int
    0)
  (define-fun |1_1__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |1_BImportFilterAddSoft1_B_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |0_A-StaticRouteAddSoft-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    true)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_A_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |1_B_OVERALL_BEST_None_prefixLength| () Int
    0)
  (define-fun |1_A_OVERALL_BEST_None_history| () (_ BitVec 1)
    #b1)
  (define-fun |1_BImportFilterAddSoft1_B_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_A_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |1_1__C_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_CImportFilterAddSoft1_C_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_C_OSPF_SINGLE-EXPORT__metric| () Int
    0)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |1_C-StaticRouteAddSoft-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_AImportFilterAddSoft1_A_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |0_0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    8)
  (define-fun |0_0__B_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_COSPFExportAddSoft3.0.0.0/16| () Bool
    false)
  (define-fun |0_AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_COSPFExportAddSoft3.0.0.0/16| () Bool
    false)
  (define-fun |1_1__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_1__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_A_OVERALL_BEST_None_history| () (_ BitVec 1)
    #b1)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |1_A-StaticRouteAddSoft-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__A_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__A_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_icmp-type| () Int
    0)
  (define-fun |0_0__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_A_OSPF_BEST_None_prefixLength| () Int
    0)
  (define-fun |1_B_OSPF_SINGLE-EXPORT__metric| () Int
    0)
  (define-fun |1_C_OSPF_SINGLE-EXPORT__prefixLength| () Int
    0)
  (define-fun |0_CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_B-StaticRouteAddSoft-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_A_OSPF_BEST_None_prefixLength| () Int
    8)
  (define-fun |1_icmp-code| () Int
    0)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |1_C_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |0_B-StaticRouteAddSoft-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_1__B_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_B_OSPF_SINGLE-EXPORT__permitted| () Bool
    false)
  (define-fun |1_C-StaticRouteAddSoft-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_CONTROL-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |1_src-port| () Int
    0)
  (define-fun |0_0__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_A_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__prefixLength| () Int
    8)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    2)
  (define-fun |0_CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0__reachable-id_B| () Int
    2)
  (define-fun |1_CImportFilterAddSoft1_C_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__metric| () Int
    0)
  (define-fun |1_AOSPFExportAddSoft3.0.0.0/16| () Bool
    false)
  (define-fun |0_AOSPFExportAddSoft3.0.0.0/16| () Bool
    false)
  (define-fun |0_C_OVERALL_BEST_None_prefixLength| () Int
    8)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    8)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |0_0__B_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B-StaticRouteAddSoft-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0_0__C_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_A-StaticRouteAddSoft-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |0__reachable-id_C| () Int
    3)
  (define-fun |1_B-StaticRouteAddSoft-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2AllowChoiceUseSoft| () Bool
    false)
  (define-fun |0_C-StaticRouteAddSoft-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    3)
  (define-fun |1_A_OSPF_SINGLE-EXPORT__metric| () Int
    0)
  (define-fun |0_B_OVERALL_BEST_None_metric| () Int
    1)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |1_CONTROL-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_C_OVERALL_BEST_None_metric| () Int
    2)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |1_dst-port| () Int
    0)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |1_AImportFilterAddSoft1_A_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |1_1__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_A_OSPF_SINGLE-EXPORT__prefixLength| () Int
    0)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    true)
  (define-fun |1_A_OSPF_BEST_None_metric| () Int
    0)
  (define-fun |0_0__C_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1__reachable-id_B| () Int
    0)
  (define-fun |0_0__A_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2| () Bool
    true)
  (define-fun |1_1__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool
    true)
  (define-fun |1_A_OSPF_SINGLE-EXPORT__permitted| () Bool
    false)
  (define-fun |1_1__A_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_ip-protocol| () Int
    0)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    8)
  (define-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| () Int
    8)
  (define-fun |1_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    8)
  (define-fun |1__reachable_C| () Bool
    false)
  (define-fun |1__reachable_B| () Bool
    false)
  (define-fun |1__reachable_A| () Bool
    true)
  (define-fun |1__reachable-id_A| () Int
    1)
  (define-fun |1_src-ip| () (_ BitVec 32)
    #x67000303)
  (define-fun |1_dst-ip| () (_ BitVec 32)
    #x68000103)
  (define-fun |1_DATA-FORWARDING_C_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_B_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_DATA-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |1_CONTROL-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_CONTROL-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |1_CONTROL-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |1_A_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |1_C_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |1_B_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |1_A_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool
    true)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |1_A_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |1_C_OVERALL_BEST_None_permitted| () Bool
    false)
  (define-fun |1_B_OVERALL_BEST_None_permitted| () Bool
    false)
  (define-fun |1_A_CONNECTED_BEST_None_permitted| () Bool
    true)
  (define-fun |1_A_CONNECTED_BEST_None_prefixLength| () Int
    8)
  (define-fun |1_A_OSPF_BEST_None_permitted| () Bool
    false)
  (define-fun |1_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |1_FAILED-EDGE_A_GigabitEthernet0/4| () Int
    0)
  (define-fun |1_FAILED-EDGE_A_C| () Int
    0)
  (define-fun |1_FAILED-EDGE_C_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_A_GigabitEthernet0/3| () Int
    0)
  (define-fun |1_FAILED-EDGE_B_C| () Int
    0)
  (define-fun |1_FAILED-EDGE_A_B| () Int
    0)
  (define-fun |1_FAILED-EDGE_B_GigabitEthernet0/3| () Int
    0)
  (define-fun |0__reachable_C| () Bool
    true)
  (define-fun |0__reachable_B| () Bool
    true)
  (define-fun |0__reachable_A| () Bool
    true)
  (define-fun |0__reachable-id_A| () Int
    1)
  (define-fun |0_src-ip| () (_ BitVec 32)
    #x67000303)
  (define-fun |0_dst-ip| () (_ BitVec 32)
    #x69000104)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/1| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_A_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_choice| () Bool
    true)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    true)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_C_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_B_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_A_CONNECTED_BEST_None_permitted| () Bool
    true)
  (define-fun |0_A_CONNECTED_BEST_None_prefixLength| () Int
    8)
  (define-fun |0_A_OSPF_BEST_None_permitted| () Bool
    true)
  (define-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted| () Bool
    true)
  (define-fun |0_FAILED-EDGE_A_GigabitEthernet0/4| () Int
    0)
  (define-fun |0_FAILED-EDGE_B_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_C_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_B_C| () Int
    0)
  (define-fun |0_FAILED-EDGE_A_GigabitEthernet0/3| () Int
    0)
  (define-fun |0_FAILED-EDGE_A_C| () Int
    0)
  (define-fun |0_FAILED-EDGE_A_B| () Int
    0)
)
