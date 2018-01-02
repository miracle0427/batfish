sat
(objectives
 (a 5)
)
(model 
  (define-fun |0_dst-port| () Int
    0)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |0_src-port| () Int
    0)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__metric| () Int
    65535)
  (define-fun |0_dst-ip| () (_ BitVec 32)
    #x67000303)
  (define-fun |0__path-length_A| () Int
    (- 1))
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun AOSPFExportRemoveSoft1.0.0.0/16 () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |0_A_OVERALL_BEST_None_permitted| () Bool
    false)
  (define-fun |0__C_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__prefixLength| () Int
    7)
  (define-fun |0__C_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__metric| () Int
    65535)
  (define-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    8)
  (define-fun AOSPFExportRemoveSoft104.0.0.0/8 () Bool
    true)
  (define-fun |0_B_OSPF_SoftRedistributed_permitted| () Bool
    true)
  (define-fun |0_A_OVERALL_BEST_None_prefixLength| () Int
    0)
  (define-fun |0_C_OSPF_SoftRedistributed_metric| () Int
    65535)
  (define-fun |0_icmp-code| () Int
    0)
  (define-fun COSPFExportRemoveSoft103.0.0.0/8 () Bool
    true)
  (define-fun COSPFExportRemoveSoft2.0.0.0/16 () Bool
    true)
  (define-fun AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1 () Bool
    true)
  (define-fun |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_B_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_B_OSPF_BEST_None_metric| () Int
    0)
  (define-fun |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0__B_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0__C_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1 () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |0_C_CONNECTED_BEST_None_permitted| () Bool
    true)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__prefixLength| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_A_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun COSPFExportRemoveSoft3.0.0.0/16 () Bool
    true)
  (define-fun |0_B_OVERALL_BEST_None_prefixLength| () Int
    0)
  (define-fun |0_icmp-type| () Int
    0)
  (define-fun |0_B_OSPF_BEST_None_prefixLength| () Int
    0)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
  (define-fun |0_C_OVERALL_BEST_None_history| () (_ BitVec 1)
    #b1)
  (define-fun |0__B_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun BOSPFExportAddSoft () Bool
    false)
  (define-fun |0__path-length_B| () Int
    (- 1))
  (define-fun BOSPFExportRemoveSoft2.0.0.0/16 () Bool
    true)
  (define-fun |0_B_CONNECTED_BEST_None_prefixLength| () Int
    0)
  (define-fun |0__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun COSPFExportAddSoft () Bool
    false)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__permitted| () Bool
    false)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |0__path-length_C| () Int
    0)
  (define-fun |0_B_CONNECTED_BEST_None_permitted| () Bool
    false)
  (define-fun |0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0__A_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun AOSPFExportAddSoft () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0__A_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OVERALL_BEST_None_history| () (_ BitVec 1)
    #b0)
  (define-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__prefixLength| () Int
    9)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int
    0)
  (define-fun |C-StaticRouteAdd-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_A_OSPF_SINGLE-EXPORT__metric| () Int
    0)
  (define-fun |0_C_OSPF_SoftRedistributed_prefixLength| () Int
    9)
  (define-fun |0_C_OVERALL_BEST_None_prefixLength| () Int
    8)
  (define-fun |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_B_OSPF_SoftRedistributed_metric| () Int
    65535)
  (define-fun |0_C_OSPF_BEST_None_prefixLength| () Int
    0)
  (define-fun |0__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |0_C_OSPF_BEST_None_permitted| () Bool
    false)
  (define-fun |0__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |0_C_OSPF_BEST_None_metric| () Int
    0)
  (define-fun |0_C_OSPF_SoftRedistributed_permitted| () Bool
    true)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_B_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun |0_C_OSPF_SINGLE-EXPORT__permitted| () Bool
    true)
  (define-fun |0_C_OVERALL_BEST_None_adminDist| () Int
    0)
  (define-fun |0_C_OVERALL_BEST_None_metric| () Int
    0)
  (define-fun BOSPFExportRemoveSoft106.0.0.0/8 () Bool
    true)
  (define-fun BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2 () Bool
    true)
  (define-fun CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1 () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |B-StaticRouteAdd-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1| () Bool
    false)
  (define-fun |0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_C_CONNECTED_BEST_None_prefixLength| () Int
    8)
  (define-fun BOSPFExportRemoveSoft1.0.0.0/16 () Bool
    true)
  (define-fun |0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_SoftRedistributed_prefixLength| () Int
    7)
  (define-fun |0_ip-protocol| () Int
    0)
  (define-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool
    true)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int
    0)
  (define-fun |0_src-ip| () (_ BitVec 32)
    #x68000103)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int
    0)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int
    0)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/1| () Bool
    false)
  (define-fun |C-StaticRouteAdd-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_C_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_B_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/1| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |A-StaticRouteAdd-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/4| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool
    false)
  (define-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/2| () Bool
    false)
  (define-fun |0_C_OVERALL_BEST_None_permitted| () Bool
    true)
  (define-fun |0_B_OVERALL_BEST_None_permitted| () Bool
    false)
  (define-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool
    true)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool
    false)
  (define-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool
    false)
  (define-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool
    true)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool
    false)
  (define-fun |0_B_OSPF_BEST_None_permitted| () Bool
    false)
  (define-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool
    false)
  (define-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool
    false)
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
