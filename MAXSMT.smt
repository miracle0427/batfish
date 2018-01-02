(declare-fun |0_FAILED-EDGE_A_B| () Int)
(declare-fun |0_FAILED-EDGE_A_C| () Int)
(declare-fun |0_FAILED-EDGE_A_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_B_C| () Int)
(declare-fun |0_FAILED-EDGE_C_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_C_D| () Int)
(declare-fun |0_FAILED-EDGE_D_GigabitEthernet0/3| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_A_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_A_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_B_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_B_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_C_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_C_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_C_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_C_OSPF_BEST_None_metric| () Int)
(declare-fun |0_C_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_C_STATIC_BEST_None_prefixLength| () Int)
(declare-fun |0_D_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_D_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_D_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_D_OSPF_BEST_None_metric| () Int)
(declare-fun |0_D_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_D_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_C_OSPF_SoftRedistributed_metric| () Int)
(declare-fun |0_C_OSPF_SoftRedistributed_prefixLength| () Int)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_D_OSPF_SoftRedistributed_metric| () Int)
(declare-fun |0_D_OSPF_SoftRedistributed_prefixLength| () Int)
(declare-fun |0_D_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_D_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int)
(declare-fun |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/2 () Bool)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_A_OVERALL_BEST_None_permitted| () Bool)
(declare-fun AOSPFExportRemoveSoft1.0.0.0/16 () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun AOSPFExportRemoveSoft3.0.0.0/16 () Bool)
(declare-fun AOSPFExportRemoveSoft104.0.0.0/8 () Bool)
(declare-fun AOSPFExportAddSoft () Bool)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1 () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1 () Bool)
(declare-fun |0_B_OVERALL_BEST_None_permitted| () Bool)
(declare-fun BOSPFExportRemoveSoft1.0.0.0/16 () Bool)
(declare-fun BOSPFExportRemoveSoft2.0.0.0/16 () Bool)
(declare-fun BOSPFExportAddSoft () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2 () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted| () Bool)
(declare-fun |0_D_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/4 () Bool)
(declare-fun |0_C_OSPF_BEST_None_permitted| () Bool)
(declare-fun COSPFExportRemoveSoft2.0.0.0/16 () Bool)
(declare-fun COSPFExportRemoveSoft3.0.0.0/16 () Bool)
(declare-fun COSPFExportRemoveSoft4.0.0.0/16 () Bool)
(declare-fun COSPFExportRemoveSoft103.0.0.0/8 () Bool)
(declare-fun COSPFExportAddSoft () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/2 () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1 () Bool)
(declare-fun |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun CStaticRouteRemove107.0.4.3/8 () Bool)
(declare-fun |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun DImportFilterAddSoft0_D_OSPF_IMPORT_GigabitEthernet0/2 () Bool)
(declare-fun |0_D_OSPF_BEST_None_permitted| () Bool)
(declare-fun DOSPFExportRemoveSoft4.0.0.0/16 () Bool)
(declare-fun DOSPFExportRemoveSoft107.0.0.0/8 () Bool)
(declare-fun DOSPFExportAddSoft () Bool)
(declare-fun |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool)
(declare-fun |0_C_STATIC_BEST_None_permitted| () Bool)
(declare-fun |0_D_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/4_choice| () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_C_STATIC_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_D_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool)
(declare-fun |0_C_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_C_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_D_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_D_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/2| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/2| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/4| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/2| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_D_GigabitEthernet0/2| () Bool)
(declare-fun |0_CONTROL-FORWARDING_D_GigabitEthernet0/3| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/2| () Bool)
(declare-fun |A-StaticRouteAdd-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2|
             ()
             Bool)
(declare-fun |0__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/1| () Bool)
(declare-fun |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_B_GigabitEthernet0/1| () Bool)
(declare-fun |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_B_GigabitEthernet0/2| () Bool)
(declare-fun |B-StaticRouteAdd-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/4| () Bool)
(declare-fun |C-StaticRouteAdd-C,GigabitEthernet0/4 --> D,GigabitEthernet0/2|
             ()
             Bool)
(declare-fun |0__C_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/3| () Bool)
(declare-fun |0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/2| () Bool)
(declare-fun |C-StaticRouteAdd-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2|
             ()
             Bool)
(declare-fun |0__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/1| () Bool)
(declare-fun |C-StaticRouteAdd-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2|
             ()
             Bool)
(declare-fun |0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_D_GigabitEthernet0/3| () Bool)
(declare-fun |0__D_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_D_GigabitEthernet0/2| () Bool)
(declare-fun |D-StaticRouteAdd-D,GigabitEthernet0/2 --> C,GigabitEthernet0/4|
             ()
             Bool)
(declare-fun |0__D_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_C_OSPF_SoftRedistributed_permitted| () Bool)
(declare-fun |0_D_OSPF_SoftRedistributed_permitted| () Bool)
(declare-fun |0_src-ip| () (_ BitVec 32))
(declare-fun |0__on-loop_C_B| () Bool)
(declare-fun |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__C_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__on-loop_C_A| () Bool)
(declare-fun |0__C_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__B_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__on-loop_C_D| () Bool)
(declare-fun |0__D_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__on-loop_C_C| () Bool)
(declare-fun |0__C_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__C_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__D_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(assert (>= |0_FAILED-EDGE_A_B| 0))
(assert (<= |0_FAILED-EDGE_A_B| 1))
(assert (>= |0_FAILED-EDGE_A_C| 0))
(assert (<= |0_FAILED-EDGE_A_C| 1))
(assert (>= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_A_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_B_C| 0))
(assert (<= |0_FAILED-EDGE_B_C| 1))
(assert (>= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_C_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_C_D| 0))
(assert (<= |0_FAILED-EDGE_C_D| 1))
(assert (>= |0_FAILED-EDGE_D_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_D_GigabitEthernet0/3| 1))
(assert (= |0_FAILED-EDGE_A_B| 0))
(assert (= |0_FAILED-EDGE_A_C| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_B_C| 0))
(assert (= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_C_D| 0))
(assert (= |0_FAILED-EDGE_D_GigabitEthernet0/3| 0))
(assert (>= |0_dst-port| 0))
(assert (>= |0_src-port| 0))
(assert (< |0_dst-port| 65536))
(assert (< |0_src-port| 65536))
(assert (>= |0_icmp-type| 0))
(assert (>= |0_ip-protocol| 0))
(assert (< |0_icmp-type| 256))
(assert (<= |0_ip-protocol| 256))
(assert (>= |0_icmp-code| 0))
(assert (< |0_icmp-code| 16))
(assert (>= |0_A_OVERALL_BEST_None_metric| 0))
(assert (< |0_A_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_A_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_A_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_B_OVERALL_BEST_None_metric| 0))
(assert (< |0_B_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_B_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_B_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_C_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_C_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_C_OVERALL_BEST_None_metric| 0))
(assert (< |0_C_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_C_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_C_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_C_OSPF_BEST_None_metric| 0))
(assert (< |0_C_OSPF_BEST_None_metric| 65536))
(assert (>= |0_C_OSPF_BEST_None_prefixLength| 0))
(assert (<= |0_C_OSPF_BEST_None_prefixLength| 32))
(assert (>= |0_C_STATIC_BEST_None_prefixLength| 0))
(assert (<= |0_C_STATIC_BEST_None_prefixLength| 32))
(assert (>= |0_D_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_D_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_D_OVERALL_BEST_None_metric| 0))
(assert (< |0_D_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_D_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_D_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_D_OSPF_BEST_None_metric| 0))
(assert (< |0_D_OSPF_BEST_None_metric| 65536))
(assert (>= |0_D_OSPF_BEST_None_prefixLength| 0))
(assert (<= |0_D_OSPF_BEST_None_prefixLength| 32))
(assert (>= |0_D_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_D_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_A_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_A_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric| 0))
(assert (< |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric| 65536))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0))
(assert (<= |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 32))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 0))
(assert (< |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 65536))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_B_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_B_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_B_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_B_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| 0))
(assert (< |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| 65536))
(assert (>= |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| 0))
(assert (< |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| 65536))
(assert (>= |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0))
(assert (<= |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 32))
(assert (>= |0_C_OSPF_SoftRedistributed_metric| 0))
(assert (< |0_C_OSPF_SoftRedistributed_metric| 65536))
(assert (>= |0_C_OSPF_SoftRedistributed_prefixLength| 0))
(assert (<= |0_C_OSPF_SoftRedistributed_prefixLength| 32))
(assert (>= |0_C_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_C_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric| 0))
(assert (< |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric| 65536))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| 0))
(assert (<= |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| 32))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| 0))
(assert (< |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| 65536))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0))
(assert (<= |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 32))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 0))
(assert (< |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 65536))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_D_OSPF_SoftRedistributed_metric| 0))
(assert (< |0_D_OSPF_SoftRedistributed_metric| 65536))
(assert (>= |0_D_OSPF_SoftRedistributed_prefixLength| 0))
(assert (<= |0_D_OSPF_SoftRedistributed_prefixLength| 32))
(assert (>= |0_D_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_D_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_D_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_D_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric| 0))
(assert (< |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric| 65536))
(assert (>= |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0))
(assert (<= |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 32))
(assert (>= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0))
(assert (<= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 32))
(assert (let ((a!1 (ite (<= (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
                        |0_C_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|
                        |0_C_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|
                        (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
  (ite (and (not false)
            true
            true
            |0_C_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_A_C| 0)
            AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/2)
       (ite true a!1 (not |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|))
       (not |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
(assert (let ((a!1 (and |0_A_OSPF_SINGLE-EXPORT__permitted|
                true
                true
                (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 16)
                true
                true
                true
                true
                true))
      (a!2 (ite true
                (ite (<= |0_A_OVERALL_BEST_None_metric| 65535)
                     (and (= |0_A_OSPF_SINGLE-EXPORT__permitted|
                             |0_A_OVERALL_BEST_None_permitted|)
                          (= |0_A_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_A_OVERALL_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_A_OSPF_SINGLE-EXPORT__metric|
                             |0_A_OVERALL_BEST_None_metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_A_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_A_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x01000000 #xffff0000))
                     AOSPFExportRemoveSoft1.0.0.0/16)
                a!1
                (ite (and (and true true)
                          true
                          |0_A_OVERALL_BEST_None_permitted|
                          (= |0_FAILED-EDGE_A_C| 0))
                     a!2
                     (not |0_A_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x03000000 #xffff0000))
                     AOSPFExportRemoveSoft3.0.0.0/16)
                a!1
                a!3)))
(let ((a!5 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xff000000)
                        (bvand #x68000000 #xff000000))
                     AOSPFExportRemoveSoft104.0.0.0/8)
                (and |0_A_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 8)
                     true
                     true
                     true
                     true
                     true)
                a!4)))
  (or AOSPFExportAddSoft a!5))))))
(assert (let ((a!1 (ite (<= (+ |0_B_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
                        |0_B_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|
                        |0_B_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|
                        (+ |0_B_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
  (ite (and (not false)
            true
            true
            |0_B_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_A_B| 0)
            AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1)
       (ite true a!1 (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|))
       (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
(assert (let ((a!1 (ite (<= (+ |0_A_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
                        |0_A_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|
                        |0_A_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|
                        (+ |0_A_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
  (ite (and (not false)
            true
            true
            |0_A_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_A_B| 0)
            BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1)
       (ite true a!1 (not |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|))
       (not |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
(assert (let ((a!1 (and |0_B_OSPF_SINGLE-EXPORT__permitted|
                true
                true
                (= |0_B_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_B_OSPF_SINGLE-EXPORT__prefixLength| 16)
                true
                true
                true
                true
                true))
      (a!2 (ite true
                (ite (<= |0_B_OVERALL_BEST_None_metric| 65535)
                     (and (= |0_B_OSPF_SINGLE-EXPORT__permitted|
                             |0_B_OVERALL_BEST_None_permitted|)
                          (= |0_B_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_B_OVERALL_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_B_OSPF_SINGLE-EXPORT__metric|
                             |0_B_OVERALL_BEST_None_metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_B_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_B_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x01000000 #xffff0000))
                     BOSPFExportRemoveSoft1.0.0.0/16)
                a!1
                (ite (and (and true true)
                          true
                          |0_B_OVERALL_BEST_None_permitted|
                          (= |0_FAILED-EDGE_A_B| 0))
                     a!2
                     (not |0_B_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x02000000 #xffff0000))
                     BOSPFExportRemoveSoft2.0.0.0/16)
                a!1
                a!3)))
  (or BOSPFExportAddSoft a!4)))))
(assert (let ((a!1 (ite (<= (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|
                        |0_C_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|
                        |0_C_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|
                        (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
  (ite (and (not false)
            true
            true
            |0_C_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_B_C| 0)
            BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2)
       (ite true a!1 (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|))
       (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
(assert (let ((a!1 (ite (<= (+ |0_D_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
                        |0_D_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|
                        |0_D_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|
                        (+ |0_D_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|))))
  (ite (and (not false)
            true
            true
            |0_D_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_C_D| 0)
            CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/4)
       (ite true a!1 (not |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|))
       (not |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|))))
(assert (let ((a!1 (and |0_C_OSPF_SINGLE-EXPORT__permitted|
                true
                true
                (= |0_C_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 16)
                true
                true
                true
                true
                true))
      (a!2 (ite true
                (ite (<= |0_C_OSPF_BEST_None_metric| 65535)
                     (and (= |0_C_OSPF_SINGLE-EXPORT__permitted|
                             |0_C_OSPF_BEST_None_permitted|)
                          (= |0_C_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_C_OSPF_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_C_OSPF_SINGLE-EXPORT__metric|
                             |0_C_OSPF_BEST_None_metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_C_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_C_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x02000000 #xffff0000))
                     COSPFExportRemoveSoft2.0.0.0/16)
                a!1
                (ite (and (and true true)
                          true
                          |0_C_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_C_D| 0))
                     a!2
                     (not |0_C_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x03000000 #xffff0000))
                     COSPFExportRemoveSoft3.0.0.0/16)
                a!1
                a!3)))
(let ((a!5 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x04000000 #xffff0000))
                     COSPFExportRemoveSoft4.0.0.0/16)
                a!1
                a!4)))
(let ((a!6 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xff000000)
                        (bvand #x67000000 #xff000000))
                     COSPFExportRemoveSoft103.0.0.0/8)
                (and |0_C_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_C_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 8)
                     true
                     true
                     true
                     true
                     true)
                a!5)))
  (or COSPFExportAddSoft a!6)))))))
(assert (let ((a!1 (ite (<= (+ |0_A_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|
                        |0_A_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|
                        |0_A_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|
                        (+ |0_A_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
  (ite (and (not false)
            true
            true
            |0_A_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_A_C| 0)
            CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/2)
       (ite true a!1 (not |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|))
       (not |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
(assert (let ((a!1 (ite (<= (+ |0_B_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
                        |0_B_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|
                        |0_B_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|
                        (+ |0_B_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
  (ite (and (not false)
            true
            true
            |0_B_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_B_C| 0)
            CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1)
       (ite true a!1 (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|))
       (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x6b000000 #xff000000))
          (= |0_FAILED-EDGE_B_C| 0)
          CStaticRouteRemove107.0.4.3/8)
     (and |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|
          (= |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength| 8)
          true
          true
          true)
     (not |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|)))
(assert (let ((a!1 (ite (<= (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
                        |0_C_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|
                        |0_C_OSPF_SINGLE-EXPORT__prefixLength|)
                     true
                     true
                     true
                     (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|
                        (+ |0_C_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true)
                (not |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
  (ite (and (not false)
            true
            true
            |0_C_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_C_D| 0)
            DImportFilterAddSoft0_D_OSPF_IMPORT_GigabitEthernet0/2)
       (ite true a!1 (not |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|))
       (not |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
(assert (let ((a!1 (ite true
                (ite (<= |0_D_OSPF_BEST_None_metric| 65535)
                     (and (= |0_D_OSPF_SINGLE-EXPORT__permitted|
                             |0_D_OSPF_BEST_None_permitted|)
                          (= |0_D_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_D_OSPF_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_D_OSPF_SINGLE-EXPORT__metric|
                             |0_D_OSPF_BEST_None_metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_D_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_D_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!2 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x04000000 #xffff0000))
                     DOSPFExportRemoveSoft4.0.0.0/16)
                (and |0_D_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_D_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_D_OSPF_SINGLE-EXPORT__prefixLength| 16)
                     true
                     true
                     true
                     true
                     true)
                (ite (and (and true true)
                          true
                          |0_D_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_C_D| 0))
                     a!1
                     (not |0_D_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xff000000)
                        (bvand #x6b000000 #xff000000))
                     DOSPFExportRemoveSoft107.0.0.0/8)
                (and |0_D_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_D_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_D_OSPF_SINGLE-EXPORT__prefixLength| 8)
                     true
                     true
                     true
                     true
                     true)
                a!2)))
  (or DOSPFExportAddSoft a!3)))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x6b000000 #xff000000))
          (= |0_FAILED-EDGE_D_GigabitEthernet0/3| 0))
     (and |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
          (= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 8)
          true
          true
          true)
     (not |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)))
(assert (=> |0_A_OVERALL_BEST_None_permitted| true))
(assert (=> |0_B_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_A_OVERALL_BEST_None_metric|
                       |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                    (and (= |0_A_OVERALL_BEST_None_metric|
                            |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_A_OVERALL_BEST_None_prefixLength|
                   |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
      (or (> |0_A_OVERALL_BEST_None_prefixLength|
             |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_A_OVERALL_BEST_None_metric|
                       |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                    (and (= |0_A_OVERALL_BEST_None_metric|
                            |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_A_OVERALL_BEST_None_prefixLength|
                   |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
      (or (> |0_A_OVERALL_BEST_None_prefixLength|
             |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
          a!4)))))))
(assert (= (or |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
       |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
   |0_A_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
        |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (or (and |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
             (= |0_A_OVERALL_BEST_None_prefixLength|
                |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
             true
             true
             (= |0_A_OVERALL_BEST_None_metric|
                |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true)
        (and |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_A_OVERALL_BEST_None_prefixLength|
                |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
             true
             true
             (= |0_A_OVERALL_BEST_None_metric|
                |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OVERALL_BEST_None_metric|
                       |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                    (and (= |0_B_OVERALL_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_B_OVERALL_BEST_None_prefixLength|
                   |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
      (or (> |0_B_OVERALL_BEST_None_prefixLength|
             |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OVERALL_BEST_None_metric|
                       |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                    (and (= |0_B_OVERALL_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_B_OVERALL_BEST_None_prefixLength|
                   |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|
      (or (> |0_B_OVERALL_BEST_None_prefixLength|
             |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
          a!4)))))))
(assert (= (or |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
       |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
   |0_B_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (or (and |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_B_OVERALL_BEST_None_prefixLength|
                |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
             true
             true
             (= |0_B_OVERALL_BEST_None_metric|
                |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true)
        (and |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|
             (= |0_B_OVERALL_BEST_None_prefixLength|
                |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
             true
             true
             (= |0_B_OVERALL_BEST_None_metric|
                |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_C_OSPF_BEST_None_metric|
                       |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
                    (and (= |0_C_OSPF_BEST_None_metric|
                            |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_C_OSPF_BEST_None_prefixLength|
                   |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
      (or (> |0_C_OSPF_BEST_None_prefixLength|
             |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_C_OSPF_BEST_None_metric|
                       |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                    (and (= |0_C_OSPF_BEST_None_metric|
                            |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_C_OSPF_BEST_None_prefixLength|
                   |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
      (or (> |0_C_OSPF_BEST_None_prefixLength|
             |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_C_OSPF_BEST_None_metric|
                       |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                    (and (= |0_C_OSPF_BEST_None_metric|
                            |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_C_OSPF_BEST_None_prefixLength|
                   |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|
      (or (> |0_C_OSPF_BEST_None_prefixLength|
             |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
          a!4)))))))
(assert (= (or |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
       |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
       |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
   |0_C_OSPF_BEST_None_permitted|))
(assert (=> (or |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
        |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (or (and |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
             (= |0_C_OSPF_BEST_None_prefixLength|
                |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
             true
             true
             (= |0_C_OSPF_BEST_None_metric|
                |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true)
        (and |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_C_OSPF_BEST_None_prefixLength|
                |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
             true
             true
             (= |0_C_OSPF_BEST_None_metric|
                |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true)
        (and |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|
             (= |0_C_OSPF_BEST_None_prefixLength|
                |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
             true
             true
             (= |0_C_OSPF_BEST_None_metric|
                |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
             true
             true
             true
             true
             true
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_C_STATIC_BEST_None_prefixLength|
                  |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
               (and (= |0_C_STATIC_BEST_None_prefixLength|
                       |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted| a!4))))))
(assert (= |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|
   |0_C_STATIC_BEST_None_permitted|))
(assert (=> |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|
    (and |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|
         (= |0_C_STATIC_BEST_None_prefixLength|
            |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_D_OSPF_BEST_None_metric|
                       |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                    (and (= |0_D_OSPF_BEST_None_metric|
                            |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_D_OSPF_BEST_None_prefixLength|
                   |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
      (or (> |0_D_OSPF_BEST_None_prefixLength|
             |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
          a!4)))))))
(assert (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
   |0_D_OSPF_BEST_None_permitted|))
(assert (=> |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
    (and |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
         (= |0_D_OSPF_BEST_None_prefixLength|
            |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         true
         true
         (= |0_D_OSPF_BEST_None_metric|
            |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         true
         true
         true
         true
         true)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_D_CONNECTED_BEST_None_prefixLength|
                  |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
               (and (= |0_D_CONNECTED_BEST_None_prefixLength|
                       |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| a!4))))))
(assert (= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
   |0_D_CONNECTED_BEST_None_permitted|))
(assert (=> |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
    (and |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
         (= |0_D_CONNECTED_BEST_None_prefixLength|
            |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true
         true)))
(assert (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_choice|
   (and |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|
        (= |0_A_OVERALL_BEST_None_prefixLength|
           |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
        true
        true
        (= |0_A_OVERALL_BEST_None_metric|
           |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
   (and |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_A_OVERALL_BEST_None_prefixLength|
           |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        (= |0_A_OVERALL_BEST_None_metric|
           |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
   (and |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_B_OVERALL_BEST_None_prefixLength|
           |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        (= |0_B_OVERALL_BEST_None_metric|
           |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice|
   (and |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|
        (= |0_B_OVERALL_BEST_None_prefixLength|
           |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
        true
        true
        (= |0_B_OVERALL_BEST_None_metric|
           |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_choice|
   (and |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|
        (= |0_C_OSPF_BEST_None_prefixLength|
           |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
        true
        true
        (= |0_C_OSPF_BEST_None_metric|
           |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice|
   (and |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_C_OSPF_BEST_None_prefixLength|
           |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        (= |0_C_OSPF_BEST_None_metric|
           |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice|
   (and |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|
        (= |0_C_OSPF_BEST_None_prefixLength|
           |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
        true
        true
        (= |0_C_OSPF_BEST_None_metric|
           |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_C_STATIC_IMPORT_GigabitEthernet0/1_choice|
   (and |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_C_STATIC_BEST_None_prefixLength|
           |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_choice|
   (and |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|
        (= |0_D_OSPF_BEST_None_prefixLength|
           |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
        true
        true
        (= |0_D_OSPF_BEST_None_metric|
           |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
   (and |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
        (= |0_D_CONNECTED_BEST_None_prefixLength|
           |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_C_OVERALL_BEST_None_metric|
                       |0_C_OSPF_BEST_None_metric|)
                    (and (= |0_C_OVERALL_BEST_None_metric|
                            |0_C_OSPF_BEST_None_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_C_OVERALL_BEST_None_prefixLength|
                   |0_C_OSPF_BEST_None_prefixLength|)
                (or (< |0_C_OVERALL_BEST_None_adminDist| 110)
                    (and (= |0_C_OVERALL_BEST_None_adminDist| 110)
                         (or false a!3))))))
  (=> |0_C_OSPF_BEST_None_permitted|
      (or (> |0_C_OVERALL_BEST_None_prefixLength|
             |0_C_OSPF_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_C_OVERALL_BEST_None_metric| 0)
                    (and (= |0_C_OVERALL_BEST_None_metric| 0) a!2)))))
(let ((a!4 (and (= |0_C_OVERALL_BEST_None_prefixLength|
                   |0_C_STATIC_BEST_None_prefixLength|)
                (or (< |0_C_OVERALL_BEST_None_adminDist| 1)
                    (and (= |0_C_OVERALL_BEST_None_adminDist| 1) (or false a!3))))))
  (=> |0_C_STATIC_BEST_None_permitted|
      (or (> |0_C_OVERALL_BEST_None_prefixLength|
             |0_C_STATIC_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_C_OSPF_BEST_None_permitted| |0_C_STATIC_BEST_None_permitted|)
   |0_C_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_C_OSPF_BEST_None_permitted| |0_C_STATIC_BEST_None_permitted|)
    (or (and |0_C_OSPF_BEST_None_permitted|
             (= |0_C_OVERALL_BEST_None_prefixLength|
                |0_C_OSPF_BEST_None_prefixLength|)
             (= |0_C_OVERALL_BEST_None_adminDist| 110)
             true
             (= |0_C_OVERALL_BEST_None_metric| |0_C_OSPF_BEST_None_metric|)
             true
             true
             true
             true
             (= |0_C_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_C_STATIC_BEST_None_permitted|
             (= |0_C_OVERALL_BEST_None_prefixLength|
                |0_C_STATIC_BEST_None_prefixLength|)
             (= |0_C_OVERALL_BEST_None_adminDist| 1)
             true
             (= |0_C_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_C_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_D_OVERALL_BEST_None_metric|
                       |0_D_OSPF_BEST_None_metric|)
                    (and (= |0_D_OVERALL_BEST_None_metric|
                            |0_D_OSPF_BEST_None_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_D_OVERALL_BEST_None_prefixLength|
                   |0_D_OSPF_BEST_None_prefixLength|)
                (or (< |0_D_OVERALL_BEST_None_adminDist| 110)
                    (and (= |0_D_OVERALL_BEST_None_adminDist| 110)
                         (or false a!3))))))
  (=> |0_D_OSPF_BEST_None_permitted|
      (or (> |0_D_OVERALL_BEST_None_prefixLength|
             |0_D_OSPF_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_D_OVERALL_BEST_None_metric| 0)
                    (and (= |0_D_OVERALL_BEST_None_metric| 0) a!2)))))
(let ((a!4 (and (= |0_D_OVERALL_BEST_None_prefixLength|
                   |0_D_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_D_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_D_OVERALL_BEST_None_adminDist| 0) (or false a!3))))))
  (=> |0_D_CONNECTED_BEST_None_permitted|
      (or (> |0_D_OVERALL_BEST_None_prefixLength|
             |0_D_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_D_OSPF_BEST_None_permitted| |0_D_CONNECTED_BEST_None_permitted|)
   |0_D_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_D_OSPF_BEST_None_permitted| |0_D_CONNECTED_BEST_None_permitted|)
    (or (and |0_D_OSPF_BEST_None_permitted|
             (= |0_D_OVERALL_BEST_None_prefixLength|
                |0_D_OSPF_BEST_None_prefixLength|)
             (= |0_D_OVERALL_BEST_None_adminDist| 110)
             true
             (= |0_D_OVERALL_BEST_None_metric| |0_D_OSPF_BEST_None_metric|)
             true
             true
             true
             true
             (= |0_D_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_D_CONNECTED_BEST_None_permitted|
             (= |0_D_OVERALL_BEST_None_prefixLength|
                |0_D_CONNECTED_BEST_None_prefixLength|)
             (= |0_D_OVERALL_BEST_None_adminDist| 0)
             true
             (= |0_D_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_D_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (=> (and true
         |0_A_OSPF_IMPORT_GigabitEthernet0/2_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         true
         true
         (= |0_A_OVERALL_BEST_None_metric|
            |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/2|))
(assert (=> (and true
         |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         true
         true
         (= |0_A_OVERALL_BEST_None_metric|
            |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
         true
         true
         true
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|))
(assert (=> (not (and true
              |0_A_OSPF_IMPORT_GigabitEthernet0/2_choice|
              (= |0_A_OVERALL_BEST_None_prefixLength|
                 |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
              true
              true
              (= |0_A_OVERALL_BEST_None_metric|
                 |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric|)
              true
              true
              true
              true
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/2|)))
(assert (=> (not (and true
              |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
              (= |0_A_OVERALL_BEST_None_prefixLength|
                 |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
              true
              true
              (= |0_A_OVERALL_BEST_None_metric|
                 |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
              true
              true
              true
              true
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|)))
(assert (=> (and true
         |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         true
         true
         (= |0_B_OVERALL_BEST_None_metric|
            |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
         true
         true
         true
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|))
(assert (=> (and true
         |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         true
         true
         (= |0_B_OVERALL_BEST_None_metric|
            |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|))
(assert (=> (not (and true
              |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
              (= |0_B_OVERALL_BEST_None_prefixLength|
                 |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
              true
              true
              (= |0_B_OVERALL_BEST_None_metric|
                 |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
              true
              true
              true
              true
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|)))
(assert (=> (not (and true
              |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice|
              (= |0_B_OVERALL_BEST_None_prefixLength|
                 |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
              true
              true
              (= |0_B_OVERALL_BEST_None_metric|
                 |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
              true
              true
              true
              true
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|)))
(assert (=> (and true
         |0_C_OSPF_IMPORT_GigabitEthernet0/4_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_C_OVERALL_BEST_None_metric|
            |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
         true
         true
         true
         true
         (= |0_C_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_C_GigabitEthernet0/4|))
(assert (=> (and true
         |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_C_OVERALL_BEST_None_metric|
            |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
         true
         true
         true
         true
         (= |0_C_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_C_GigabitEthernet0/1|))
(assert (=> (and true
         |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_C_OVERALL_BEST_None_metric|
            |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         (= |0_C_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_C_GigabitEthernet0/2|))
(assert (=> (and true
         |0_C_STATIC_IMPORT_GigabitEthernet0/1_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 1)
         true
         (= |0_C_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_C_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_C_GigabitEthernet0/1|))
(assert (not |0_CONTROL-FORWARDING_C_GigabitEthernet0/3|))
(assert (=> (not (and true
              |0_C_OSPF_IMPORT_GigabitEthernet0/4_choice|
              (= |0_C_OVERALL_BEST_None_prefixLength|
                 |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength|)
              (= |0_C_OVERALL_BEST_None_adminDist| 110)
              true
              (= |0_C_OVERALL_BEST_None_metric|
                 |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric|)
              true
              true
              true
              true
              (= |0_C_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_C_GigabitEthernet0/4|)))
(assert (=> (not (and true
              |0_C_OSPF_IMPORT_GigabitEthernet0/2_choice|
              (= |0_C_OVERALL_BEST_None_prefixLength|
                 |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
              (= |0_C_OVERALL_BEST_None_adminDist| 110)
              true
              (= |0_C_OVERALL_BEST_None_metric|
                 |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric|)
              true
              true
              true
              true
              (= |0_C_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_C_GigabitEthernet0/2|)))
(assert (let ((a!1 (not (or (and true
                         |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_C_OVERALL_BEST_None_prefixLength|
                            |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_C_OVERALL_BEST_None_adminDist| 110)
                         true
                         (= |0_C_OVERALL_BEST_None_metric|
                            |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         true
                         true
                         true
                         true
                         (= |0_C_OVERALL_BEST_None_history| #b0)
                         true
                         true
                         true
                         true)
                    (and true
                         |0_C_STATIC_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_C_OVERALL_BEST_None_prefixLength|
                            |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_C_OVERALL_BEST_None_adminDist| 1)
                         true
                         (= |0_C_OVERALL_BEST_None_metric| 0)
                         true
                         true
                         true
                         true
                         (= |0_C_OVERALL_BEST_None_history| #b1)
                         true
                         true
                         true
                         true)))))
  (=> a!1 (not |0_CONTROL-FORWARDING_C_GigabitEthernet0/1|))))
(assert (=> (and true
         |0_D_OSPF_IMPORT_GigabitEthernet0/2_choice|
         (= |0_D_OVERALL_BEST_None_prefixLength|
            |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         (= |0_D_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_D_OVERALL_BEST_None_metric|
            |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         (= |0_D_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_D_GigabitEthernet0/2|))
(assert (=> (and (not (= |0_dst-ip| #x6b000403))
         |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
         (= |0_D_OVERALL_BEST_None_prefixLength|
            |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         (= |0_D_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_D_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_D_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_D_GigabitEthernet0/3|))
(assert (=> (not (and true
              |0_D_OSPF_IMPORT_GigabitEthernet0/2_choice|
              (= |0_D_OVERALL_BEST_None_prefixLength|
                 |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
              (= |0_D_OVERALL_BEST_None_adminDist| 110)
              true
              (= |0_D_OVERALL_BEST_None_metric|
                 |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric|)
              true
              true
              true
              true
              (= |0_D_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_D_GigabitEthernet0/2|)))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x6b000403))
                     |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
                     (= |0_D_OVERALL_BEST_None_prefixLength|
                        |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                     (= |0_D_OVERALL_BEST_None_adminDist| 0)
                     true
                     (= |0_D_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     true
                     (= |0_D_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_D_GigabitEthernet0/3|))))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/2|)
            |0__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd|)
       |A-StaticRouteAdd-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/2|))
(assert (= (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|)
        |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/3|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|)
            |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
       |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/1|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|)
            |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
       |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|)
   |0_DATA-FORWARDING_B_GigabitEthernet0/1|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|)
            |0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd|)
       |B-StaticRouteAdd-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1|)
   |0_DATA-FORWARDING_B_GigabitEthernet0/2|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/4|)
            |0__C_GigabitEthernet0/4_OUTBOUND_SOFTAdd|)
       |C-StaticRouteAdd-C,GigabitEthernet0/4 --> D,GigabitEthernet0/2|)
   |0_DATA-FORWARDING_C_GigabitEthernet0/4|))
(assert (= (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/3|)
        |0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_C_GigabitEthernet0/3|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/2|)
            |0__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd|)
       |C-StaticRouteAdd-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2|)
   |0_DATA-FORWARDING_C_GigabitEthernet0/2|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/1|)
            |0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
       |C-StaticRouteAdd-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2|)
   |0_DATA-FORWARDING_C_GigabitEthernet0/1|))
(assert (= (and (or false |0_CONTROL-FORWARDING_D_GigabitEthernet0/3|)
        |0__D_GigabitEthernet0/3_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_D_GigabitEthernet0/3|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_D_GigabitEthernet0/2|)
            |0__D_GigabitEthernet0/2_OUTBOUND_SOFTAdd|)
       |D-StaticRouteAdd-D,GigabitEthernet0/2 --> C,GigabitEthernet0/4|)
   |0_DATA-FORWARDING_D_GigabitEthernet0/2|))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_C_OVERALL_BEST_None_permitted|)
    (= |0_C_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_C_OVERALL_BEST_None_permitted|)
    (= |0_C_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_C_OVERALL_BEST_None_permitted|)
    (= |0_C_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_C_OVERALL_BEST_None_permitted|)
    (= |0_C_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_C_OSPF_BEST_None_permitted|)
    (= |0_C_OSPF_BEST_None_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_BEST_None_permitted|) (= |0_C_OSPF_BEST_None_metric| 0)))
(assert (=> (not |0_C_STATIC_BEST_None_permitted|)
    (= |0_C_STATIC_BEST_None_prefixLength| 0)))
(assert (=> (not |0_D_OVERALL_BEST_None_permitted|)
    (= |0_D_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_D_OVERALL_BEST_None_permitted|)
    (= |0_D_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_D_OVERALL_BEST_None_permitted|)
    (= |0_D_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_D_OVERALL_BEST_None_permitted|)
    (= |0_D_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_D_OSPF_BEST_None_permitted|)
    (= |0_D_OSPF_BEST_None_prefixLength| 0)))
(assert (=> (not |0_D_OSPF_BEST_None_permitted|) (= |0_D_OSPF_BEST_None_metric| 0)))
(assert (=> (not |0_D_CONNECTED_BEST_None_permitted|)
    (= |0_D_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_A_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/2_metric| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 0)))
(assert (=> (not |0_B_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_B_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_B_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_B_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| 0)))
(assert (=> (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0)))
(assert (=> (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| 0)))
(assert (=> (not |0_C_OSPF_SoftRedistributed_permitted|)
    (= |0_C_OSPF_SoftRedistributed_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_SoftRedistributed_permitted|)
    (= |0_C_OSPF_SoftRedistributed_metric| 0)))
(assert (=> (not |0_C_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_C_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_C_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/4_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/4_metric| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/2_metric| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 0)))
(assert (=> (not |0_C_STATIC_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_STATIC_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_D_OSPF_SoftRedistributed_permitted|)
    (= |0_D_OSPF_SoftRedistributed_prefixLength| 0)))
(assert (=> (not |0_D_OSPF_SoftRedistributed_permitted|)
    (= |0_D_OSPF_SoftRedistributed_metric| 0)))
(assert (=> (not |0_D_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_D_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_D_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_D_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| 0)))
(assert (=> (not |0_D_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_D_OSPF_IMPORT_GigabitEthernet0/2_metric| 0)))
(assert (=> (not |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
    (= |0_D_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0)))
(assert (or false (= (bvand |0_dst-ip| #xff000000) (bvand #x6b000403 #xff000000))))
(assert (or false (= (bvand |0_src-ip| #xffffffff) (bvand #x67000303 #xffffffff))))
(assert (= |0__on-loop_C_A|
   (or false
       (and |0_DATA-FORWARDING_A_GigabitEthernet0/2|
            |0__C_GigabitEthernet0/2_INBOUND_SOFTAdd|)
       (and |0_DATA-FORWARDING_A_GigabitEthernet0/1|
            |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd|
            |0__on-loop_C_B|))))
(assert (= |0__on-loop_C_B|
   (or false
       (and |0_DATA-FORWARDING_B_GigabitEthernet0/1|
            |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd|
            |0__on-loop_C_A|)
       (and |0_DATA-FORWARDING_B_GigabitEthernet0/2|
            |0__C_GigabitEthernet0/1_INBOUND_SOFTAdd|))))
(assert (= |0__on-loop_C_C|
   (or false
       (and |0_DATA-FORWARDING_C_GigabitEthernet0/4|
            |0__D_GigabitEthernet0/2_INBOUND_SOFTAdd|
            |0__on-loop_C_D|)
       (and |0_DATA-FORWARDING_C_GigabitEthernet0/2|
            |0__A_GigabitEthernet0/2_INBOUND_SOFTAdd|
            |0__on-loop_C_A|)
       (and |0_DATA-FORWARDING_C_GigabitEthernet0/1|
            |0__B_GigabitEthernet0/2_INBOUND_SOFTAdd|
            |0__on-loop_C_B|))))
(assert (= |0__on-loop_C_D|
   (or false
       (and |0_DATA-FORWARDING_D_GigabitEthernet0/2|
            |0__C_GigabitEthernet0/4_INBOUND_SOFTAdd|))))
(assert (not (or false |0__on-loop_C_C|)))
(assert-soft |0__A_GigabitEthernet0/2_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/2_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/2_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/4_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/4_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/2_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/2_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__C_GigabitEthernet0/1_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__D_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__D_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__D_GigabitEthernet0/2_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__D_GigabitEthernet0/2_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/2 :weight 2 :id a)
(assert-soft AOSPFExportRemoveSoft1.0.0.0/16 :weight 3 :id a)
(assert-soft AOSPFExportRemoveSoft3.0.0.0/16 :weight 3 :id a)
(assert-soft AOSPFExportRemoveSoft104.0.0.0/8 :weight 3 :id a)
(assert-soft (not AOSPFExportAddSoft) :weight 10 :id a)
(assert-soft AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1 :weight 2 :id a)
(assert-soft BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1 :weight 2 :id a)
(assert-soft BOSPFExportRemoveSoft1.0.0.0/16 :weight 3 :id a)
(assert-soft BOSPFExportRemoveSoft2.0.0.0/16 :weight 3 :id a)
(assert-soft (not BOSPFExportAddSoft) :weight 10 :id a)
(assert-soft BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2 :weight 2 :id a)
(assert-soft CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/4 :weight 2 :id a)
(assert-soft COSPFExportRemoveSoft2.0.0.0/16 :weight 3 :id a)
(assert-soft COSPFExportRemoveSoft3.0.0.0/16 :weight 3 :id a)
(assert-soft COSPFExportRemoveSoft4.0.0.0/16 :weight 3 :id a)
(assert-soft COSPFExportRemoveSoft103.0.0.0/8 :weight 3 :id a)
(assert-soft (not COSPFExportAddSoft) :weight 10 :id a)
(assert-soft CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/2 :weight 2 :id a)
(assert-soft CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1 :weight 2 :id a)
(assert-soft CStaticRouteRemove107.0.4.3/8 :weight 1 :id a)
(assert-soft DImportFilterAddSoft0_D_OSPF_IMPORT_GigabitEthernet0/2 :weight 2 :id a)
(assert-soft DOSPFExportRemoveSoft4.0.0.0/16 :weight 3 :id a)
(assert-soft DOSPFExportRemoveSoft107.0.0.0/8 :weight 3 :id a)
(assert-soft (not DOSPFExportAddSoft) :weight 10 :id a)
(assert-soft (not |A-StaticRouteAdd-A,GigabitEthernet0/2 --> C,GigabitEthernet0/2|) :weight 2 :id a)
(assert-soft (not |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|) :weight 2 :id a)
(assert-soft (not |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|) :weight 2 :id a)
(assert-soft (not |B-StaticRouteAdd-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1|) :weight 2 :id a)
(assert-soft (not |C-StaticRouteAdd-C,GigabitEthernet0/4 --> D,GigabitEthernet0/2|) :weight 2 :id a)
(assert-soft (not |C-StaticRouteAdd-C,GigabitEthernet0/2 --> A,GigabitEthernet0/2|) :weight 2 :id a)
(assert-soft (not |C-StaticRouteAdd-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2|) :weight 2 :id a)
(assert-soft (not |D-StaticRouteAdd-D,GigabitEthernet0/2 --> C,GigabitEthernet0/4|) :weight 2 :id a)
(check-sat)
