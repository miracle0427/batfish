(declare-fun |0_FAILED-EDGE_R2_R3| () Int)
(declare-fun |0_FAILED-EDGE_R2_Loopback0| () Int)
(declare-fun |0_FAILED-EDGE_R1_R2| () Int)
(declare-fun |0_FAILED-EDGE_R1_R3| () Int)
(declare-fun |0_FAILED-EDGE_R3_Loopback0| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback0| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_localPref| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_localPref| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R3_BGP_BEST_None_routerID| () Int)
(declare-fun |0_R3_BGP_BEST_None_localPref| () Int)
(declare-fun |0_R3_BGP_BEST_None_metric| () Int)
(declare-fun |0_R3_BGP_BEST_None_prefixLength| () Int)
(declare-fun |0_R3_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_localPref| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__localPref| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R2_BGP_IMPORT_Serial1_localPref| () Int)
(declare-fun |0_R2_BGP_IMPORT_Serial1_metric| () Int)
(declare-fun |0_R2_BGP_IMPORT_Serial1_prefixLength| () Int)
(declare-fun |0_R3_BGP_SINGLE-EXPORT__localPref| () Int)
(declare-fun |0_R3_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R3_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R3_BGP_IMPORT_Serial0_localPref| () Int)
(declare-fun |0_R3_BGP_IMPORT_Serial0_metric| () Int)
(declare-fun |0_R3_BGP_IMPORT_Serial0_prefixLength| () Int)
(declare-fun |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__localPref| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R2_BGP_IMPORT_Serial1_permitted| () Bool)
(declare-fun R2_BGP_IMPORT_Serial1_localpref_100 () Bool)
(declare-fun R2_BGP_IMPORT_Serial1_localpref_300 () Bool)
(declare-fun R2_BGP_IMPORT_Serial1_localpref_399 () Bool)
(declare-fun R2_BGP_IMPORT_Serial1_localpref_400 () Bool)
(declare-fun |0_R3_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_R2ImportFilterAddSoft0_R2_BGP_IMPORT_Serial1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R3_Serial0| () Bool)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_69.69.69.0/24ExportRemoveSoft0_R2_OVERALL_BEST_None| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_R2_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R3_BGP_IMPORT_Serial0_permitted| () Bool)
(declare-fun R3_BGP_IMPORT_Serial0_localpref_100 () Bool)
(declare-fun R3_BGP_IMPORT_Serial0_localpref_300 () Bool)
(declare-fun R3_BGP_IMPORT_Serial0_localpref_399 () Bool)
(declare-fun R3_BGP_IMPORT_Serial0_localpref_400 () Bool)
(declare-fun |0_R3ImportFilterAddSoft0_R3_BGP_IMPORT_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial1| () Bool)
(declare-fun |0_R3_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_R3_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_0_R3_OVERALL_BEST_NoneBGPExportAddSoft| () Bool)
(declare-fun |0_74.74.74.0/24Stat-Conn-ExportRemoveSoft0_R3_OVERALL_BEST_None|
             ()
             Bool)
(declare-fun |0_R3_CONNECTED_IMPORT_Loopback0_permitted| () Bool)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_42.42.42.0/24ExportRemoveSoft0_R1_OVERALL_BEST_None| () Bool)
(declare-fun |0_R1_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R3_BGP_BEST_None_permitted| () Bool)
(declare-fun |0_R3_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_R2_BGP_IMPORT_Serial1_choice| () Bool)
(declare-fun |0_R2_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R3_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R3_BGP_IMPORT_Serial1_choice| () Bool)
(declare-fun |0_R3_CONNECTED_IMPORT_Loopback0_choice| () Bool)
(declare-fun |0_R1_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R1_BGP_IMPORT_Serial1_choice| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R3_Serial1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R3_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Serial1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_0__R2_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial1| () Bool)
(declare-fun |0_R2-StaticRouteAddSoft-R2,Serial1 --> R3,Serial0| () Bool)
(declare-fun |0_0__R2_Serial1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_R2-StaticRouteAddSoft-R2,Serial0 --> R1,Serial0| () Bool)
(declare-fun |0_0__R2_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R3_Loopback0| () Bool)
(declare-fun |0_0__R3_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R3_Serial0| () Bool)
(declare-fun |0_R3-StaticRouteAddSoft-R3,Serial0 --> R2,Serial1| () Bool)
(declare-fun |0_0__R3_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R3_Serial1| () Bool)
(declare-fun |0_R3-StaticRouteAddSoft-R3,Serial1 --> R1,Serial1| () Bool)
(declare-fun |0_0__R3_Serial1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_R1-StaticRouteAddSoft-R1,Serial0 --> R2,Serial0| () Bool)
(declare-fun |0_0__R1_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_0__R1_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Serial1| () Bool)
(declare-fun |0_R1-StaticRouteAddSoft-R1,Serial1 --> R3,Serial1| () Bool)
(declare-fun |0_0__R1_Serial1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_src-ip| () (_ BitVec 32))
(assert (>= |0_FAILED-EDGE_R2_R3| 0))
(assert (<= |0_FAILED-EDGE_R2_R3| 1))
(assert (>= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R2_Loopback0| 1))
(assert (>= |0_FAILED-EDGE_R1_R2| 0))
(assert (<= |0_FAILED-EDGE_R1_R2| 1))
(assert (>= |0_FAILED-EDGE_R1_R3| 0))
(assert (<= |0_FAILED-EDGE_R1_R3| 1))
(assert (>= |0_FAILED-EDGE_R3_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R3_Loopback0| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback0| 1))
(assert (= |0_FAILED-EDGE_R2_R3| 0))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (= |0_FAILED-EDGE_R1_R2| 0))
(assert (= |0_FAILED-EDGE_R1_R3| 0))
(assert (= |0_FAILED-EDGE_R3_Loopback0| 0))
(assert (= |0_FAILED-EDGE_R1_Loopback0| 0))
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
(assert (>= |0_R2_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_R2_OVERALL_BEST_None_localPref| 0))
(assert (< |0_R2_OVERALL_BEST_None_localPref| 4294967296))
(assert (>= |0_R2_OVERALL_BEST_None_metric| 0))
(assert (< |0_R2_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R2_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R2_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R3_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_R3_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_R3_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_R3_OVERALL_BEST_None_localPref| 0))
(assert (< |0_R3_OVERALL_BEST_None_localPref| 4294967296))
(assert (>= |0_R3_OVERALL_BEST_None_metric| 0))
(assert (< |0_R3_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R3_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R3_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R3_BGP_BEST_None_routerID| 0))
(assert (>= |0_R3_BGP_BEST_None_localPref| 0))
(assert (< |0_R3_BGP_BEST_None_localPref| 4294967296))
(assert (>= |0_R3_BGP_BEST_None_metric| 0))
(assert (< |0_R3_BGP_BEST_None_metric| 65536))
(assert (>= |0_R3_BGP_BEST_None_prefixLength| 0))
(assert (<= |0_R3_BGP_BEST_None_prefixLength| 32))
(assert (>= |0_R3_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_R3_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_R1_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_R1_OVERALL_BEST_None_localPref| 0))
(assert (< |0_R1_OVERALL_BEST_None_localPref| 4294967296))
(assert (>= |0_R1_OVERALL_BEST_None_metric| 0))
(assert (< |0_R1_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R1_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R1_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R2_BGP_SINGLE-EXPORT__localPref| 0))
(assert (< |0_R2_BGP_SINGLE-EXPORT__localPref| 4294967296))
(assert (>= |0_R2_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_R2_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_R2_BGP_IMPORT_Serial1_localPref| 0))
(assert (< |0_R2_BGP_IMPORT_Serial1_localPref| 4294967296))
(assert (>= |0_R2_BGP_IMPORT_Serial1_metric| 0))
(assert (< |0_R2_BGP_IMPORT_Serial1_metric| 65536))
(assert (>= |0_R2_BGP_IMPORT_Serial1_prefixLength| 0))
(assert (<= |0_R2_BGP_IMPORT_Serial1_prefixLength| 32))
(assert (>= |0_R3_BGP_SINGLE-EXPORT__localPref| 0))
(assert (< |0_R3_BGP_SINGLE-EXPORT__localPref| 4294967296))
(assert (>= |0_R3_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_R3_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R3_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R3_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_R3_BGP_IMPORT_Serial0_localPref| 0))
(assert (< |0_R3_BGP_IMPORT_Serial0_localPref| 4294967296))
(assert (>= |0_R3_BGP_IMPORT_Serial0_metric| 0))
(assert (< |0_R3_BGP_IMPORT_Serial0_metric| 65536))
(assert (>= |0_R3_BGP_IMPORT_Serial0_prefixLength| 0))
(assert (<= |0_R3_BGP_IMPORT_Serial0_prefixLength| 32))
(assert (>= |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength| 0))
(assert (<= |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength| 32))
(assert (>= |0_R1_BGP_SINGLE-EXPORT__localPref| 0))
(assert (< |0_R1_BGP_SINGLE-EXPORT__localPref| 4294967296))
(assert (>= |0_R1_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_R1_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (let ((a!1 (ite R2_BGP_IMPORT_Serial1_localpref_400
                400
                (ite R2_BGP_IMPORT_Serial1_localpref_399
                     399
                     (ite R2_BGP_IMPORT_Serial1_localpref_300
                          300
                          (ite R2_BGP_IMPORT_Serial1_localpref_100 100 500))))))
(let ((a!2 (ite true
                (ite (<= |0_R3_BGP_SINGLE-EXPORT__metric| 255)
                     (and (= |0_R2_BGP_IMPORT_Serial1_permitted|
                             |0_R3_BGP_SINGLE-EXPORT__permitted|)
                          (= |0_R2_BGP_IMPORT_Serial1_prefixLength|
                             |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
                          true
                          true
                          (= |0_R2_BGP_IMPORT_Serial1_localPref| a!1)
                          (= |0_R2_BGP_IMPORT_Serial1_metric|
                             |0_R3_BGP_SINGLE-EXPORT__metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R2_BGP_IMPORT_Serial1_permitted|))
                (not |0_R2_BGP_IMPORT_Serial1_permitted|))))
  (ite (and (not |0_CONTROL-FORWARDING_R3_Serial0|)
            true
            |0_R3_BGP_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_R2_R3| 0)
            |0_R2ImportFilterAddSoft0_R2_BGP_IMPORT_Serial1|)
       a!2
       (not |0_R2_BGP_IMPORT_Serial1_permitted|)))))
(assert (let ((a!1 (ite (and (= |0_R2_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x45454500 #xffffff00))
                     |0_69.69.69.0/24ExportRemoveSoft0_R2_OVERALL_BEST_None|)
                24
                |0_R2_OVERALL_BEST_None_prefixLength|)))
(let ((a!2 (and (= |0_R2_BGP_SINGLE-EXPORT__permitted|
                   |0_R2_OVERALL_BEST_None_permitted|)
                (= |0_R2_BGP_SINGLE-EXPORT__prefixLength| a!1)
                true
                true
                (= |0_R2_BGP_SINGLE-EXPORT__localPref|
                   |0_R2_OVERALL_BEST_None_localPref|)
                (= |0_R2_BGP_SINGLE-EXPORT__metric|
                   (ite true (+ |0_R2_OVERALL_BEST_None_metric| 1) 1))
                true
                true
                true
                true
                true
                true
                true
                true)))
(let ((a!3 (ite (<= (ite true (+ |0_R2_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))
  (ite (and true
            true
            |0_R2_OVERALL_BEST_None_permitted|
            (= |0_FAILED-EDGE_R2_R3| 0))
       (ite true a!3 (not |0_R2_BGP_SINGLE-EXPORT__permitted|))
       (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))))
(assert (let ((a!1 (ite R3_BGP_IMPORT_Serial0_localpref_400
                400
                (ite R3_BGP_IMPORT_Serial0_localpref_399
                     399
                     (ite R3_BGP_IMPORT_Serial0_localpref_300
                          300
                          (ite R3_BGP_IMPORT_Serial0_localpref_100 100 500))))))
(let ((a!2 (ite true
                (ite (<= |0_R2_BGP_SINGLE-EXPORT__metric| 255)
                     (and (= |0_R3_BGP_IMPORT_Serial0_permitted|
                             |0_R2_BGP_SINGLE-EXPORT__permitted|)
                          (= |0_R3_BGP_IMPORT_Serial0_prefixLength|
                             |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
                          true
                          true
                          (= |0_R3_BGP_IMPORT_Serial0_localPref| a!1)
                          (= |0_R3_BGP_IMPORT_Serial0_metric|
                             |0_R2_BGP_SINGLE-EXPORT__metric|)
                          true
                          true
                          true
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R3_BGP_IMPORT_Serial0_permitted|))
                (not |0_R3_BGP_IMPORT_Serial0_permitted|))))
  (ite (and (not |0_CONTROL-FORWARDING_R2_Serial1|)
            true
            |0_R2_BGP_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_R2_R3| 0)
            |0_R3ImportFilterAddSoft0_R3_BGP_IMPORT_Serial0|)
       a!2
       (not |0_R3_BGP_IMPORT_Serial0_permitted|)))))
(assert (let ((a!1 (or (and (= ((_ extract 31 8) |0_dst-ip|) #x4a4a4a)
                    |0_74.74.74.0/24Stat-Conn-ExportRemoveSoft0_R3_OVERALL_BEST_None|
                    (not (= |0_R3_OVERALL_BEST_None_history| #b0)))
               (= |0_R3_OVERALL_BEST_None_history| #b0)
               |0_0_R3_OVERALL_BEST_NoneBGPExportAddSoft|))
      (a!2 (ite (and (= 24 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x4a4a4a00 #xffffff00)))
                24
                |0_R3_OVERALL_BEST_None_prefixLength|)))
(let ((a!3 (and (= |0_R3_BGP_SINGLE-EXPORT__permitted|
                   |0_R3_OVERALL_BEST_None_permitted|)
                (= |0_R3_BGP_SINGLE-EXPORT__prefixLength| a!2)
                true
                true
                (= |0_R3_BGP_SINGLE-EXPORT__localPref|
                   |0_R3_OVERALL_BEST_None_localPref|)
                (= |0_R3_BGP_SINGLE-EXPORT__metric|
                   (ite (= |0_R3_OVERALL_BEST_None_history| #b0)
                        (+ |0_R3_OVERALL_BEST_None_metric| 1)
                        1))
                true
                true
                true
                true
                true
                true
                true
                true)))
(let ((a!4 (ite (<= (ite (= |0_R3_OVERALL_BEST_None_history| #b0)
                         (+ |0_R3_OVERALL_BEST_None_metric| 1)
                         1)
                    255)
                a!3
                (not |0_R3_BGP_SINGLE-EXPORT__permitted|))))
  (ite (and true
            true
            |0_R3_OVERALL_BEST_None_permitted|
            (= |0_FAILED-EDGE_R2_R3| 0))
       (ite a!1 a!4 (not |0_R3_BGP_SINGLE-EXPORT__permitted|))
       (not |0_R3_BGP_SINGLE-EXPORT__permitted|))))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffffff00) (bvand #x4a4a4a00 #xffffff00))
          (= |0_FAILED-EDGE_R3_Loopback0| 0))
     (and |0_R3_CONNECTED_IMPORT_Loopback0_permitted|
          (= |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength| 24)
          true
          true
          true)
     (not |0_R3_CONNECTED_IMPORT_Loopback0_permitted|)))
(assert (let ((a!1 (ite (and (= |0_R1_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x2a2a2a00 #xffffff00))
                     |0_42.42.42.0/24ExportRemoveSoft0_R1_OVERALL_BEST_None|)
                24
                |0_R1_OVERALL_BEST_None_prefixLength|)))
(let ((a!2 (and (= |0_R1_BGP_SINGLE-EXPORT__permitted|
                   |0_R1_OVERALL_BEST_None_permitted|)
                (= |0_R1_BGP_SINGLE-EXPORT__prefixLength| a!1)
                true
                true
                (= |0_R1_BGP_SINGLE-EXPORT__localPref|
                   |0_R1_OVERALL_BEST_None_localPref|)
                (= |0_R1_BGP_SINGLE-EXPORT__metric|
                   (ite true (+ |0_R1_OVERALL_BEST_None_metric| 1) 1))
                true
                true
                true
                true
                true
                true
                true
                true)))
(let ((a!3 (ite (<= (ite true (+ |0_R1_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))
  (ite (and true
            true
            |0_R1_OVERALL_BEST_None_permitted|
            (= |0_FAILED-EDGE_R1_R2| 0))
       (ite true a!3 (not |0_R1_BGP_SINGLE-EXPORT__permitted|))
       (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))))
(assert (=> |0_R2_OVERALL_BEST_None_permitted| true))
(assert (=> |0_R1_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R2_OVERALL_BEST_None_routerID| 1246382593))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R2_OVERALL_BEST_None_localPref|
                   |0_R2_BGP_IMPORT_Serial1_localPref|)
                (or (< |0_R2_OVERALL_BEST_None_metric|
                       |0_R2_BGP_IMPORT_Serial1_metric|)
                    (and (= |0_R2_OVERALL_BEST_None_metric|
                            |0_R2_BGP_IMPORT_Serial1_metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R2_OVERALL_BEST_None_localPref|
                           |0_R2_BGP_IMPORT_Serial1_localPref|)
                        a!3)))))
  (=> |0_R2_BGP_IMPORT_Serial1_permitted|
      (or (> |0_R2_OVERALL_BEST_None_prefixLength|
             |0_R2_BGP_IMPORT_Serial1_prefixLength|)
          (and (= |0_R2_OVERALL_BEST_None_prefixLength|
                  |0_R2_BGP_IMPORT_Serial1_prefixLength|)
               a!4))))))))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R2_OVERALL_BEST_None_routerID| 707406337))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R2_OVERALL_BEST_None_localPref|
                   |0_R1_BGP_SINGLE-EXPORT__localPref|)
                (or (< |0_R2_OVERALL_BEST_None_metric|
                       |0_R1_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R2_OVERALL_BEST_None_metric|
                            |0_R1_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R2_OVERALL_BEST_None_localPref|
                           |0_R1_BGP_SINGLE-EXPORT__localPref|)
                        a!3)))))
  (=> |0_R1_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R2_OVERALL_BEST_None_prefixLength|
             |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
          (and (= |0_R2_OVERALL_BEST_None_prefixLength|
                  |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
               a!4))))))))
(assert (= (or |0_R2_BGP_IMPORT_Serial1_permitted| |0_R1_BGP_SINGLE-EXPORT__permitted|)
   |0_R2_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_R2_BGP_IMPORT_Serial1_permitted| |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (or (and |0_R2_BGP_IMPORT_Serial1_permitted|
             (= |0_R2_OVERALL_BEST_None_prefixLength|
                |0_R2_BGP_IMPORT_Serial1_prefixLength|)
             true
             (= |0_R2_OVERALL_BEST_None_localPref|
                |0_R2_BGP_IMPORT_Serial1_localPref|)
             (= |0_R2_OVERALL_BEST_None_metric|
                |0_R2_BGP_IMPORT_Serial1_metric|)
             true
             true
             true
             (= |0_R2_OVERALL_BEST_None_routerID| 1246382593)
             true
             true
             true
             true
             true)
        (and |0_R1_BGP_SINGLE-EXPORT__permitted|
             (= |0_R2_OVERALL_BEST_None_prefixLength|
                |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
             true
             (= |0_R2_OVERALL_BEST_None_localPref|
                |0_R1_BGP_SINGLE-EXPORT__localPref|)
             (= |0_R2_OVERALL_BEST_None_metric|
                |0_R1_BGP_SINGLE-EXPORT__metric|)
             true
             true
             true
             (= |0_R2_OVERALL_BEST_None_routerID| 707406337)
             true
             true
             true
             true
             true))))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R3_BGP_BEST_None_routerID| 1162167553))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R3_BGP_BEST_None_localPref|
                   |0_R3_BGP_IMPORT_Serial0_localPref|)
                (or (< |0_R3_BGP_BEST_None_metric|
                       |0_R3_BGP_IMPORT_Serial0_metric|)
                    (and (= |0_R3_BGP_BEST_None_metric|
                            |0_R3_BGP_IMPORT_Serial0_metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R3_BGP_BEST_None_localPref|
                           |0_R3_BGP_IMPORT_Serial0_localPref|)
                        a!3)))))
  (=> |0_R3_BGP_IMPORT_Serial0_permitted|
      (or (> |0_R3_BGP_BEST_None_prefixLength|
             |0_R3_BGP_IMPORT_Serial0_prefixLength|)
          (and (= |0_R3_BGP_BEST_None_prefixLength|
                  |0_R3_BGP_IMPORT_Serial0_prefixLength|)
               a!4))))))))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R3_BGP_BEST_None_routerID| 707406337))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R3_BGP_BEST_None_localPref|
                   |0_R1_BGP_SINGLE-EXPORT__localPref|)
                (or (< |0_R3_BGP_BEST_None_metric|
                       |0_R1_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R3_BGP_BEST_None_metric|
                            |0_R1_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R3_BGP_BEST_None_localPref|
                           |0_R1_BGP_SINGLE-EXPORT__localPref|)
                        a!3)))))
  (=> |0_R1_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R3_BGP_BEST_None_prefixLength|
             |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
          (and (= |0_R3_BGP_BEST_None_prefixLength|
                  |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
               a!4))))))))
(assert (= (or |0_R3_BGP_IMPORT_Serial0_permitted| |0_R1_BGP_SINGLE-EXPORT__permitted|)
   |0_R3_BGP_BEST_None_permitted|))
(assert (=> (or |0_R3_BGP_IMPORT_Serial0_permitted| |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (or (and |0_R3_BGP_IMPORT_Serial0_permitted|
             (= |0_R3_BGP_BEST_None_prefixLength|
                |0_R3_BGP_IMPORT_Serial0_prefixLength|)
             true
             (= |0_R3_BGP_BEST_None_localPref|
                |0_R3_BGP_IMPORT_Serial0_localPref|)
             (= |0_R3_BGP_BEST_None_metric| |0_R3_BGP_IMPORT_Serial0_metric|)
             true
             true
             true
             (= |0_R3_BGP_BEST_None_routerID| 1162167553)
             true
             true
             true
             true
             true)
        (and |0_R1_BGP_SINGLE-EXPORT__permitted|
             (= |0_R3_BGP_BEST_None_prefixLength|
                |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
             true
             (= |0_R3_BGP_BEST_None_localPref|
                |0_R1_BGP_SINGLE-EXPORT__localPref|)
             (= |0_R3_BGP_BEST_None_metric| |0_R1_BGP_SINGLE-EXPORT__metric|)
             true
             true
             true
             (= |0_R3_BGP_BEST_None_routerID| 707406337)
             true
             true
             true
             true
             true))))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_R3_CONNECTED_BEST_None_prefixLength|
                  |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
               (and (= |0_R3_CONNECTED_BEST_None_prefixLength|
                       |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_R3_CONNECTED_IMPORT_Loopback0_permitted| a!4))))))
(assert (= |0_R3_CONNECTED_IMPORT_Loopback0_permitted|
   |0_R3_CONNECTED_BEST_None_permitted|))
(assert (=> |0_R3_CONNECTED_IMPORT_Loopback0_permitted|
    (and |0_R3_CONNECTED_IMPORT_Loopback0_permitted|
         (= |0_R3_CONNECTED_BEST_None_prefixLength|
            |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
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
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R1_OVERALL_BEST_None_routerID| 1162167553))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R1_OVERALL_BEST_None_localPref|
                   |0_R2_BGP_SINGLE-EXPORT__localPref|)
                (or (< |0_R1_OVERALL_BEST_None_metric|
                       |0_R2_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R1_OVERALL_BEST_None_metric|
                            |0_R2_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R1_OVERALL_BEST_None_localPref|
                           |0_R2_BGP_SINGLE-EXPORT__localPref|)
                        a!3)))))
  (=> |0_R2_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R1_OVERALL_BEST_None_prefixLength|
             |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
          (and (= |0_R1_OVERALL_BEST_None_prefixLength|
                  |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
               a!4))))))))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R1_OVERALL_BEST_None_routerID| 1246382593))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R1_OVERALL_BEST_None_localPref|
                   |0_R3_BGP_SINGLE-EXPORT__localPref|)
                (or (< |0_R1_OVERALL_BEST_None_metric|
                       |0_R3_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R1_OVERALL_BEST_None_metric|
                            |0_R3_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (or false
               (and true
                    (or (> |0_R1_OVERALL_BEST_None_localPref|
                           |0_R3_BGP_SINGLE-EXPORT__localPref|)
                        a!3)))))
  (=> |0_R3_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R1_OVERALL_BEST_None_prefixLength|
             |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
          (and (= |0_R1_OVERALL_BEST_None_prefixLength|
                  |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
               a!4))))))))
(assert (= (or |0_R2_BGP_SINGLE-EXPORT__permitted| |0_R3_BGP_SINGLE-EXPORT__permitted|)
   |0_R1_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_R2_BGP_SINGLE-EXPORT__permitted| |0_R3_BGP_SINGLE-EXPORT__permitted|)
    (or (and |0_R2_BGP_SINGLE-EXPORT__permitted|
             (= |0_R1_OVERALL_BEST_None_prefixLength|
                |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
             true
             (= |0_R1_OVERALL_BEST_None_localPref|
                |0_R2_BGP_SINGLE-EXPORT__localPref|)
             (= |0_R1_OVERALL_BEST_None_metric|
                |0_R2_BGP_SINGLE-EXPORT__metric|)
             true
             true
             true
             (= |0_R1_OVERALL_BEST_None_routerID| 1162167553)
             true
             true
             true
             true
             true)
        (and |0_R3_BGP_SINGLE-EXPORT__permitted|
             (= |0_R1_OVERALL_BEST_None_prefixLength|
                |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
             true
             (= |0_R1_OVERALL_BEST_None_localPref|
                |0_R3_BGP_SINGLE-EXPORT__localPref|)
             (= |0_R1_OVERALL_BEST_None_metric|
                |0_R3_BGP_SINGLE-EXPORT__metric|)
             true
             true
             true
             (= |0_R1_OVERALL_BEST_None_routerID| 1246382593)
             true
             true
             true
             true
             true))))
(assert (= |0_R2_BGP_IMPORT_Serial1_choice|
   (and |0_R2_BGP_IMPORT_Serial1_permitted|
        (= |0_R2_OVERALL_BEST_None_prefixLength|
           |0_R2_BGP_IMPORT_Serial1_prefixLength|)
        true
        (= |0_R2_OVERALL_BEST_None_localPref|
           |0_R2_BGP_IMPORT_Serial1_localPref|)
        (= |0_R2_OVERALL_BEST_None_metric| |0_R2_BGP_IMPORT_Serial1_metric|)
        true
        true
        true
        (= |0_R2_OVERALL_BEST_None_routerID| 1246382593)
        true
        true
        true
        true
        true)))
(assert (= |0_R2_BGP_IMPORT_Serial0_choice|
   (and |0_R1_BGP_SINGLE-EXPORT__permitted|
        (= |0_R2_OVERALL_BEST_None_prefixLength|
           |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
        true
        (= |0_R2_OVERALL_BEST_None_localPref|
           |0_R1_BGP_SINGLE-EXPORT__localPref|)
        (= |0_R2_OVERALL_BEST_None_metric| |0_R1_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_R2_OVERALL_BEST_None_routerID| 707406337)
        true
        true
        true
        true
        true)))
(assert (= |0_R3_BGP_IMPORT_Serial0_choice|
   (and |0_R3_BGP_IMPORT_Serial0_permitted|
        (= |0_R3_BGP_BEST_None_prefixLength|
           |0_R3_BGP_IMPORT_Serial0_prefixLength|)
        true
        (= |0_R3_BGP_BEST_None_localPref| |0_R3_BGP_IMPORT_Serial0_localPref|)
        (= |0_R3_BGP_BEST_None_metric| |0_R3_BGP_IMPORT_Serial0_metric|)
        true
        true
        true
        (= |0_R3_BGP_BEST_None_routerID| 1162167553)
        true
        true
        true
        true
        true)))
(assert (= |0_R3_BGP_IMPORT_Serial1_choice|
   (and |0_R1_BGP_SINGLE-EXPORT__permitted|
        (= |0_R3_BGP_BEST_None_prefixLength|
           |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
        true
        (= |0_R3_BGP_BEST_None_localPref| |0_R1_BGP_SINGLE-EXPORT__localPref|)
        (= |0_R3_BGP_BEST_None_metric| |0_R1_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_R3_BGP_BEST_None_routerID| 707406337)
        true
        true
        true
        true
        true)))
(assert (= |0_R3_CONNECTED_IMPORT_Loopback0_choice|
   (and |0_R3_CONNECTED_IMPORT_Loopback0_permitted|
        (= |0_R3_CONNECTED_BEST_None_prefixLength|
           |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
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
(assert (= |0_R1_BGP_IMPORT_Serial0_choice|
   (and |0_R2_BGP_SINGLE-EXPORT__permitted|
        (= |0_R1_OVERALL_BEST_None_prefixLength|
           |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
        true
        (= |0_R1_OVERALL_BEST_None_localPref|
           |0_R2_BGP_SINGLE-EXPORT__localPref|)
        (= |0_R1_OVERALL_BEST_None_metric| |0_R2_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_R1_OVERALL_BEST_None_routerID| 1162167553)
        true
        true
        true
        true
        true)))
(assert (= |0_R1_BGP_IMPORT_Serial1_choice|
   (and |0_R3_BGP_SINGLE-EXPORT__permitted|
        (= |0_R1_OVERALL_BEST_None_prefixLength|
           |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
        true
        (= |0_R1_OVERALL_BEST_None_localPref|
           |0_R3_BGP_SINGLE-EXPORT__localPref|)
        (= |0_R1_OVERALL_BEST_None_metric| |0_R3_BGP_SINGLE-EXPORT__metric|)
        true
        true
        true
        (= |0_R1_OVERALL_BEST_None_routerID| 1246382593)
        true
        true
        true
        true
        true)))
(assert (let ((a!1 (and true
                (or false
                    (and true
                         (<= |0_R3_OVERALL_BEST_None_routerID|
                             |0_R3_BGP_BEST_None_routerID|))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R3_OVERALL_BEST_None_localPref|
                   |0_R3_BGP_BEST_None_localPref|)
                (or (< |0_R3_OVERALL_BEST_None_metric|
                       |0_R3_BGP_BEST_None_metric|)
                    (and (= |0_R3_OVERALL_BEST_None_metric|
                            |0_R3_BGP_BEST_None_metric|)
                         (or false a!2))))))
(let ((a!4 (or (< |0_R3_OVERALL_BEST_None_adminDist| 20)
               (and (= |0_R3_OVERALL_BEST_None_adminDist| 20)
                    (or (> |0_R3_OVERALL_BEST_None_localPref|
                           |0_R3_BGP_BEST_None_localPref|)
                        a!3)))))
  (=> |0_R3_BGP_BEST_None_permitted|
      (or (> |0_R3_OVERALL_BEST_None_prefixLength|
             |0_R3_BGP_BEST_None_prefixLength|)
          (and (= |0_R3_OVERALL_BEST_None_prefixLength|
                  |0_R3_BGP_BEST_None_prefixLength|)
               a!4))))))))
(assert (let ((a!1 (and true
                (or false (and true (<= |0_R3_OVERALL_BEST_None_routerID| 0))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and (= |0_R3_OVERALL_BEST_None_localPref| 100)
                (or (< |0_R3_OVERALL_BEST_None_metric| 0)
                    (and (= |0_R3_OVERALL_BEST_None_metric| 0) (or false a!2))))))
(let ((a!4 (or (< |0_R3_OVERALL_BEST_None_adminDist| 0)
               (and (= |0_R3_OVERALL_BEST_None_adminDist| 0)
                    (or (> |0_R3_OVERALL_BEST_None_localPref| 100) a!3)))))
  (=> |0_R3_CONNECTED_BEST_None_permitted|
      (or (> |0_R3_OVERALL_BEST_None_prefixLength|
             |0_R3_CONNECTED_BEST_None_prefixLength|)
          (and (= |0_R3_OVERALL_BEST_None_prefixLength|
                  |0_R3_CONNECTED_BEST_None_prefixLength|)
               a!4))))))))
(assert (= (or |0_R3_BGP_BEST_None_permitted| |0_R3_CONNECTED_BEST_None_permitted|)
   |0_R3_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_R3_BGP_BEST_None_permitted| |0_R3_CONNECTED_BEST_None_permitted|)
    (or (and |0_R3_BGP_BEST_None_permitted|
             (= |0_R3_OVERALL_BEST_None_prefixLength|
                |0_R3_BGP_BEST_None_prefixLength|)
             (= |0_R3_OVERALL_BEST_None_adminDist| 20)
             (= |0_R3_OVERALL_BEST_None_localPref|
                |0_R3_BGP_BEST_None_localPref|)
             (= |0_R3_OVERALL_BEST_None_metric| |0_R3_BGP_BEST_None_metric|)
             true
             true
             true
             (= |0_R3_OVERALL_BEST_None_routerID| |0_R3_BGP_BEST_None_routerID|)
             (= |0_R3_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_R3_CONNECTED_BEST_None_permitted|
             (= |0_R3_OVERALL_BEST_None_prefixLength|
                |0_R3_CONNECTED_BEST_None_prefixLength|)
             (= |0_R3_OVERALL_BEST_None_adminDist| 0)
             (= |0_R3_OVERALL_BEST_None_localPref| 100)
             (= |0_R3_OVERALL_BEST_None_metric| 0)
             true
             true
             true
             true
             (= |0_R3_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (=> (and true
         |0_R2_BGP_IMPORT_Serial1_choice|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R2_BGP_IMPORT_Serial1_prefixLength|)
         true
         (= |0_R2_OVERALL_BEST_None_localPref|
            |0_R2_BGP_IMPORT_Serial1_localPref|)
         (= |0_R2_OVERALL_BEST_None_metric| |0_R2_BGP_IMPORT_Serial1_metric|)
         true
         true
         true
         (= |0_R2_OVERALL_BEST_None_routerID| 1246382593)
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R2_Serial1|))
(assert (=> (and true
         |0_R2_BGP_IMPORT_Serial0_choice|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
         true
         (= |0_R2_OVERALL_BEST_None_localPref|
            |0_R1_BGP_SINGLE-EXPORT__localPref|)
         (= |0_R2_OVERALL_BEST_None_metric| |0_R1_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_R2_OVERALL_BEST_None_routerID| 707406337)
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R2_Serial0|))
(assert (not |0_CONTROL-FORWARDING_R2_Loopback0|))
(assert (=> (not (and true
              |0_R2_BGP_IMPORT_Serial1_choice|
              (= |0_R2_OVERALL_BEST_None_prefixLength|
                 |0_R2_BGP_IMPORT_Serial1_prefixLength|)
              true
              (= |0_R2_OVERALL_BEST_None_localPref|
                 |0_R2_BGP_IMPORT_Serial1_localPref|)
              (= |0_R2_OVERALL_BEST_None_metric|
                 |0_R2_BGP_IMPORT_Serial1_metric|)
              true
              true
              true
              (= |0_R2_OVERALL_BEST_None_routerID| 1246382593)
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R2_Serial1|)))
(assert (=> (not (and true
              |0_R2_BGP_IMPORT_Serial0_choice|
              (= |0_R2_OVERALL_BEST_None_prefixLength|
                 |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
              true
              (= |0_R2_OVERALL_BEST_None_localPref|
                 |0_R1_BGP_SINGLE-EXPORT__localPref|)
              (= |0_R2_OVERALL_BEST_None_metric|
                 |0_R1_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_R2_OVERALL_BEST_None_routerID| 707406337)
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R2_Serial0|)))
(assert (=> (and true
         |0_R3_BGP_IMPORT_Serial0_choice|
         (= |0_R3_OVERALL_BEST_None_prefixLength|
            |0_R3_BGP_IMPORT_Serial0_prefixLength|)
         (= |0_R3_OVERALL_BEST_None_adminDist| 20)
         (= |0_R3_OVERALL_BEST_None_localPref|
            |0_R3_BGP_IMPORT_Serial0_localPref|)
         (= |0_R3_OVERALL_BEST_None_metric| |0_R3_BGP_IMPORT_Serial0_metric|)
         true
         true
         true
         (= |0_R3_OVERALL_BEST_None_routerID| 1162167553)
         (= |0_R3_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R3_Serial0|))
(assert (=> (and true
         |0_R3_BGP_IMPORT_Serial1_choice|
         (= |0_R3_OVERALL_BEST_None_prefixLength|
            |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
         (= |0_R3_OVERALL_BEST_None_adminDist| 20)
         (= |0_R3_OVERALL_BEST_None_localPref|
            |0_R1_BGP_SINGLE-EXPORT__localPref|)
         (= |0_R3_OVERALL_BEST_None_metric| |0_R1_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_R3_OVERALL_BEST_None_routerID| 707406337)
         (= |0_R3_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R3_Serial1|))
(assert (=> (and (not (= |0_dst-ip| #x4a4a4a01))
         |0_R3_CONNECTED_IMPORT_Loopback0_choice|
         (= |0_R3_OVERALL_BEST_None_prefixLength|
            |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
         (= |0_R3_OVERALL_BEST_None_adminDist| 0)
         (= |0_R3_OVERALL_BEST_None_localPref| 100)
         (= |0_R3_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         (= |0_R3_OVERALL_BEST_None_routerID| 0)
         (= |0_R3_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R3_Loopback0|))
(assert (=> (not (and true
              |0_R3_BGP_IMPORT_Serial0_choice|
              (= |0_R3_OVERALL_BEST_None_prefixLength|
                 |0_R3_BGP_IMPORT_Serial0_prefixLength|)
              (= |0_R3_OVERALL_BEST_None_adminDist| 20)
              (= |0_R3_OVERALL_BEST_None_localPref|
                 |0_R3_BGP_IMPORT_Serial0_localPref|)
              (= |0_R3_OVERALL_BEST_None_metric|
                 |0_R3_BGP_IMPORT_Serial0_metric|)
              true
              true
              true
              (= |0_R3_OVERALL_BEST_None_routerID| 1162167553)
              (= |0_R3_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R3_Serial0|)))
(assert (=> (not (and true
              |0_R3_BGP_IMPORT_Serial1_choice|
              (= |0_R3_OVERALL_BEST_None_prefixLength|
                 |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
              (= |0_R3_OVERALL_BEST_None_adminDist| 20)
              (= |0_R3_OVERALL_BEST_None_localPref|
                 |0_R1_BGP_SINGLE-EXPORT__localPref|)
              (= |0_R3_OVERALL_BEST_None_metric|
                 |0_R1_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_R3_OVERALL_BEST_None_routerID| 707406337)
              (= |0_R3_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R3_Serial1|)))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x4a4a4a01))
                     |0_R3_CONNECTED_IMPORT_Loopback0_choice|
                     (= |0_R3_OVERALL_BEST_None_prefixLength|
                        |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength|)
                     (= |0_R3_OVERALL_BEST_None_adminDist| 0)
                     (= |0_R3_OVERALL_BEST_None_localPref| 100)
                     (= |0_R3_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     (= |0_R3_OVERALL_BEST_None_routerID| 0)
                     (= |0_R3_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_R3_Loopback0|))))
(assert (=> (and true
         |0_R1_BGP_IMPORT_Serial0_choice|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
         true
         (= |0_R1_OVERALL_BEST_None_localPref|
            |0_R2_BGP_SINGLE-EXPORT__localPref|)
         (= |0_R1_OVERALL_BEST_None_metric| |0_R2_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_R1_OVERALL_BEST_None_routerID| 1162167553)
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R1_Serial0|))
(assert (=> (and true
         |0_R1_BGP_IMPORT_Serial1_choice|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
         true
         (= |0_R1_OVERALL_BEST_None_localPref|
            |0_R3_BGP_SINGLE-EXPORT__localPref|)
         (= |0_R1_OVERALL_BEST_None_metric| |0_R3_BGP_SINGLE-EXPORT__metric|)
         true
         true
         true
         (= |0_R1_OVERALL_BEST_None_routerID| 1246382593)
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R1_Serial1|))
(assert (not |0_CONTROL-FORWARDING_R1_Loopback0|))
(assert (=> (not (and true
              |0_R1_BGP_IMPORT_Serial0_choice|
              (= |0_R1_OVERALL_BEST_None_prefixLength|
                 |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
              true
              (= |0_R1_OVERALL_BEST_None_localPref|
                 |0_R2_BGP_SINGLE-EXPORT__localPref|)
              (= |0_R1_OVERALL_BEST_None_metric|
                 |0_R2_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_R1_OVERALL_BEST_None_routerID| 1162167553)
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R1_Serial0|)))
(assert (=> (not (and true
              |0_R1_BGP_IMPORT_Serial1_choice|
              (= |0_R1_OVERALL_BEST_None_prefixLength|
                 |0_R3_BGP_SINGLE-EXPORT__prefixLength|)
              true
              (= |0_R1_OVERALL_BEST_None_localPref|
                 |0_R3_BGP_SINGLE-EXPORT__localPref|)
              (= |0_R1_OVERALL_BEST_None_metric|
                 |0_R3_BGP_SINGLE-EXPORT__metric|)
              true
              true
              true
              (= |0_R1_OVERALL_BEST_None_routerID| 1246382593)
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R1_Serial1|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Loopback0|)
        |0_0__R2_Loopback0_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R2_Loopback0| 0))
   |0_DATA-FORWARDING_R2_Loopback0|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R2_Serial1|)
                         |0_0__R2_Serial1_OUTBOUND_SOFTAdd|)
                    |0_R2-StaticRouteAddSoft-R2,Serial1 --> R3,Serial0|)
                (= |0_FAILED-EDGE_R2_R3| 0))))
  (= a!1 |0_DATA-FORWARDING_R2_Serial1|)))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R2_Serial0|)
                         |0_0__R2_Serial0_OUTBOUND_SOFTAdd|)
                    |0_R2-StaticRouteAddSoft-R2,Serial0 --> R1,Serial0|)
                (= |0_FAILED-EDGE_R1_R2| 0))))
  (= a!1 |0_DATA-FORWARDING_R2_Serial0|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R3_Loopback0|)
        |0_0__R3_Loopback0_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R3_Loopback0| 0))
   |0_DATA-FORWARDING_R3_Loopback0|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R3_Serial0|)
                         |0_0__R3_Serial0_OUTBOUND_SOFTAdd|)
                    |0_R3-StaticRouteAddSoft-R3,Serial0 --> R2,Serial1|)
                (= |0_FAILED-EDGE_R2_R3| 0))))
  (= a!1 |0_DATA-FORWARDING_R3_Serial0|)))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R3_Serial1|)
                         |0_0__R3_Serial1_OUTBOUND_SOFTAdd|)
                    |0_R3-StaticRouteAddSoft-R3,Serial1 --> R1,Serial1|)
                (= |0_FAILED-EDGE_R1_R3| 0))))
  (= a!1 |0_DATA-FORWARDING_R3_Serial1|)))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R1_Serial0|)
                         |0_0__R1_Serial0_OUTBOUND_SOFTAdd|)
                    |0_R1-StaticRouteAddSoft-R1,Serial0 --> R2,Serial0|)
                (= |0_FAILED-EDGE_R1_R2| 0))))
  (= a!1 |0_DATA-FORWARDING_R1_Serial0|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback0|)
        |0_0__R1_Loopback0_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R1_Loopback0| 0))
   |0_DATA-FORWARDING_R1_Loopback0|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R1_Serial1|)
                         |0_0__R1_Serial1_OUTBOUND_SOFTAdd|)
                    |0_R1-StaticRouteAddSoft-R1,Serial1 --> R3,Serial1|)
                (= |0_FAILED-EDGE_R1_R3| 0))))
  (= a!1 |0_DATA-FORWARDING_R1_Serial1|)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_localPref| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_localPref| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_R3_BGP_BEST_None_permitted|) (= |0_R3_BGP_BEST_None_localPref| 0)))
(assert (=> (not |0_R3_BGP_BEST_None_permitted|)
    (= |0_R3_BGP_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R3_BGP_BEST_None_permitted|) (= |0_R3_BGP_BEST_None_metric| 0)))
(assert (=> (not |0_R3_BGP_BEST_None_permitted|) (= |0_R3_BGP_BEST_None_routerID| 0)))
(assert (=> (not |0_R3_CONNECTED_BEST_None_permitted|)
    (= |0_R3_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_localPref| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_R2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R2_BGP_SINGLE-EXPORT__localPref| 0)))
(assert (=> (not |0_R2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R2_BGP_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_R2_BGP_IMPORT_Serial1_permitted|)
    (= |0_R2_BGP_IMPORT_Serial1_localPref| 0)))
(assert (=> (not |0_R2_BGP_IMPORT_Serial1_permitted|)
    (= |0_R2_BGP_IMPORT_Serial1_prefixLength| 0)))
(assert (=> (not |0_R2_BGP_IMPORT_Serial1_permitted|)
    (= |0_R2_BGP_IMPORT_Serial1_metric| 0)))
(assert (=> (not |0_R3_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R3_BGP_SINGLE-EXPORT__localPref| 0)))
(assert (=> (not |0_R3_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R3_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R3_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R3_BGP_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_R3_BGP_IMPORT_Serial0_permitted|)
    (= |0_R3_BGP_IMPORT_Serial0_localPref| 0)))
(assert (=> (not |0_R3_BGP_IMPORT_Serial0_permitted|)
    (= |0_R3_BGP_IMPORT_Serial0_prefixLength| 0)))
(assert (=> (not |0_R3_BGP_IMPORT_Serial0_permitted|)
    (= |0_R3_BGP_IMPORT_Serial0_metric| 0)))
(assert (=> (not |0_R3_CONNECTED_IMPORT_Loopback0_permitted|)
    (= |0_R3_CONNECTED_IMPORT_Loopback0_prefixLength| 0)))
(assert (=> (not |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R1_BGP_SINGLE-EXPORT__localPref| 0)))
(assert (=> (not |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R1_BGP_SINGLE-EXPORT__metric| 0)))
(assert (or false (= (bvand |0_dst-ip| #xffffffff) (bvand #x4a4a4a01 #xffffffff))))
(assert (or false (= (bvand |0_src-ip| #xffffffff) (bvand #x2a2a2a01 #xffffffff))))
(assert (let ((a!1 (=> (and true
                    |0_CONTROL-FORWARDING_R1_Serial0|
                    |0_CONTROL-FORWARDING_R2_Serial1|)
               (and true (or false (= |0_FAILED-EDGE_R1_R3| 1))))))
  (and true a!1 (=> (and true |0_CONTROL-FORWARDING_R1_Serial1|) true))))
(assert (and true true true true))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82b00 #xffffff00))
    (= |0_FAILED-EDGE_R2_R3| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (= |0_FAILED-EDGE_R3_Loopback0| 0))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82b00 #xffffff00))
    (= |0_FAILED-EDGE_R2_R3| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82c00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R3| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82c00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R3| 0)))
