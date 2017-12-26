(declare-fun |0_FAILED-EDGE_R2_Loopback0| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback1| () Int)
(declare-fun |0_FAILED-EDGE_R1_R2| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback0| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_routerID| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R2_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_R2_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R1_BGP_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_R1_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R2_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R1_BGP_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0__R2_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0__R2_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0__R1_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback1| () Bool)
(declare-fun |0__R1_Loopback1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0__R1_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_src-ip| () (_ BitVec 32))
(declare-fun |0__reachable-id_R2| () Int)
(declare-fun |0__reachable_R2| () Bool)
(declare-fun |0__reachable-id_R1| () Int)
(declare-fun |0__reachable_R1| () Bool)
(declare-fun |0__R1_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R2_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R2_Loopback0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R1_Loopback1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R1_Loopback0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0_R2_OVERALL_BEST_NoneBGPExportAddSoft| () Bool)
(declare-fun |0_R1_OVERALL_BEST_NoneBGPExportAddSoft| () Bool)
(assert (>= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R2_Loopback0| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback1| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback1| 1))
(assert (>= |0_FAILED-EDGE_R1_R2| 0))
(assert (<= |0_FAILED-EDGE_R1_R2| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback0| 1))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (= |0_FAILED-EDGE_R1_Loopback1| 0))
(assert (= |0_FAILED-EDGE_R1_R2| 0))
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
                        (bvand #x45454500 #xffffff00)))
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
(let ((a!3 (ite (<= (ite true (+ |0_R2_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))
(let ((a!4 (ite (and true
                     true
                     |0_R2_OVERALL_BEST_None_permitted|
                     (= |0_FAILED-EDGE_R1_R2| 0))
                (ite true a!3 (not |0_R2_BGP_SINGLE-EXPORT__permitted|))
                (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))
  (or a!4 a!4))))))
(assert (let ((a!1 (ite (and (= |0_R1_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x2a2a2a00 #xffffff00)))
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
(let ((a!3 (ite (<= (ite true (+ |0_R1_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))
(let ((a!4 (ite (and true
                     true
                     |0_R1_OVERALL_BEST_None_permitted|
                     (= |0_FAILED-EDGE_R1_R2| 0))
                (ite true a!3 (not |0_R1_BGP_SINGLE-EXPORT__permitted|))
                (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))
  (or a!4 a!4))))))
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
        |0__R2_Loopback0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R2_Loopback0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Serial0|)
        |0__R2_Serial0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R2_Serial0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Serial0|)
        |0__R1_Serial0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R1_Serial0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback1|)
        |0__R1_Loopback1_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R1_Loopback1|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback0|)
        |0__R1_Loopback0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R1_Loopback0|))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_routerID| 0)))
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
(assert (or false (= (bvand |0_dst-ip| #xffffffff) (bvand #x7a7a1601 #xffffffff))))
(assert (or false (= (bvand |0_src-ip| #xffffffff) (bvand #xc0a82a02 #xffffffff))))
(assert (= |0__reachable_R2| (> |0__reachable-id_R2| 0)))
(assert (>= |0__reachable-id_R2| 0))
(assert (= |0__reachable_R1| (> |0__reachable-id_R1| 0)))
(assert (>= |0__reachable-id_R1| 0))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_R2_Serial0|
                         |0__R1_Serial0_INBOUND_SOFTAdd|
                         (> |0__reachable-id_R1| 0))
                    (> |0__reachable-id_R2| |0__reachable-id_R1|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_R2_Serial0|
                         |0__R1_Serial0_INBOUND_SOFTAdd|
                         (> |0__reachable-id_R1| 0)))
                a!1
                (= |0__reachable-id_R2| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_R2_Loopback0| true)
           false
           (and |0_R2_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x45454501))
           (and |0_R2_OVERALL_BEST_None_permitted| (= |0_dst-ip| #xc0a82a02)))
       (= |0__reachable-id_R2| 1)
       a!2))))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_R1_Serial0|
                         |0__R2_Serial0_INBOUND_SOFTAdd|
                         (> |0__reachable-id_R2| 0))
                    (> |0__reachable-id_R1| |0__reachable-id_R2|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_R1_Serial0|
                         |0__R2_Serial0_INBOUND_SOFTAdd|
                         (> |0__reachable-id_R2| 0)))
                a!1
                (= |0__reachable-id_R1| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_R1_Loopback1| true)
           (and |0_DATA-FORWARDING_R1_Loopback0| true)
           false
           (and |0_R1_OVERALL_BEST_None_permitted| (= |0_dst-ip| #xc0a82a01))
           (and |0_R1_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x16161601))
           (and |0_R1_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x2a2a2a01)))
       (= |0__reachable-id_R1| 1)
       a!2))))
(assert (and true |0__reachable_R2| |0__reachable_R1|))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (= |0_FAILED-EDGE_R1_Loopback1| 0))
(assert (= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert-soft |0__R2_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R2_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R1_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R1_Loopback1_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R1_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R2_Loopback0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R2_Serial0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R1_Serial0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R1_Loopback1_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R1_Loopback0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft (not |0_R2_OVERALL_BEST_NoneBGPExportAddSoft|) :weight 1 :id BGPExportAdd)
(assert-soft (not |0_R1_OVERALL_BEST_NoneBGPExportAddSoft|) :weight 1 :id BGPExportAdd)
(assert-soft (let ((a!1 (ite (and (= |0_R2_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x45454500 #xffffff00)))
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
(let ((a!3 (ite (<= (ite true (+ |0_R2_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))
(let ((a!4 (ite (and true
                     true
                     |0_R2_OVERALL_BEST_None_permitted|
                     (= |0_FAILED-EDGE_R1_R2| 0))
                (ite true a!3 (not |0_R2_BGP_SINGLE-EXPORT__permitted|))
                (not |0_R2_BGP_SINGLE-EXPORT__permitted|))))
  (or a!4 (not a!4)))))) :weight 1 :id exportIPSoft)
(assert-soft (let ((a!1 (ite (and (= |0_R1_OVERALL_BEST_None_prefixLength| 24)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x2a2a2a00 #xffffff00)))
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
(let ((a!3 (ite (<= (ite true (+ |0_R1_OVERALL_BEST_None_metric| 1) 1) 255)
                a!2
                (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))
(let ((a!4 (ite (and true
                     true
                     |0_R1_OVERALL_BEST_None_permitted|
                     (= |0_FAILED-EDGE_R1_R2| 0))
                (ite true a!3 (not |0_R1_BGP_SINGLE-EXPORT__permitted|))
                (not |0_R1_BGP_SINGLE-EXPORT__permitted|))))
  (or a!4 (not a!4)))))) :weight 1 :id exportIPSoft)
(check-sat)
