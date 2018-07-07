(declare-fun |0_FAILED-EDGE_R2_Loopback0| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback1| () Int)
(declare-fun |0_FAILED-EDGE_R1_R2| () Int)
(declare-fun |0_FAILED-EDGE_R3_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback0| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R3_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_69.69.69.0/24ExportRemoveSoft0_R2_OVERALL_BEST_None| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_R2_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_42.42.42.0/24ExportRemoveSoft0_R1_OVERALL_BEST_None| () Bool)
(declare-fun |0_R1_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R2_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R1_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R3_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R3_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_0__R2_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_R2-StaticRouteAddSoft-R2,Serial0 --> R1,Serial0| () Bool)
(declare-fun |0_0__R2_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R3_GigabitEthernet0/3| () Bool)
(declare-fun |0_0__R3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_R1-StaticRouteAddSoft-R1,Serial0 --> R2,Serial0| () Bool)
(declare-fun |0_0__R1_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback1| () Bool)
(declare-fun |0_0__R1_Loopback1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_0__R1_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R2_Loopback0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R2_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R3_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R1_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R1_Loopback1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0__R1_Loopback0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_0_R2_OVERALL_BEST_NoneBGPExportAddSoft| () Bool)
(declare-fun |0_0_R1_OVERALL_BEST_NoneBGPExportAddSoft| () Bool)
(assert (>= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R2_Loopback0| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback1| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback1| 1))
(assert (>= |0_FAILED-EDGE_R1_R2| 0))
(assert (<= |0_FAILED-EDGE_R1_R2| 1))
(assert (>= |0_FAILED-EDGE_R3_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_R3_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback0| 1))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (= |0_FAILED-EDGE_R1_Loopback1| 0))
(assert (= |0_FAILED-EDGE_R1_R2| 0))
(assert (= |0_FAILED-EDGE_R3_GigabitEthernet0/3| 0))
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
(assert (>= |0_R2_OVERALL_BEST_None_metric| 0))
(assert (< |0_R2_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R2_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R2_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R3_OVERALL_BEST_None_metric| 0))
(assert (< |0_R3_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R3_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R3_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R1_OVERALL_BEST_None_routerID| 0))
(assert (>= |0_R1_OVERALL_BEST_None_metric| 0))
(assert (< |0_R1_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R1_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R1_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R2_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_R2_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_R1_BGP_SINGLE-EXPORT__metric| 0))
(assert (< |0_R1_BGP_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 32))
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
                true
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
  (ite (and true
            true
            |0_R2_OVERALL_BEST_None_permitted|
            (= |0_FAILED-EDGE_R1_R2| 0))
       (ite true
            (ite true a!2 (not |0_R2_BGP_SINGLE-EXPORT__permitted|))
            (not |0_R2_BGP_SINGLE-EXPORT__permitted|))
       (not |0_R2_BGP_SINGLE-EXPORT__permitted|)))))
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
                true
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
  (ite (and true
            true
            |0_R1_OVERALL_BEST_None_permitted|
            (= |0_FAILED-EDGE_R1_R2| 0))
       (ite true
            (ite true a!2 (not |0_R1_BGP_SINGLE-EXPORT__permitted|))
            (not |0_R1_BGP_SINGLE-EXPORT__permitted|))
       (not |0_R1_BGP_SINGLE-EXPORT__permitted|)))))
(assert (=> |0_R2_OVERALL_BEST_None_permitted| true))
(assert (=> |0_R1_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R2_OVERALL_BEST_None_routerID| 707406337))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R2_OVERALL_BEST_None_metric|
                       |0_R1_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R2_OVERALL_BEST_None_metric|
                            |0_R1_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_R2_OVERALL_BEST_None_prefixLength|
                   |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_R1_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R2_OVERALL_BEST_None_prefixLength|
             |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
          a!4)))))))
(assert (= |0_R1_BGP_SINGLE-EXPORT__permitted| |0_R2_OVERALL_BEST_None_permitted|))
(assert (=> |0_R1_BGP_SINGLE-EXPORT__permitted|
    (and |0_R1_BGP_SINGLE-EXPORT__permitted|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
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
(assert (let ((a!1 (and true
                (or false
                    (and true (<= |0_R1_OVERALL_BEST_None_routerID| 1162167553))))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R1_OVERALL_BEST_None_metric|
                       |0_R2_BGP_SINGLE-EXPORT__metric|)
                    (and (= |0_R1_OVERALL_BEST_None_metric|
                            |0_R2_BGP_SINGLE-EXPORT__metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_R1_OVERALL_BEST_None_prefixLength|
                   |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_R2_BGP_SINGLE-EXPORT__permitted|
      (or (> |0_R1_OVERALL_BEST_None_prefixLength|
             |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
          a!4)))))))
(assert (= |0_R2_BGP_SINGLE-EXPORT__permitted| |0_R1_OVERALL_BEST_None_permitted|))
(assert (=> |0_R2_BGP_SINGLE-EXPORT__permitted|
    (and |0_R2_BGP_SINGLE-EXPORT__permitted|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
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
(assert (= |0_R2_BGP_IMPORT_Serial0_choice|
   (and |0_R1_BGP_SINGLE-EXPORT__permitted|
        (= |0_R2_OVERALL_BEST_None_prefixLength|
           |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
        true
        true
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
(assert (= |0_R1_BGP_IMPORT_Serial0_choice|
   (and |0_R2_BGP_SINGLE-EXPORT__permitted|
        (= |0_R1_OVERALL_BEST_None_prefixLength|
           |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
        true
        true
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
(assert (not |0_R3_OVERALL_BEST_None_permitted|))
(assert (=> (and true
         |0_R2_BGP_IMPORT_Serial0_choice|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
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
              |0_R2_BGP_IMPORT_Serial0_choice|
              (= |0_R2_OVERALL_BEST_None_prefixLength|
                 |0_R1_BGP_SINGLE-EXPORT__prefixLength|)
              true
              true
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
(assert (not |0_CONTROL-FORWARDING_R3_GigabitEthernet0/3|))
(assert (not |0_CONTROL-FORWARDING_R3_GigabitEthernet0/3|))
(assert (=> (and true
         |0_R1_BGP_IMPORT_Serial0_choice|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
         true
         true
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
(assert (not |0_CONTROL-FORWARDING_R1_Loopback1|))
(assert (not |0_CONTROL-FORWARDING_R1_Loopback0|))
(assert (=> (not (and true
              |0_R1_BGP_IMPORT_Serial0_choice|
              (= |0_R1_OVERALL_BEST_None_prefixLength|
                 |0_R2_BGP_SINGLE-EXPORT__prefixLength|)
              true
              true
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
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Loopback0|)
        |0_0__R2_Loopback0_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R2_Loopback0| 0))
   |0_DATA-FORWARDING_R2_Loopback0|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R2_Serial0|)
                         |0_0__R2_Serial0_OUTBOUND_SOFTAdd|)
                    |0_R2-StaticRouteAddSoft-R2,Serial0 --> R1,Serial0|)
                (= |0_FAILED-EDGE_R1_R2| 0))))
  (= a!1 |0_DATA-FORWARDING_R2_Serial0|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R3_GigabitEthernet0/3|)
        |0_0__R3_GigabitEthernet0/3_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R3_GigabitEthernet0/3| 0))
   |0_DATA-FORWARDING_R3_GigabitEthernet0/3|))
(assert (let ((a!1 (and (or (and (or false |0_CONTROL-FORWARDING_R1_Serial0|)
                         |0_0__R1_Serial0_OUTBOUND_SOFTAdd|)
                    |0_R1-StaticRouteAddSoft-R1,Serial0 --> R2,Serial0|)
                (= |0_FAILED-EDGE_R1_R2| 0))))
  (= a!1 |0_DATA-FORWARDING_R1_Serial0|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback1|)
        |0_0__R1_Loopback1_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R1_Loopback1| 0))
   |0_DATA-FORWARDING_R1_Loopback1|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback0|)
        |0_0__R1_Loopback0_OUTBOUND_SOFTAdd|
        (= |0_FAILED-EDGE_R1_Loopback0| 0))
   |0_DATA-FORWARDING_R1_Loopback0|))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|)
    (= |0_R3_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R3_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_routerID| 0)))
(assert (=> (not |0_R2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R2_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R2_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R2_BGP_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R1_BGP_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R1_BGP_SINGLE-EXPORT__permitted|)
    (= |0_R1_BGP_SINGLE-EXPORT__metric| 0)))
(assert (and or (not or)))
(assert-soft |0_0__R2_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R2_Loopback0_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R2_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R2_Serial0_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R3_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R3_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Serial0_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Loopback1_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Loopback1_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_0__R1_Loopback0_INBOUND_SOFTAdd| :weight 1 :id a)
(assert-soft |0_69.69.69.0/24ExportRemoveSoft0_R2_OVERALL_BEST_None| :weight 1 :id a)
(assert-soft (not |0_0_R2_OVERALL_BEST_NoneBGPExportAddSoft|) :weight 1 :id a)
(assert-soft |0_42.42.42.0/24ExportRemoveSoft0_R1_OVERALL_BEST_None| :weight 1 :id a)
(assert-soft (not |0_0_R1_OVERALL_BEST_NoneBGPExportAddSoft|) :weight 1 :id a)
(assert-soft (not |0_R2-StaticRouteAddSoft-R2,Serial0 --> R1,Serial0|) :weight 1 :id a)
(assert-soft (not |0_R1-StaticRouteAddSoft-R1,Serial0 --> R2,Serial0|) :weight 1 :id a)
(check-sat)
