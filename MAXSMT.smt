(declare-fun |0_FAILED-EDGE_A_B| () Int)
(declare-fun |0_FAILED-EDGE_A_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_B_GigabitEthernet0/3| () Int)
(declare-fun |0_FAILED-EDGE_A_GigabitEthernet0/4| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_A_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_A_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_B_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_B_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| () Int)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_B_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_choice| () Bool)
(declare-fun |0_A_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/4| () Bool)
(declare-fun |0_CONTROL-FORWARDING_A_GigabitEthernet0/1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/3| () Bool)
(declare-fun |0_CONTROL-FORWARDING_B_GigabitEthernet0/1| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/3| () Bool)
(declare-fun |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_A_GigabitEthernet0/4| () Bool)
(declare-fun |0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| () Bool)
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
(declare-fun |0_DATA-FORWARDING_B_GigabitEthernet0/3| () Bool)
(declare-fun |0__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_src-ip| () (_ BitVec 32))
(declare-fun |0__reachable-id_A| () Int)
(declare-fun |0__reachable_A| () Bool)
(declare-fun |0__reachable-id_B| () Int)
(declare-fun |0__reachable_B| () Bool)
(declare-fun |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__A_GigabitEthernet0/4_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__B_GigabitEthernet0/3_INBOUND_SOFTAdd| () Bool)
(assert (>= |0_FAILED-EDGE_A_B| 0))
(assert (<= |0_FAILED-EDGE_A_B| 1))
(assert (>= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_A_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_B_GigabitEthernet0/3| 0))
(assert (<= |0_FAILED-EDGE_B_GigabitEthernet0/3| 1))
(assert (>= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
(assert (<= |0_FAILED-EDGE_A_GigabitEthernet0/4| 1))
(assert (= |0_FAILED-EDGE_A_B| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_B_GigabitEthernet0/3| 0))
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
(assert (>= |0_A_OVERALL_BEST_None_metric| 0))
(assert (< |0_A_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_A_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_A_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_B_OVERALL_BEST_None_metric| 0))
(assert (< |0_B_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_B_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_B_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0))
(assert (<= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 32))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xff000000) (bvand #x6a000000 #xff000000))
          (= |0_FAILED-EDGE_B_GigabitEthernet0/3| 0))
     (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
          (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 8)
          true
          true
          true)
     (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)))
(assert (=> |0_B_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (and true
                (or (< |0_B_OVERALL_BEST_None_metric| 0)
                    (and (= |0_B_OVERALL_BEST_None_metric| 0) a!2)))))
(let ((a!4 (and (= |0_B_OVERALL_BEST_None_prefixLength|
                   |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                (or false (and true (or false a!3))))))
  (=> |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
      (or (> |0_B_OVERALL_BEST_None_prefixLength|
             |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
          a!4)))))))
(assert (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
   |0_B_OVERALL_BEST_None_permitted|))
(assert (=> |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
    (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         true
         true
         (= |0_B_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         true
         true
         true
         true
         true)))
(assert (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
   (and |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|
        (= |0_B_OVERALL_BEST_None_prefixLength|
           |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
        true
        true
        (= |0_B_OVERALL_BEST_None_metric| 0)
        true
        true
        true
        true
        true
        true
        true
        true
        true)))
(assert (not |0_A_OVERALL_BEST_None_permitted|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|))
(assert (not |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|))
(assert (=> (and (not (= |0_dst-ip| #x6a000203))
         |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
         (= |0_B_OVERALL_BEST_None_prefixLength|
            |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
         true
         true
         (= |0_B_OVERALL_BEST_None_metric| 0)
         true
         true
         true
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_B_GigabitEthernet0/3|))
(assert (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x6a000203))
                     |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_choice|
                     (= |0_B_OVERALL_BEST_None_prefixLength|
                        |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength|)
                     true
                     true
                     (= |0_B_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_B_GigabitEthernet0/3|))))
(assert (= (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/3|)
        |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/3|))
(assert (= (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/4|)
        |0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/4|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_A_GigabitEthernet0/1|)
            |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
       |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|)
   |0_DATA-FORWARDING_A_GigabitEthernet0/1|))
(assert (= (or (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/1|)
            |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd|)
       |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|)
   |0_DATA-FORWARDING_B_GigabitEthernet0/1|))
(assert (= (and (or false |0_CONTROL-FORWARDING_B_GigabitEthernet0/3|)
        |0__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_B_GigabitEthernet0/3|))
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
(assert (=> (not |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_permitted|)
    (= |0_B_CONNECTED_IMPORT_GigabitEthernet0/3_prefixLength| 0)))
(assert (or false (= (bvand |0_dst-ip| #xffffffff) (bvand #x6a000203 #xffffffff))))
(assert (or false (= (bvand |0_src-ip| #xffffffff) (bvand #x69000104 #xffffffff))))
(assert (= |0__reachable_A| (> |0__reachable-id_A| 0)))
(assert (>= |0__reachable-id_A| 0))
(assert (= |0__reachable_B| (> |0__reachable-id_B| 0)))
(assert (>= |0__reachable-id_B| 0))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_A_GigabitEthernet0/1|
                         |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_B| 0))
                    (> |0__reachable-id_A| |0__reachable-id_B|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_A_GigabitEthernet0/1|
                         |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_B| 0)))
                a!1
                (= |0__reachable-id_A| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_A_GigabitEthernet0/3| true)
           (and |0_DATA-FORWARDING_A_GigabitEthernet0/4| true)
           false)
       (= |0__reachable-id_A| 1)
       a!2))))
(assert (let ((a!1 (and true
                (=> (and |0_DATA-FORWARDING_B_GigabitEthernet0/1|
                         |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_A| 0))
                    (> |0__reachable-id_B| |0__reachable-id_A|)))))
(let ((a!2 (ite (or false
                    (and |0_DATA-FORWARDING_B_GigabitEthernet0/1|
                         |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd|
                         (> |0__reachable-id_A| 0)))
                a!1
                (= |0__reachable-id_B| 0))))
  (ite (or false
           (and |0_DATA-FORWARDING_B_GigabitEthernet0/3| true)
           false
           (and |0_B_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x01000201))
           (and |0_B_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x6a000203)))
       (= |0__reachable-id_B| 1)
       a!2))))
(assert (and true |0__reachable_A| |0__reachable_B|))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/3| 0))
(assert (= |0_FAILED-EDGE_A_GigabitEthernet0/4| 0))
(assert (=> (= (bvand |0_dst-ip| #xffff0000) (bvand #x01000000 #xffff0000))
    (= |0_FAILED-EDGE_A_B| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffff0000) (bvand #x01000000 #xffff0000))
    (= |0_FAILED-EDGE_A_B| 0)))
(assert (= |0_FAILED-EDGE_B_GigabitEthernet0/3| 0))
(assert-soft |0__A_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/4_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/4_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/1_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__A_GigabitEthernet0/1_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/1_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/1_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/3_OUTBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft |0__B_GigabitEthernet0/3_INBOUND_SOFTAdd| :weight 10 :id a)
(assert-soft (not |A-StaticRouteAdd-A,GigabitEthernet0/1 --> B,GigabitEthernet0/1|) :weight 2 :id a)
(assert-soft (not |B-StaticRouteAdd-B,GigabitEthernet0/1 --> A,GigabitEthernet0/1|) :weight 2 :id a)
(check-sat)
