(declare-fun |0_src-ip| () (_ BitVec 32))
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0__B_GigabitEthernet0/1_INBOUND_1| () Bool)
(declare-fun |0__C_GigabitEthernet0/1_INBOUND_1| () Bool)
(declare-fun |0_FAILED-EDGE_A_B| () Int)
(declare-fun |0_FAILED-EDGE_A_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_B_C| () Int)
(declare-fun |0_FAILED-EDGE_C_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_A_GigabitEthernet0/4| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_A_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_A_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_A_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_A_OSPF_BEST_None_metric| () Int)
(declare-fun |0_A_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_A_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_B_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_B_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_B_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_B_OSPF_BEST_None_metric| () Int)
(declare-fun |0_B_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_B_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_C_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_C_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_C_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_C_OSPF_BEST_None_metric| () Int)
(declare-fun |0_C_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_C_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| () Int)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric| () Int)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength| () Int)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| () Int)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| () Int)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_B_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1| () Bool)
(declare-fun |0_A_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_A_OSPF_BEST_None_permitted| () Bool)
(declare-fun |0_AOSPFExportRemoveSoft1.0.0.0/16| () Bool)
(declare-fun |0_AOSPFExportRemoveSoft104.0.0.0/8| () Bool)
(declare-fun |0_AOSPFExportRemoveSoft105.0.0.0/8| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1| () Bool)
(declare-fun |0_B_OSPF_BEST_None_permitted| () Bool)
(declare-fun |0_BOSPFExportRemoveSoft1.0.0.0/16| () Bool)
(declare-fun |0_BOSPFExportRemoveSoft2.0.0.0/16| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun |0_C_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2| () Bool)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted| () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1| () Bool)
(declare-fun |0_C_OSPF_BEST_None_permitted| () Bool)
(declare-fun |0_COSPFExportRemoveSoft2.0.0.0/16| () Bool)
(declare-fun |0_COSPFExportRemoveSoft103.0.0.0/8| () Bool)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| () Bool)
(declare-fun |0_A_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_B_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_C_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_choice| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_choice| () Bool)
(declare-fun |0_C_OSPF_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_choice| () Bool)
(declare-fun |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool)
(declare-fun |0_A_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_A_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_B_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_B_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_C_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_C_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/4| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/2| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_C_GigabitEthernet0/3| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0_0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/4| () Bool)
(declare-fun |0_0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/1| () Bool)
(declare-fun |0_A-StaticRouteAddSoft-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0_0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_B_GigabitEthernet0/1| () Bool)
(declare-fun |0_B-StaticRouteAddSoft-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0_0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_B_GigabitEthernet0/2| () Bool)
(declare-fun |0_B-StaticRouteAddSoft-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1|
             ()
             Bool)
(declare-fun |0_0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/3| () Bool)
(declare-fun |0_0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_C_GigabitEthernet0/1| () Bool)
(declare-fun |0_C-StaticRouteAddSoft-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2|
             ()
             Bool)
(declare-fun |0_0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0__reachable-id_A| () Int)
(declare-fun |0__reachable_A| () Bool)
(declare-fun |0__reachable-id_B| () Int)
(declare-fun |0__reachable_B| () Bool)
(declare-fun |0__reachable-id_C| () Int)
(declare-fun |0__reachable_C| () Bool)
(declare-fun |0_0__B_GigabitEthernet0/1_INBOUND_1Remove| () Bool)
(declare-fun |0_0__C_GigabitEthernet0/1_INBOUND_1Remove| () Bool)
(declare-fun |0_0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__B_GigabitEthernet0/2_INBOUND_SOFTAdd| () Bool)
(assert (let ((a!1 (ite (and (= (bvand |0_dst-ip| #x00000000)
                        (bvand #x00000000 #x00000000))
                     (= (bvand |0_src-ip| #x00000000)
                        (bvand #x00000000 #x00000000)))
                true
                false)))
(let ((a!2 (ite (and (= (bvand |0_dst-ip| #x00000000)
                        (bvand #x00000000 #x00000000))
                     (= (bvand |0_src-ip| #xff000000)
                        (bvand #x68000000 #xff000000)))
                false
                a!1)))
  (= |0__B_GigabitEthernet0/1_INBOUND_1| a!2))))
(assert (let ((a!1 (ite (and (= (bvand |0_dst-ip| #x00000000)
                        (bvand #x00000000 #x00000000))
                     (= (bvand |0_src-ip| #x00000000)
                        (bvand #x00000000 #x00000000)))
                true
                false)))
(let ((a!2 (ite (and (= (bvand |0_dst-ip| #x00000000)
                        (bvand #x00000000 #x00000000))
                     (= (bvand |0_src-ip| #xff000000)
                        (bvand #x68000000 #xff000000)))
                false
                a!1)))
  (= |0__C_GigabitEthernet0/1_INBOUND_1| a!2))))
(assert (>= |0_FAILED-EDGE_A_B| 0))
(assert (<= |0_FAILED-EDGE_A_B| 1))
(assert (>= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_A_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_B_C| 0))
(assert (<= |0_FAILED-EDGE_B_C| 1))
(assert (>= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_C_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
(assert (<= |0_FAILED-EDGE_A_GigabitEthernet0/4| 1))
(assert (= |0_FAILED-EDGE_A_B| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_B_C| 0))
(assert (= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
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
(assert (>= |0_A_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_A_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_A_OVERALL_BEST_None_metric| 0))
(assert (< |0_A_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_A_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_A_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_A_OSPF_BEST_None_metric| 0))
(assert (< |0_A_OSPF_BEST_None_metric| 65536))
(assert (>= |0_A_OSPF_BEST_None_prefixLength| 0))
(assert (<= |0_A_OSPF_BEST_None_prefixLength| 32))
(assert (>= |0_A_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_A_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_B_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_B_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_B_OVERALL_BEST_None_metric| 0))
(assert (< |0_B_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_B_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_B_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_B_OSPF_BEST_None_metric| 0))
(assert (< |0_B_OSPF_BEST_None_metric| 65536))
(assert (>= |0_B_OSPF_BEST_None_prefixLength| 0))
(assert (<= |0_B_OSPF_BEST_None_prefixLength| 32))
(assert (>= |0_B_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_B_CONNECTED_BEST_None_prefixLength| 32))
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
(assert (>= |0_C_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_C_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_A_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_A_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 0))
(assert (< |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 65536))
(assert (>= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0))
(assert (<= |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 32))
(assert (>= |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| 0))
(assert (<= |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| 32))
(assert (>= |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 32))
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
(assert (>= |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength| 0))
(assert (<= |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength| 32))
(assert (>= |0_C_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_C_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 0))
(assert (< |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 65536))
(assert (>= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (>= |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0))
(assert (<= |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 32))
(assert (>= |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0))
(assert (<= |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 32))
(assert (let ((a!1 (ite true
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
            |0_AImportFilterAddSoft0_A_OSPF_IMPORT_GigabitEthernet0/1|)
       (ite true a!1 (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|))
       (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
(assert (let ((a!1 (and |0_A_OSPF_SINGLE-EXPORT__permitted|
                true
                true
                (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 8)
                true
                true
                true
                true
                true))
      (a!2 (ite true
                (ite true
                     (and (= |0_A_OSPF_SINGLE-EXPORT__permitted|
                             |0_A_OSPF_BEST_None_permitted|)
                          (= |0_A_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_A_OSPF_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_A_OSPF_SINGLE-EXPORT__metric|
                             |0_A_OSPF_BEST_None_metric|)
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
                     |0_AOSPFExportRemoveSoft1.0.0.0/16|)
                (and |0_A_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 16)
                     true
                     true
                     true
                     true
                     true)
                (ite (and (and true true)
                          true
                          |0_A_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_A_B| 0))
                     a!2
                     (not |0_A_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xff000000)
                        (bvand #x68000000 #xff000000))
                     |0_AOSPFExportRemoveSoft104.0.0.0/8|)
                a!1
                a!3)))
  (ite (and (and true true)
            (= (bvand |0_dst-ip| #xff000000) (bvand #x69000000 #xff000000))
            |0_AOSPFExportRemoveSoft105.0.0.0/8|)
       a!1
       a!4)))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x68000000 #xff000000))
          (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
     (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
          (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 8)
          true
          true
          true)
     (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x69000000 #xff000000))
          (= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
     (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|
          (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| 8)
          true
          true
          true)
     (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|)))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffff0000) (bvand #x01000000 #xffff0000))
          (= |0_FAILED-EDGE_A_B| 0))
     (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
          (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 16)
          true
          true
          true)
     (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)))
(assert (let ((a!1 (ite true
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
            |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/1|)
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
                (ite true
                     (and (= |0_B_OSPF_SINGLE-EXPORT__permitted|
                             |0_B_OSPF_BEST_None_permitted|)
                          (= |0_B_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_B_OSPF_BEST_None_prefixLength|)
                          true
                          true
                          true
                          (= |0_B_OSPF_SINGLE-EXPORT__metric|
                             |0_B_OSPF_BEST_None_metric|)
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
                     |0_BOSPFExportRemoveSoft1.0.0.0/16|)
                a!1
                (ite (and (and true true)
                          true
                          |0_B_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_A_B| 0))
                     a!2
                     (not |0_B_OSPF_SINGLE-EXPORT__permitted|)))))
  (ite (and (and true true)
            (= (bvand |0_dst-ip| #xffff0000) (bvand #x02000000 #xffff0000))
            |0_BOSPFExportRemoveSoft2.0.0.0/16|)
       a!1
       a!3))))
(assert (let ((a!1 (ite true
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
            |0_BImportFilterAddSoft0_B_OSPF_IMPORT_GigabitEthernet0/2|)
       (ite true a!1 (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|))
       (not |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffff0000) (bvand #x01000000 #xffff0000))
          (= |0_FAILED-EDGE_A_B| 0))
     (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
          (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 16)
          true
          true
          true)
     (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffff0000) (bvand #x02000000 #xffff0000))
          (= |0_FAILED-EDGE_B_C| 0))
     (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|
          (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength| 16)
          true
          true
          true)
     (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|)))
(assert (let ((a!1 (ite true
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
            |0_CImportFilterAddSoft0_C_OSPF_IMPORT_GigabitEthernet0/1|)
       (ite true a!1 (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|))
       (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|))))
(assert (let ((a!1 (ite true
                (ite true
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
(let ((a!2 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffff0000)
                        (bvand #x02000000 #xffff0000))
                     |0_COSPFExportRemoveSoft2.0.0.0/16|)
                (and |0_C_OSPF_SINGLE-EXPORT__permitted|
                     true
                     true
                     (= |0_C_OSPF_SINGLE-EXPORT__metric| 0)
                     true
                     (= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 16)
                     true
                     true
                     true
                     true
                     true)
                (ite (and (and true true)
                          true
                          |0_C_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_B_C| 0))
                     a!1
                     (not |0_C_OSPF_SINGLE-EXPORT__permitted|)))))
  (ite (and (and true true)
            (= (bvand |0_dst-ip| #xff000000) (bvand #x67000000 #xff000000))
            |0_COSPFExportRemoveSoft103.0.0.0/8|)
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
       a!2))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x67000000 #xff000000))
          (= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
     (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
          (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 8)
          true
          true
          true)
     (not |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffff0000) (bvand #x02000000 #xffff0000))
          (= |0_FAILED-EDGE_B_C| 0))
     (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
          (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 16)
          true
          true
          true)
     (not |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_A_OSPF_BEST_None_metric|
                       |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                    (and (= |0_A_OSPF_BEST_None_metric|
                            |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_A_OSPF_BEST_None_prefixLength|
                   |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
      (or (> |0_A_OSPF_BEST_None_prefixLength|
             |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
          a!4)))))))
(assert (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
   |0_A_OSPF_BEST_None_permitted|))
(assert (=> |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
    (and |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
         (= |0_A_OSPF_BEST_None_prefixLength|
            |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         true
         true
         (= |0_A_OSPF_BEST_None_metric|
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
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_A_CONNECTED_BEST_None_prefixLength|
                  |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
               (and (= |0_A_CONNECTED_BEST_None_prefixLength|
                       |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| a!4))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_A_CONNECTED_BEST_None_prefixLength|
                  |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
               (and (= |0_A_CONNECTED_BEST_None_prefixLength|
                       |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| a!4))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_A_CONNECTED_BEST_None_prefixLength|
                  |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
               (and (= |0_A_CONNECTED_BEST_None_prefixLength|
                       |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted| a!4))))))
(assert (= (or |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
       |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
       |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|)
   |0_A_CONNECTED_BEST_None_permitted|))
(assert (=> (or |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
        |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|)
    (or (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
             (= |0_A_CONNECTED_BEST_None_prefixLength|
                |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
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
             true)
        (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_A_CONNECTED_BEST_None_prefixLength|
                |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
             true)
        (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|
             (= |0_A_CONNECTED_BEST_None_prefixLength|
                |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
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
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OSPF_BEST_None_metric|
                       |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                    (and (= |0_B_OSPF_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_B_OSPF_BEST_None_prefixLength|
                   |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
      (or (> |0_B_OSPF_BEST_None_prefixLength|
             |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OSPF_BEST_None_metric|
                       |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                    (and (= |0_B_OSPF_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_B_OSPF_BEST_None_prefixLength|
                   |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|
      (or (> |0_B_OSPF_BEST_None_prefixLength|
             |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
          a!4)))))))
(assert (= (or |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
       |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
   |0_B_OSPF_BEST_None_permitted|))
(assert (=> (or |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        |0_B_OSPF_IMPORT_GigabitEthernet0/2_permitted|)
    (or (and |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_B_OSPF_BEST_None_prefixLength|
                |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
             true
             true
             (= |0_B_OSPF_BEST_None_metric|
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
             (= |0_B_OSPF_BEST_None_prefixLength|
                |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
             true
             true
             (= |0_B_OSPF_BEST_None_metric|
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
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_B_CONNECTED_BEST_None_prefixLength|
                  |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
               (and (= |0_B_CONNECTED_BEST_None_prefixLength|
                       |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| a!4))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_B_CONNECTED_BEST_None_prefixLength|
                  |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
               (and (= |0_B_CONNECTED_BEST_None_prefixLength|
                       |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted| a!4))))))
(assert (= (or |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
       |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|)
   |0_B_CONNECTED_BEST_None_permitted|))
(assert (=> (or |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|)
    (or (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_B_CONNECTED_BEST_None_prefixLength|
                |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
             true)
        (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|
             (= |0_B_CONNECTED_BEST_None_prefixLength|
                |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
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
             true))))
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
(assert (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
   |0_C_OSPF_BEST_None_permitted|))
(assert (=> |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|
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
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_C_CONNECTED_BEST_None_prefixLength|
                  |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
               (and (= |0_C_CONNECTED_BEST_None_prefixLength|
                       |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted| a!4))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_C_CONNECTED_BEST_None_prefixLength|
                  |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
               (and (= |0_C_CONNECTED_BEST_None_prefixLength|
                       |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| a!4))))))
(assert (= (or |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
       |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
   |0_C_CONNECTED_BEST_None_permitted|))
(assert (=> (or |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
    (or (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
             (= |0_C_CONNECTED_BEST_None_prefixLength|
                |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
             true)
        (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
             (= |0_C_CONNECTED_BEST_None_prefixLength|
                |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
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
             true))))
(assert (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
   (and |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_A_OSPF_BEST_None_prefixLength|
           |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        (= |0_A_OSPF_BEST_None_metric|
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
(assert (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
   (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
        (= |0_A_CONNECTED_BEST_None_prefixLength|
           |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
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
(assert (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
   (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_A_CONNECTED_BEST_None_prefixLength|
           |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
(assert (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_choice|
   (and |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|
        (= |0_A_CONNECTED_BEST_None_prefixLength|
           |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
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
(assert (= |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
   (and |0_B_OSPF_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_B_OSPF_BEST_None_prefixLength|
           |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
        true
        true
        (= |0_B_OSPF_BEST_None_metric|
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
        (= |0_B_OSPF_BEST_None_prefixLength|
           |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
        true
        true
        (= |0_B_OSPF_BEST_None_metric|
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
(assert (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
   (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_B_CONNECTED_BEST_None_prefixLength|
           |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
(assert (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_choice|
   (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|
        (= |0_B_CONNECTED_BEST_None_prefixLength|
           |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
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
(assert (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
   (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|
        (= |0_C_CONNECTED_BEST_None_prefixLength|
           |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
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
(assert (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
   (and |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
        (= |0_C_CONNECTED_BEST_None_prefixLength|
           |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
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
                (or (< |0_A_OVERALL_BEST_None_metric|
                       |0_A_OSPF_BEST_None_metric|)
                    (and (= |0_A_OVERALL_BEST_None_metric|
                            |0_A_OSPF_BEST_None_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_A_OVERALL_BEST_None_prefixLength|
                   |0_A_OSPF_BEST_None_prefixLength|)
                (or (< |0_A_OVERALL_BEST_None_adminDist| 110)
                    (and (= |0_A_OVERALL_BEST_None_adminDist| 110)
                         (or false a!3))))))
  (=> |0_A_OSPF_BEST_None_permitted|
      (or (> |0_A_OVERALL_BEST_None_prefixLength|
             |0_A_OSPF_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_A_OVERALL_BEST_None_metric| 0)
                    (and (= |0_A_OVERALL_BEST_None_metric| 0) a!2)))))
(let ((a!4 (and (= |0_A_OVERALL_BEST_None_prefixLength|
                   |0_A_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_A_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_A_OVERALL_BEST_None_adminDist| 0) (or false a!3))))))
  (=> |0_A_CONNECTED_BEST_None_permitted|
      (or (> |0_A_OVERALL_BEST_None_prefixLength|
             |0_A_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_A_OSPF_BEST_None_permitted| |0_A_CONNECTED_BEST_None_permitted|)
   |0_A_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_A_OSPF_BEST_None_permitted| |0_A_CONNECTED_BEST_None_permitted|)
    (or (and |0_A_OSPF_BEST_None_permitted|
             (= |0_A_OVERALL_BEST_None_prefixLength|
                |0_A_OSPF_BEST_None_prefixLength|)
             (= |0_A_OVERALL_BEST_None_adminDist| 110)
             true
             (= |0_A_OVERALL_BEST_None_metric| |0_A_OSPF_BEST_None_metric|)
             true
             true
             true
             true
             (= |0_A_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_A_CONNECTED_BEST_None_permitted|
             (= |0_A_OVERALL_BEST_None_prefixLength|
                |0_A_CONNECTED_BEST_None_prefixLength|)
             (= |0_A_OVERALL_BEST_None_adminDist| 0)
             true
             (= |0_A_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_A_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OVERALL_BEST_None_metric|
                       |0_B_OSPF_BEST_None_metric|)
                    (and (= |0_B_OVERALL_BEST_None_metric|
                            |0_B_OSPF_BEST_None_metric|)
                         a!2)))))
(let ((a!4 (and (= |0_B_OVERALL_BEST_None_prefixLength|
                   |0_B_OSPF_BEST_None_prefixLength|)
                (or (< |0_B_OVERALL_BEST_None_adminDist| 110)
                    (and (= |0_B_OVERALL_BEST_None_adminDist| 110)
                         (or false a!3))))))
  (=> |0_B_OSPF_BEST_None_permitted|
      (or (> |0_B_OVERALL_BEST_None_prefixLength|
             |0_B_OSPF_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OVERALL_BEST_None_metric| 0)
                    (and (= |0_B_OVERALL_BEST_None_metric| 0) a!2)))))
(let ((a!4 (and (= |0_B_OVERALL_BEST_None_prefixLength|
                   |0_B_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_B_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_B_OVERALL_BEST_None_adminDist| 0) (or false a!3))))))
  (=> |0_B_CONNECTED_BEST_None_permitted|
      (or (> |0_B_OVERALL_BEST_None_prefixLength|
             |0_B_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_B_OSPF_BEST_None_permitted| |0_B_CONNECTED_BEST_None_permitted|)
   |0_B_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_B_OSPF_BEST_None_permitted| |0_B_CONNECTED_BEST_None_permitted|)
    (or (and |0_B_OSPF_BEST_None_permitted|
             (= |0_B_OVERALL_BEST_None_prefixLength|
                |0_B_OSPF_BEST_None_prefixLength|)
             (= |0_B_OVERALL_BEST_None_adminDist| 110)
             true
             (= |0_B_OVERALL_BEST_None_metric| |0_B_OSPF_BEST_None_metric|)
             true
             true
             true
             true
             (= |0_B_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_B_CONNECTED_BEST_None_permitted|
             (= |0_B_OVERALL_BEST_None_prefixLength|
                |0_B_CONNECTED_BEST_None_prefixLength|)
             (= |0_B_OVERALL_BEST_None_adminDist| 0)
             true
             (= |0_B_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_B_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
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
                   |0_C_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_C_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_C_OVERALL_BEST_None_adminDist| 0) (or false a!3))))))
  (=> |0_C_CONNECTED_BEST_None_permitted|
      (or (> |0_C_OVERALL_BEST_None_prefixLength|
             |0_C_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_C_OSPF_BEST_None_permitted| |0_C_CONNECTED_BEST_None_permitted|)
   |0_C_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_C_OSPF_BEST_None_permitted| |0_C_CONNECTED_BEST_None_permitted|)
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
        (and |0_C_CONNECTED_BEST_None_permitted|
             (= |0_C_OVERALL_BEST_None_prefixLength|
                |0_C_CONNECTED_BEST_None_prefixLength|)
             (= |0_C_OVERALL_BEST_None_adminDist| 0)
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
(assert (=> (and true
         |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_A_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_A_OVERALL_BEST_None_metric|
            |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
         true
         true
         true
         true
         (= |0_A_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))
(assert (=> (and (not (= |0_dst-ip| #x68000103))
         |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         (= |0_A_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_A_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_A_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|))
(assert (=> (and (= |0_dst-ip| #x01000201)
         |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_A_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_A_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_A_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))
(assert (=> (and (not (= |0_dst-ip| #x69000104))
         |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_choice|
         (= |0_A_OVERALL_BEST_None_prefixLength|
            |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
         (= |0_A_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_A_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_A_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|))
(assert (let ((a!1 (not (or (and true
                         |0_A_OSPF_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_A_OVERALL_BEST_None_prefixLength|
                            |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_A_OVERALL_BEST_None_adminDist| 110)
                         true
                         (= |0_A_OVERALL_BEST_None_metric|
                            |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         true
                         true
                         true
                         true
                         (= |0_A_OVERALL_BEST_None_history| #b0)
                         true
                         true
                         true
                         true)
                    (and (= |0_dst-ip| #x01000201)
                         |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_A_OVERALL_BEST_None_prefixLength|
                            |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_A_OVERALL_BEST_None_adminDist| 0)
                         true
                         (= |0_A_OVERALL_BEST_None_metric| 0)
                         true
                         true
                         true
                         true
                         (= |0_A_OVERALL_BEST_None_history| #b1)
                         true
                         true
                         true
                         true)))))
  (=> a!1 (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x68000103))
                     |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
                     (= |0_A_OVERALL_BEST_None_prefixLength|
                        |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                     (= |0_A_OVERALL_BEST_None_adminDist| 0)
                     true
                     (= |0_A_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     true
                     (= |0_A_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|))))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x69000104))
                     |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_choice|
                     (= |0_A_OVERALL_BEST_None_prefixLength|
                        |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength|)
                     (= |0_A_OVERALL_BEST_None_adminDist| 0)
                     true
                     (= |0_A_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     true
                     (= |0_A_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|))))
(assert (=> (and true
         |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_B_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_B_OVERALL_BEST_None_metric|
            |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
         true
         true
         true
         true
         (= |0_B_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|))
(assert (=> (and true
         |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
         (= |0_B_OVERALL_BEST_None_adminDist| 110)
         true
         (= |0_B_OVERALL_BEST_None_metric|
            |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
         true
         true
         true
         true
         (= |0_B_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|))
(assert (=> (and (= |0_dst-ip| #x01000101)
         |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_B_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_B_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_B_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|))
(assert (=> (and (= |0_dst-ip| #x02000301)
         |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
         (= |0_B_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_B_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         (= |0_B_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|))
(assert (let ((a!1 (not (or (and true
                         |0_B_OSPF_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_B_OVERALL_BEST_None_prefixLength|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_B_OVERALL_BEST_None_adminDist| 110)
                         true
                         (= |0_B_OVERALL_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/1_metric|)
                         true
                         true
                         true
                         true
                         (= |0_B_OVERALL_BEST_None_history| #b0)
                         true
                         true
                         true
                         true)
                    (and (= |0_dst-ip| #x01000101)
                         |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_B_OVERALL_BEST_None_prefixLength|
                            |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_B_OVERALL_BEST_None_adminDist| 0)
                         true
                         (= |0_B_OVERALL_BEST_None_metric| 0)
                         true
                         true
                         true
                         true
                         (= |0_B_OVERALL_BEST_None_history| #b1)
                         true
                         true
                         true
                         true)))))
  (=> a!1 (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|))))
(assert (let ((a!1 (not (or (and true
                         |0_B_OSPF_IMPORT_GigabitEthernet0/2_choice|
                         (= |0_B_OVERALL_BEST_None_prefixLength|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/2_prefixLength|)
                         (= |0_B_OVERALL_BEST_None_adminDist| 110)
                         true
                         (= |0_B_OVERALL_BEST_None_metric|
                            |0_B_OSPF_IMPORT_GigabitEthernet0/2_metric|)
                         true
                         true
                         true
                         true
                         (= |0_B_OVERALL_BEST_None_history| #b0)
                         true
                         true
                         true
                         true)
                    (and (= |0_dst-ip| #x02000301)
                         |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_choice|
                         (= |0_B_OVERALL_BEST_None_prefixLength|
                            |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength|)
                         (= |0_B_OVERALL_BEST_None_adminDist| 0)
                         true
                         (= |0_B_OVERALL_BEST_None_metric| 0)
                         true
                         true
                         true
                         true
                         (= |0_B_OVERALL_BEST_None_history| #b1)
                         true
                         true
                         true
                         true)))))
  (=> a!1 (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|))))
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
(assert (=> (and (= |0_dst-ip| #x02000202)
         |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 0)
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
(assert (=> (and (not (= |0_dst-ip| #x67000303))
         |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
         (= |0_C_OVERALL_BEST_None_prefixLength|
            |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         (= |0_C_OVERALL_BEST_None_adminDist| 0)
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
    |0_CONTROL-FORWARDING_C_GigabitEthernet0/3|))
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
                    (and (= |0_dst-ip| #x02000202)
                         |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_choice|
                         (= |0_C_OVERALL_BEST_None_prefixLength|
                            |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength|)
                         (= |0_C_OVERALL_BEST_None_adminDist| 0)
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
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x67000303))
                     |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
                     (= |0_C_OVERALL_BEST_None_prefixLength|
                        |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                     (= |0_C_OVERALL_BEST_None_adminDist| 0)
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
  (=> a!1 (not |0_CONTROL-FORWARDING_C_GigabitEthernet0/3|))))
(assert (= (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|)
        |0_0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
   |0_DATA-FORWARDING_A_GigabitEthernet0/3|))
(assert (= (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|)
        |0_0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
   |0_DATA-FORWARDING_A_GigabitEthernet0/4|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|)
                         |0_0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
                    |0_A-StaticRouteAddSoft-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|)
                (= |0_FAILED-EDGE_A_B| 0))))
  (= a!1 |0_DATA-FORWARDING_A_GigabitEthernet0/1|)))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|)
                         |0_0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
                    |0_B-StaticRouteAddSoft-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|)
                (= |0_FAILED-EDGE_A_B| 0))))
  (= a!1 |0_DATA-FORWARDING_B_GigabitEthernet0/1|)))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/2|)
                         |0_0__B_GigabitEthernet0/2_OUTBOUND_SOFTAdd|)
                    |0_B-StaticRouteAddSoft-B,GigabitEthernet0/2 --> C,GigabitEthernet0/1|)
                (= |0_FAILED-EDGE_B_C| 0))))
  (= a!1 |0_DATA-FORWARDING_B_GigabitEthernet0/2|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/3|)
        |0_0__C_GigabitEthernet0/3_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
   |0_DATA-FORWARDING_C_GigabitEthernet0/3|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_C_GigabitEthernet0/1|)
                         |0_0__C_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
                    |0_C-StaticRouteAddSoft-C,GigabitEthernet0/1 --> B,GigabitEthernet0/2|)
                (= |0_FAILED-EDGE_B_C| 0))))
  (= a!1 |0_DATA-FORWARDING_C_GigabitEthernet0/1|)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_A_OVERALL_BEST_None_permitted|)
    (= |0_A_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_A_OSPF_BEST_None_permitted|)
    (= |0_A_OSPF_BEST_None_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_BEST_None_permitted|) (= |0_A_OSPF_BEST_None_metric| 0)))
(assert (=> (not |0_A_CONNECTED_BEST_None_permitted|)
    (= |0_A_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_B_OVERALL_BEST_None_permitted|)
    (= |0_B_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_B_OSPF_BEST_None_permitted|)
    (= |0_B_OSPF_BEST_None_prefixLength| 0)))
(assert (=> (not |0_B_OSPF_BEST_None_permitted|) (= |0_B_OSPF_BEST_None_metric| 0)))
(assert (=> (not |0_B_CONNECTED_BEST_None_permitted|)
    (= |0_B_CONNECTED_BEST_None_prefixLength| 0)))
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
(assert (=> (not |0_C_CONNECTED_BEST_None_permitted|)
    (= |0_C_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_A_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_A_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_A_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_A_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_A_OSPF_IMPORT_GigabitEthernet0/1_metric| 0)))
(assert (=> (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
    (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0)))
(assert (=> (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_permitted|)
    (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/4_prefixLength| 0)))
(assert (=> (not |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_A_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
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
(assert (=> (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_permitted|)
    (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/2_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_C_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_C_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_C_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (=> (not |0_C_OSPF_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_OSPF_IMPORT_GigabitEthernet0/1_metric| 0)))
(assert (=> (not |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
    (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0)))
(assert (=> (not |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_permitted|)
    (= |0_C_CONNECTED_IMPORT_GigabitEthernet0/1_prefixLength| 0)))
(assert (and (or (= (bvand |0_dst-ip| #x00000000) (bvand #x00000000 #x00000000)))
     (not or)
     (or (= (bvand |0_src-ip| #x00000000) (bvand #x00000000 #x00000000)))
     (not or)))
(assert (= |0__reachable_A| (> |0__reachable-id_A| 0)))
(assert (>= |0__reachable-id_A| 0))
(assert (= |0__reachable_B| (> |0__reachable-id_B| 0)))
(assert (>= |0__reachable-id_B| 0))
(assert (= |0__reachable_C| (> |0__reachable-id_C| 0)))
(assert (>= |0__reachable-id_C| 0))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_A_GigabitEthernet0/1|
                         (or |0__B_GigabitEthernet0/1_INBOUND_1|
                             |0_0__B_GigabitEthernet0/1_INBOUND_1Remove|)
                         (> |0__reachable-id_B| 0))
                    (> |0__reachable-id_A| |0__reachable-id_B|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_A_GigabitEthernet0/1|
                         (or |0__B_GigabitEthernet0/1_INBOUND_1|
                             |0_0__B_GigabitEthernet0/1_INBOUND_1Remove|)
                         (> |0__reachable-id_B| 0)))
                a!1
                (= |0__reachable-id_A| 0))))
  (ite (or false false) (= |0__reachable-id_A| 1) a!2))))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_B_GigabitEthernet0/1|
                         |0_0__A_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_A| 0))
                    (> |0__reachable-id_B| |0__reachable-id_A|))
                (=> (and |0_DATA-FORWARDING_B_GigabitEthernet0/2|
                         (or |0__C_GigabitEthernet0/1_INBOUND_1|
                             |0_0__C_GigabitEthernet0/1_INBOUND_1Remove|)
                         (> |0__reachable-id_C| 0))
                    (> |0__reachable-id_B| |0__reachable-id_C|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_B_GigabitEthernet0/1|
                         |0_0__A_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_A| 0))
                    (and |0_DATA-FORWARDING_B_GigabitEthernet0/2|
                         (or |0__C_GigabitEthernet0/1_INBOUND_1|
                             |0_0__C_GigabitEthernet0/1_INBOUND_1Remove|)
                         (> |0__reachable-id_C| 0)))
                a!1
                (= |0__reachable-id_B| 0))))
  (ite (or false false) (= |0__reachable-id_B| 1) a!2))))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_C_GigabitEthernet0/1|
                         |0_0__B_GigabitEthernet0/2_INBOUND_SOFTAdd|
                         (> |0__reachable-id_B| 0))
                    (> |0__reachable-id_C| |0__reachable-id_B|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_C_GigabitEthernet0/1|
                         |0_0__B_GigabitEthernet0/2_INBOUND_SOFTAdd|
                         (> |0__reachable-id_B| 0)))
                a!1
                (= |0__reachable-id_C| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_C_GigabitEthernet0/3| true)
           false
           (and |0_C_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #x67000303))
           (and |0_C_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #x02000301)))
       (= |0__reachable-id_C| 1)
       a!2))))
(assert (and true |0__reachable_A|))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
(assert (= |0_FAILED-EDGE_C_GigabitEthernet0/3| 0))
(assert (=> (= (bvand |0_dst-ip| #xffff0000) (bvand #x02000000 #xffff0000))
    (= |0_FAILED-EDGE_B_C| 0)))
