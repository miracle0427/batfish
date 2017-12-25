(declare-fun |0_FAILED-EDGE_R2_Serial1| () Int)
(declare-fun |0_FAILED-EDGE_R2_Loopback0| () Int)
(declare-fun |0_FAILED-EDGE_R1_R2| () Int)
(declare-fun |0_FAILED-EDGE_R1_Loopback0| () Int)
(declare-fun |0_dst-port| () Int)
(declare-fun |0_src-port| () Int)
(declare-fun |0_icmp-type| () Int)
(declare-fun |0_ip-protocol| () Int)
(declare-fun |0_icmp-code| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R2_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_OSPF_BEST_None_adminDist| () Int)
(declare-fun |0_R2_OSPF_BEST_None_metric| () Int)
(declare-fun |0_R2_OSPF_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_CONNECTED_BEST_None_prefixLength| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_adminDist| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_metric| () Int)
(declare-fun |0_R1_OVERALL_BEST_None_prefixLength| () Int)
(declare-fun |0_R2_OSPF_Redistributed_adminDist| () Int)
(declare-fun |0_R2_OSPF_Redistributed_metric| () Int)
(declare-fun |0_R2_OSPF_Redistributed_prefixLength| () Int)
(declare-fun |0_R2_OSPF_SINGLE-EXPORT__adminDist| () Int)
(declare-fun |0_R2_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R2_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R2_OSPF_IMPORT_Serial0_adminDist| () Int)
(declare-fun |0_R2_OSPF_IMPORT_Serial0_metric| () Int)
(declare-fun |0_R2_OSPF_IMPORT_Serial0_prefixLength| () Int)
(declare-fun |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength| () Int)
(declare-fun |0_R1_OSPF_SINGLE-EXPORT__adminDist| () Int)
(declare-fun |0_R1_OSPF_SINGLE-EXPORT__metric| () Int)
(declare-fun |0_R1_OSPF_SINGLE-EXPORT__prefixLength| () Int)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_adminDist| () Int)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_metric| () Int)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_prefixLength| () Int)
(declare-fun |0_R2_OSPF_IMPORT_Serial0_permitted| () Bool)
(declare-fun |0_R1_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2))
(declare-fun |0_R2_OSPF_IMPORT_Serial0_ospfType| () (_ BitVec 2))
(declare-fun |0_R1_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_R2_OSPF_Redistributed_permitted| () Bool)
(declare-fun |0_R2_OVERALL_BEST_None_ospfType| () (_ BitVec 2))
(declare-fun |0_R2_OVERALL_BEST_None_history| () (_ BitVec 1))
(declare-fun |0_R2_OSPF_Redistributed_ospfType| () (_ BitVec 2))
(declare-fun |0_R2_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R2_OSPF_SINGLE-EXPORT__permitted| () Bool)
(declare-fun |0_R2_OSPF_SINGLE-EXPORT__ospfType| () (_ BitVec 2))
(declare-fun R2OSPFSoftRedisRemove () Bool)
(declare-fun |0_R2_OSPF_BEST_None_ospfType| () (_ BitVec 2))
(declare-fun |0_R2_OSPF_BEST_None_permitted| () Bool)
(declare-fun |0_dst-ip| () (_ BitVec 32))
(declare-fun |0_R2_CONNECTED_IMPORT_Loopback0_permitted| () Bool)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_permitted| () Bool)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_ospfType| () (_ BitVec 2))
(declare-fun |0_R1_OVERALL_BEST_None_ospfType| () (_ BitVec 2))
(declare-fun |0_R1_OVERALL_BEST_None_permitted| () Bool)
(declare-fun |0_R2_CONNECTED_BEST_None_permitted| () Bool)
(declare-fun |0_R2_OSPF_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_R2_CONNECTED_IMPORT_Loopback0_choice| () Bool)
(declare-fun |0_R1_OSPF_IMPORT_Serial0_choice| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R2_Serial1| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0_CONTROL-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial1| () Bool)
(declare-fun |0__R2_Serial1_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Loopback0| () Bool)
(declare-fun |0__R2_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R2_Serial0| () Bool)
(declare-fun |0__R2_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Serial0| () Bool)
(declare-fun |0__R1_Serial0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_DATA-FORWARDING_R1_Loopback0| () Bool)
(declare-fun |0__R1_Loopback0_OUTBOUND_SOFTAdd| () Bool)
(declare-fun |0_src-ip| () (_ BitVec 32))
(declare-fun |0__reachable-id_R2| () Int)
(declare-fun |0__reachable_R2| () Bool)
(declare-fun |0__reachable-id_R1| () Int)
(declare-fun |0__reachable_R1| () Bool)
(declare-fun |0__R1_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R2_Serial0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R2_Serial1_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R2_Loopback0_INBOUND_SOFTAdd| () Bool)
(declare-fun |0__R1_Loopback0_INBOUND_SOFTAdd| () Bool)
(assert (>= |0_FAILED-EDGE_R2_Serial1| 0))
(assert (<= |0_FAILED-EDGE_R2_Serial1| 1))
(assert (>= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R2_Loopback0| 1))
(assert (>= |0_FAILED-EDGE_R1_R2| 0))
(assert (<= |0_FAILED-EDGE_R1_R2| 1))
(assert (>= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert (<= |0_FAILED-EDGE_R1_Loopback0| 1))
(assert (= |0_FAILED-EDGE_R2_Serial1| 0))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
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
(assert (>= |0_R2_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_R2_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_R2_OVERALL_BEST_None_metric| 0))
(assert (< |0_R2_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R2_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R2_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R2_OSPF_BEST_None_adminDist| 0))
(assert (< |0_R2_OSPF_BEST_None_adminDist| 256))
(assert (>= |0_R2_OSPF_BEST_None_metric| 0))
(assert (< |0_R2_OSPF_BEST_None_metric| 65536))
(assert (>= |0_R2_OSPF_BEST_None_prefixLength| 0))
(assert (<= |0_R2_OSPF_BEST_None_prefixLength| 32))
(assert (>= |0_R2_CONNECTED_BEST_None_prefixLength| 0))
(assert (<= |0_R2_CONNECTED_BEST_None_prefixLength| 32))
(assert (>= |0_R1_OVERALL_BEST_None_adminDist| 0))
(assert (< |0_R1_OVERALL_BEST_None_adminDist| 256))
(assert (>= |0_R1_OVERALL_BEST_None_metric| 0))
(assert (< |0_R1_OVERALL_BEST_None_metric| 65536))
(assert (>= |0_R1_OVERALL_BEST_None_prefixLength| 0))
(assert (<= |0_R1_OVERALL_BEST_None_prefixLength| 32))
(assert (>= |0_R2_OSPF_Redistributed_adminDist| 0))
(assert (< |0_R2_OSPF_Redistributed_adminDist| 256))
(assert (>= |0_R2_OSPF_Redistributed_metric| 0))
(assert (< |0_R2_OSPF_Redistributed_metric| 65536))
(assert (>= |0_R2_OSPF_Redistributed_prefixLength| 0))
(assert (<= |0_R2_OSPF_Redistributed_prefixLength| 32))
(assert (>= |0_R2_OSPF_SINGLE-EXPORT__adminDist| 0))
(assert (< |0_R2_OSPF_SINGLE-EXPORT__adminDist| 256))
(assert (>= |0_R2_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_R2_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R2_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R2_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_R2_OSPF_IMPORT_Serial0_adminDist| 0))
(assert (< |0_R2_OSPF_IMPORT_Serial0_adminDist| 256))
(assert (>= |0_R2_OSPF_IMPORT_Serial0_metric| 0))
(assert (< |0_R2_OSPF_IMPORT_Serial0_metric| 65536))
(assert (>= |0_R2_OSPF_IMPORT_Serial0_prefixLength| 0))
(assert (<= |0_R2_OSPF_IMPORT_Serial0_prefixLength| 32))
(assert (>= |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength| 0))
(assert (<= |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength| 32))
(assert (>= |0_R1_OSPF_SINGLE-EXPORT__adminDist| 0))
(assert (< |0_R1_OSPF_SINGLE-EXPORT__adminDist| 256))
(assert (>= |0_R1_OSPF_SINGLE-EXPORT__metric| 0))
(assert (< |0_R1_OSPF_SINGLE-EXPORT__metric| 65536))
(assert (>= |0_R1_OSPF_SINGLE-EXPORT__prefixLength| 0))
(assert (<= |0_R1_OSPF_SINGLE-EXPORT__prefixLength| 32))
(assert (>= |0_R1_OSPF_IMPORT_Serial0_adminDist| 0))
(assert (< |0_R1_OSPF_IMPORT_Serial0_adminDist| 256))
(assert (>= |0_R1_OSPF_IMPORT_Serial0_metric| 0))
(assert (< |0_R1_OSPF_IMPORT_Serial0_metric| 65536))
(assert (>= |0_R1_OSPF_IMPORT_Serial0_prefixLength| 0))
(assert (<= |0_R1_OSPF_IMPORT_Serial0_prefixLength| 32))
(assert (let ((a!1 (ite (<= (+ |0_R1_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_R2_OSPF_IMPORT_Serial0_permitted|
                        |0_R1_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_R2_OSPF_IMPORT_Serial0_prefixLength|
                        |0_R1_OSPF_SINGLE-EXPORT__prefixLength|)
                     (= |0_R2_OSPF_IMPORT_Serial0_adminDist|
                        |0_R1_OSPF_SINGLE-EXPORT__adminDist|)
                     true
                     true
                     (= |0_R2_OSPF_IMPORT_Serial0_metric|
                        (+ |0_R1_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     (= |0_R2_OSPF_IMPORT_Serial0_ospfType|
                        |0_R1_OSPF_SINGLE-EXPORT__ospfType|)
                     true
                     true
                     true
                     true
                     true)
                (not |0_R2_OSPF_IMPORT_Serial0_permitted|))))
  (ite (and (not false)
            true
            true
            |0_R1_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_R1_R2| 0))
       (ite true a!1 (not |0_R2_OSPF_IMPORT_Serial0_permitted|))
       (not |0_R2_OSPF_IMPORT_Serial0_permitted|))))
(assert (let ((a!1 (ite (= |0_R2_OVERALL_BEST_None_history| #b0)
                |0_R2_OVERALL_BEST_None_metric|
                (ite (= |0_R2_OVERALL_BEST_None_history| #b1) 10 20)))
      (a!2 (= |0_R2_OSPF_Redistributed_ospfType|
              (ite (= |0_R2_OVERALL_BEST_None_history| #b0)
                   |0_R2_OVERALL_BEST_None_ospfType|
                   (ite (= |0_R2_OVERALL_BEST_None_history| #b1)
                        #b11
                        |0_R2_OVERALL_BEST_None_ospfType|)))))
  (ite (or (= |0_R2_OVERALL_BEST_None_history| #b0)
           (= |0_R2_OVERALL_BEST_None_history| #b1))
       (ite (<= a!1 65535)
            (and (= |0_R2_OSPF_Redistributed_permitted|
                    |0_R2_OVERALL_BEST_None_permitted|)
                 (= |0_R2_OSPF_Redistributed_prefixLength|
                    |0_R2_OVERALL_BEST_None_prefixLength|)
                 (= |0_R2_OSPF_Redistributed_adminDist|
                    |0_R2_OVERALL_BEST_None_adminDist|)
                 true
                 true
                 (= |0_R2_OSPF_Redistributed_metric| a!1)
                 true
                 true
                 a!2
                 true
                 true
                 true
                 true
                 true)
            (not |0_R2_OSPF_Redistributed_permitted|))
       (not |0_R2_OSPF_Redistributed_permitted|))))
(assert (let ((a!1 (and |0_R2_OSPF_Redistributed_permitted|
                (or (> |0_R2_OSPF_Redistributed_prefixLength| 24)
                    (and (= |0_R2_OSPF_Redistributed_prefixLength| 24)
                         (< |0_R2_OSPF_Redistributed_adminDist| 110)))))
      (a!2 (and |0_R2_OSPF_SINGLE-EXPORT__permitted|
                true
                (= |0_R2_OSPF_SINGLE-EXPORT__adminDist| 110)
                (= |0_R2_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_R2_OSPF_SINGLE-EXPORT__prefixLength| 24)
                (= |0_R2_OSPF_SINGLE-EXPORT__ospfType| #b00)
                true
                true
                true
                true))
      (a!3 (and true
                (or (bvult |0_R2_OSPF_Redistributed_ospfType|
                           |0_R2_OSPF_BEST_None_ospfType|)
                    (and (= |0_R2_OSPF_Redistributed_ospfType|
                            |0_R2_OSPF_BEST_None_ospfType|)
                         true))))
      (a!8 (ite true
                (ite (<= |0_R2_OSPF_BEST_None_metric| 65535)
                     (and (= |0_R2_OSPF_SINGLE-EXPORT__permitted|
                             |0_R2_OSPF_BEST_None_permitted|)
                          (= |0_R2_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_R2_OSPF_BEST_None_prefixLength|)
                          (= |0_R2_OSPF_SINGLE-EXPORT__adminDist|
                             |0_R2_OSPF_BEST_None_adminDist|)
                          true
                          true
                          (= |0_R2_OSPF_SINGLE-EXPORT__metric|
                             |0_R2_OSPF_BEST_None_metric|)
                          true
                          true
                          (= |0_R2_OSPF_SINGLE-EXPORT__ospfType|
                             |0_R2_OSPF_BEST_None_ospfType|)
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!4 (and true (or false (and true (or false a!3))))))
(let ((a!5 (and true
                (or (< |0_R2_OSPF_Redistributed_metric|
                       |0_R2_OSPF_BEST_None_metric|)
                    (and (= |0_R2_OSPF_Redistributed_metric|
                            |0_R2_OSPF_BEST_None_metric|)
                         (or false a!4))))))
(let ((a!6 (and (= |0_R2_OSPF_Redistributed_prefixLength|
                   |0_R2_OSPF_BEST_None_prefixLength|)
                (or (< |0_R2_OSPF_Redistributed_adminDist|
                       |0_R2_OSPF_BEST_None_adminDist|)
                    (and (= |0_R2_OSPF_Redistributed_adminDist|
                            |0_R2_OSPF_BEST_None_adminDist|)
                         (or false a!5))))))
(let ((a!7 (not (and |0_R2_OSPF_Redistributed_permitted|
                     (or (> |0_R2_OSPF_Redistributed_prefixLength|
                            |0_R2_OSPF_BEST_None_prefixLength|)
                         a!6)))))
(let ((a!9 (ite (and |0_R2_OSPF_BEST_None_permitted| a!7)
                (ite (and (and true true)
                          true
                          |0_R2_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0))
                     a!8
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                (ite (and (and true true)
                          true
                          |0_R2_OSPF_Redistributed_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0)
                          R2OSPFSoftRedisRemove)
                     (and (= |0_R2_OSPF_Redistributed_prefixLength|
                             |0_R2_OSPF_SINGLE-EXPORT__prefixLength|)
                          (= |0_R2_OSPF_Redistributed_adminDist|
                             |0_R2_OSPF_SINGLE-EXPORT__adminDist|)
                          true
                          (= |0_R2_OSPF_Redistributed_metric|
                             |0_R2_OSPF_SINGLE-EXPORT__metric|)
                          true
                          true
                          (= |0_R2_OSPF_Redistributed_ospfType|
                             |0_R2_OSPF_SINGLE-EXPORT__ospfType|)
                          true
                          true
                          true
                          true
                          true
                          true
                          (= |0_R2_OSPF_Redistributed_permitted|
                             |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!10 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #xc0a82a00 #xffffff00))
                      (not a!1))
                 a!2
                 a!9)))
(let ((a!11 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #xb4000000 #xffffff00))
                      (not a!1))
                 a!2
                 a!10)))
(let ((a!12 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #x45454500 #xffffff00))
                      (not a!1))
                 a!2
                 a!11)))
  (or a!10 a!12)))))))))))
(assert (ite (and true
          (= (bvand |0_dst-ip| #xffffff00) (bvand #x45454500 #xffffff00))
          (= |0_FAILED-EDGE_R2_Loopback0| 0))
     (and |0_R2_CONNECTED_IMPORT_Loopback0_permitted|
          (= |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength| 24)
          true
          true
          true)
     (not |0_R2_CONNECTED_IMPORT_Loopback0_permitted|)))
(assert (let ((a!1 (ite (<= (+ |0_R2_OSPF_SINGLE-EXPORT__metric| 1) 65535)
                (and (= |0_R1_OSPF_IMPORT_Serial0_permitted|
                        |0_R2_OSPF_SINGLE-EXPORT__permitted|)
                     (= |0_R1_OSPF_IMPORT_Serial0_prefixLength|
                        |0_R2_OSPF_SINGLE-EXPORT__prefixLength|)
                     (= |0_R1_OSPF_IMPORT_Serial0_adminDist|
                        |0_R2_OSPF_SINGLE-EXPORT__adminDist|)
                     true
                     true
                     (= |0_R1_OSPF_IMPORT_Serial0_metric|
                        (+ |0_R2_OSPF_SINGLE-EXPORT__metric| 1))
                     true
                     true
                     (= |0_R1_OSPF_IMPORT_Serial0_ospfType|
                        |0_R2_OSPF_SINGLE-EXPORT__ospfType|)
                     true
                     true
                     true
                     true
                     true)
                (not |0_R1_OSPF_IMPORT_Serial0_permitted|))))
  (ite (and (not false)
            true
            true
            |0_R2_OSPF_SINGLE-EXPORT__permitted|
            (= |0_FAILED-EDGE_R1_R2| 0))
       (ite true a!1 (not |0_R1_OSPF_IMPORT_Serial0_permitted|))
       (not |0_R1_OSPF_IMPORT_Serial0_permitted|))))
(assert (let ((a!1 (and |0_R1_OSPF_SINGLE-EXPORT__permitted|
                true
                (= |0_R1_OSPF_SINGLE-EXPORT__adminDist| 110)
                (= |0_R1_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_R1_OSPF_SINGLE-EXPORT__prefixLength| 24)
                (= |0_R1_OSPF_SINGLE-EXPORT__ospfType| #b00)
                true
                true
                true
                true))
      (a!2 (ite true
                (ite (<= |0_R1_OVERALL_BEST_None_metric| 65535)
                     (and (= |0_R1_OSPF_SINGLE-EXPORT__permitted|
                             |0_R1_OVERALL_BEST_None_permitted|)
                          (= |0_R1_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_R1_OVERALL_BEST_None_prefixLength|)
                          (= |0_R1_OSPF_SINGLE-EXPORT__adminDist|
                             |0_R1_OVERALL_BEST_None_adminDist|)
                          true
                          true
                          (= |0_R1_OSPF_SINGLE-EXPORT__metric|
                             |0_R1_OVERALL_BEST_None_metric|)
                          true
                          true
                          (= |0_R1_OSPF_SINGLE-EXPORT__ospfType|
                             |0_R1_OVERALL_BEST_None_ospfType|)
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R1_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_R1_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #xc0a82a00 #xffffff00)))
                a!1
                (ite (and (and true true)
                          true
                          |0_R1_OVERALL_BEST_None_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0))
                     a!2
                     (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x46464600 #xffffff00)))
                a!1
                a!3)))
  (or a!4 a!4)))))
(assert (=> |0_R1_OVERALL_BEST_None_permitted| true))
(assert (let ((a!1 (and true
                (or (bvult |0_R2_OSPF_BEST_None_ospfType|
                           |0_R2_OSPF_IMPORT_Serial0_ospfType|)
                    (and (= |0_R2_OSPF_BEST_None_ospfType|
                            |0_R2_OSPF_IMPORT_Serial0_ospfType|)
                         true)))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R2_OSPF_BEST_None_metric|
                       |0_R2_OSPF_IMPORT_Serial0_metric|)
                    (and (= |0_R2_OSPF_BEST_None_metric|
                            |0_R2_OSPF_IMPORT_Serial0_metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_R2_OSPF_BEST_None_prefixLength|
                   |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
                (or (< |0_R2_OSPF_BEST_None_adminDist|
                       |0_R2_OSPF_IMPORT_Serial0_adminDist|)
                    (and (= |0_R2_OSPF_BEST_None_adminDist|
                            |0_R2_OSPF_IMPORT_Serial0_adminDist|)
                         (or false a!3))))))
  (=> |0_R2_OSPF_IMPORT_Serial0_permitted|
      (or (> |0_R2_OSPF_BEST_None_prefixLength|
             |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
          a!4)))))))
(assert (= |0_R2_OSPF_IMPORT_Serial0_permitted| |0_R2_OSPF_BEST_None_permitted|))
(assert (=> |0_R2_OSPF_IMPORT_Serial0_permitted|
    (and |0_R2_OSPF_IMPORT_Serial0_permitted|
         (= |0_R2_OSPF_BEST_None_prefixLength|
            |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
         (= |0_R2_OSPF_BEST_None_adminDist|
            |0_R2_OSPF_IMPORT_Serial0_adminDist|)
         true
         (= |0_R2_OSPF_BEST_None_metric| |0_R2_OSPF_IMPORT_Serial0_metric|)
         true
         true
         (= |0_R2_OSPF_BEST_None_ospfType| |0_R2_OSPF_IMPORT_Serial0_ospfType|)
         true
         true
         true
         true
         true
         true)))
(assert (let ((a!1 (or false (and true (or false (and true true))))))
(let ((a!2 (or false (and true (or false (and true a!1))))))
(let ((a!3 (or false (and true (or false (and true a!2))))))
(let ((a!4 (or (> |0_R2_CONNECTED_BEST_None_prefixLength|
                  |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
               (and (= |0_R2_CONNECTED_BEST_None_prefixLength|
                       |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
                    (or false (and true a!3))))))
  (=> |0_R2_CONNECTED_IMPORT_Loopback0_permitted| a!4))))))
(assert (= |0_R2_CONNECTED_IMPORT_Loopback0_permitted|
   |0_R2_CONNECTED_BEST_None_permitted|))
(assert (=> |0_R2_CONNECTED_IMPORT_Loopback0_permitted|
    (and |0_R2_CONNECTED_IMPORT_Loopback0_permitted|
         (= |0_R2_CONNECTED_BEST_None_prefixLength|
            |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
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
                (or (bvult |0_R1_OVERALL_BEST_None_ospfType|
                           |0_R1_OSPF_IMPORT_Serial0_ospfType|)
                    (and (= |0_R1_OVERALL_BEST_None_ospfType|
                            |0_R1_OSPF_IMPORT_Serial0_ospfType|)
                         true)))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R1_OVERALL_BEST_None_metric|
                       |0_R1_OSPF_IMPORT_Serial0_metric|)
                    (and (= |0_R1_OVERALL_BEST_None_metric|
                            |0_R1_OSPF_IMPORT_Serial0_metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_R1_OVERALL_BEST_None_prefixLength|
                   |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
                (or (< |0_R1_OVERALL_BEST_None_adminDist|
                       |0_R1_OSPF_IMPORT_Serial0_adminDist|)
                    (and (= |0_R1_OVERALL_BEST_None_adminDist|
                            |0_R1_OSPF_IMPORT_Serial0_adminDist|)
                         (or false a!3))))))
  (=> |0_R1_OSPF_IMPORT_Serial0_permitted|
      (or (> |0_R1_OVERALL_BEST_None_prefixLength|
             |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
          a!4)))))))
(assert (= |0_R1_OSPF_IMPORT_Serial0_permitted| |0_R1_OVERALL_BEST_None_permitted|))
(assert (=> |0_R1_OSPF_IMPORT_Serial0_permitted|
    (and |0_R1_OSPF_IMPORT_Serial0_permitted|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
         (= |0_R1_OVERALL_BEST_None_adminDist|
            |0_R1_OSPF_IMPORT_Serial0_adminDist|)
         true
         (= |0_R1_OVERALL_BEST_None_metric| |0_R1_OSPF_IMPORT_Serial0_metric|)
         true
         true
         (= |0_R1_OVERALL_BEST_None_ospfType|
            |0_R1_OSPF_IMPORT_Serial0_ospfType|)
         true
         true
         true
         true
         true
         true)))
(assert (= |0_R2_OSPF_IMPORT_Serial0_choice|
   (and |0_R2_OSPF_IMPORT_Serial0_permitted|
        (= |0_R2_OSPF_BEST_None_prefixLength|
           |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
        (= |0_R2_OSPF_BEST_None_adminDist| |0_R2_OSPF_IMPORT_Serial0_adminDist|)
        true
        (= |0_R2_OSPF_BEST_None_metric| |0_R2_OSPF_IMPORT_Serial0_metric|)
        true
        true
        (= |0_R2_OSPF_BEST_None_ospfType| |0_R2_OSPF_IMPORT_Serial0_ospfType|)
        true
        true
        true
        true
        true
        true)))
(assert (= |0_R2_CONNECTED_IMPORT_Loopback0_choice|
   (and |0_R2_CONNECTED_IMPORT_Loopback0_permitted|
        (= |0_R2_CONNECTED_BEST_None_prefixLength|
           |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
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
(assert (= |0_R1_OSPF_IMPORT_Serial0_choice|
   (and |0_R1_OSPF_IMPORT_Serial0_permitted|
        (= |0_R1_OVERALL_BEST_None_prefixLength|
           |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
        (= |0_R1_OVERALL_BEST_None_adminDist|
           |0_R1_OSPF_IMPORT_Serial0_adminDist|)
        true
        (= |0_R1_OVERALL_BEST_None_metric| |0_R1_OSPF_IMPORT_Serial0_metric|)
        true
        true
        (= |0_R1_OVERALL_BEST_None_ospfType|
           |0_R1_OSPF_IMPORT_Serial0_ospfType|)
        true
        true
        true
        true
        true
        true)))
(assert (let ((a!1 (and true
                (or (bvult |0_R2_OVERALL_BEST_None_ospfType|
                           |0_R2_OSPF_BEST_None_ospfType|)
                    (and (= |0_R2_OVERALL_BEST_None_ospfType|
                            |0_R2_OSPF_BEST_None_ospfType|)
                         true)))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R2_OVERALL_BEST_None_metric|
                       |0_R2_OSPF_BEST_None_metric|)
                    (and (= |0_R2_OVERALL_BEST_None_metric|
                            |0_R2_OSPF_BEST_None_metric|)
                         (or false a!2))))))
(let ((a!4 (and (= |0_R2_OVERALL_BEST_None_prefixLength|
                   |0_R2_OSPF_BEST_None_prefixLength|)
                (or (< |0_R2_OVERALL_BEST_None_adminDist|
                       |0_R2_OSPF_BEST_None_adminDist|)
                    (and (= |0_R2_OVERALL_BEST_None_adminDist|
                            |0_R2_OSPF_BEST_None_adminDist|)
                         (or false a!3))))))
  (=> |0_R2_OSPF_BEST_None_permitted|
      (or (> |0_R2_OVERALL_BEST_None_prefixLength|
             |0_R2_OSPF_BEST_None_prefixLength|)
          a!4)))))))
(assert (let ((a!1 (and true
                (or (bvult |0_R2_OVERALL_BEST_None_ospfType| #b00)
                    (and (= |0_R2_OVERALL_BEST_None_ospfType| #b00) true)))))
(let ((a!2 (and true (or false (and true (or false a!1))))))
(let ((a!3 (and true
                (or (< |0_R2_OVERALL_BEST_None_metric| 0)
                    (and (= |0_R2_OVERALL_BEST_None_metric| 0) (or false a!2))))))
(let ((a!4 (and (= |0_R2_OVERALL_BEST_None_prefixLength|
                   |0_R2_CONNECTED_BEST_None_prefixLength|)
                (or (< |0_R2_OVERALL_BEST_None_adminDist| 0)
                    (and (= |0_R2_OVERALL_BEST_None_adminDist| 0)
                         (or false a!3))))))
  (=> |0_R2_CONNECTED_BEST_None_permitted|
      (or (> |0_R2_OVERALL_BEST_None_prefixLength|
             |0_R2_CONNECTED_BEST_None_prefixLength|)
          a!4)))))))
(assert (= (or |0_R2_OSPF_BEST_None_permitted| |0_R2_CONNECTED_BEST_None_permitted|)
   |0_R2_OVERALL_BEST_None_permitted|))
(assert (=> (or |0_R2_OSPF_BEST_None_permitted| |0_R2_CONNECTED_BEST_None_permitted|)
    (or (and |0_R2_OSPF_BEST_None_permitted|
             (= |0_R2_OVERALL_BEST_None_prefixLength|
                |0_R2_OSPF_BEST_None_prefixLength|)
             (= |0_R2_OVERALL_BEST_None_adminDist|
                |0_R2_OSPF_BEST_None_adminDist|)
             true
             (= |0_R2_OVERALL_BEST_None_metric| |0_R2_OSPF_BEST_None_metric|)
             true
             true
             (= |0_R2_OVERALL_BEST_None_ospfType|
                |0_R2_OSPF_BEST_None_ospfType|)
             true
             (= |0_R2_OVERALL_BEST_None_history| #b0)
             true
             true
             true
             true)
        (and |0_R2_CONNECTED_BEST_None_permitted|
             (= |0_R2_OVERALL_BEST_None_prefixLength|
                |0_R2_CONNECTED_BEST_None_prefixLength|)
             (= |0_R2_OVERALL_BEST_None_adminDist| 0)
             true
             (= |0_R2_OVERALL_BEST_None_metric| 0)
             true
             true
             (= |0_R2_OVERALL_BEST_None_ospfType| #b00)
             true
             (= |0_R2_OVERALL_BEST_None_history| #b1)
             true
             true
             true
             true))))
(assert (=> (and true
         |0_R2_OSPF_IMPORT_Serial0_choice|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
         (= |0_R2_OVERALL_BEST_None_adminDist|
            |0_R2_OSPF_IMPORT_Serial0_adminDist|)
         true
         (= |0_R2_OVERALL_BEST_None_metric| |0_R2_OSPF_IMPORT_Serial0_metric|)
         true
         true
         (= |0_R2_OVERALL_BEST_None_ospfType|
            |0_R2_OSPF_IMPORT_Serial0_ospfType|)
         true
         (= |0_R2_OVERALL_BEST_None_history| #b0)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R2_Serial0|))
(assert (=> (and (not (= |0_dst-ip| #x45454501))
         |0_R2_CONNECTED_IMPORT_Loopback0_choice|
         (= |0_R2_OVERALL_BEST_None_prefixLength|
            |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
         (= |0_R2_OVERALL_BEST_None_adminDist| 0)
         true
         (= |0_R2_OVERALL_BEST_None_metric| 0)
         true
         true
         (= |0_R2_OVERALL_BEST_None_ospfType| #b00)
         true
         (= |0_R2_OVERALL_BEST_None_history| #b1)
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R2_Loopback0|))
(assert (not |0_CONTROL-FORWARDING_R2_Serial1|))
(assert (=> (not (and true
              |0_R2_OSPF_IMPORT_Serial0_choice|
              (= |0_R2_OVERALL_BEST_None_prefixLength|
                 |0_R2_OSPF_IMPORT_Serial0_prefixLength|)
              (= |0_R2_OVERALL_BEST_None_adminDist|
                 |0_R2_OSPF_IMPORT_Serial0_adminDist|)
              true
              (= |0_R2_OVERALL_BEST_None_metric|
                 |0_R2_OSPF_IMPORT_Serial0_metric|)
              true
              true
              (= |0_R2_OVERALL_BEST_None_ospfType|
                 |0_R2_OSPF_IMPORT_Serial0_ospfType|)
              true
              (= |0_R2_OVERALL_BEST_None_history| #b0)
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R2_Serial0|)))
(assert (let ((a!1 (not (and (not (= |0_dst-ip| #x45454501))
                     |0_R2_CONNECTED_IMPORT_Loopback0_choice|
                     (= |0_R2_OVERALL_BEST_None_prefixLength|
                        |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength|)
                     (= |0_R2_OVERALL_BEST_None_adminDist| 0)
                     true
                     (= |0_R2_OVERALL_BEST_None_metric| 0)
                     true
                     true
                     (= |0_R2_OVERALL_BEST_None_ospfType| #b00)
                     true
                     (= |0_R2_OVERALL_BEST_None_history| #b1)
                     true
                     true
                     true
                     true))))
  (=> a!1 (not |0_CONTROL-FORWARDING_R2_Loopback0|))))
(assert (=> (and true
         |0_R1_OSPF_IMPORT_Serial0_choice|
         (= |0_R1_OVERALL_BEST_None_prefixLength|
            |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
         (= |0_R1_OVERALL_BEST_None_adminDist|
            |0_R1_OSPF_IMPORT_Serial0_adminDist|)
         true
         (= |0_R1_OVERALL_BEST_None_metric| |0_R1_OSPF_IMPORT_Serial0_metric|)
         true
         true
         (= |0_R1_OVERALL_BEST_None_ospfType|
            |0_R1_OSPF_IMPORT_Serial0_ospfType|)
         true
         true
         true
         true
         true
         true)
    |0_CONTROL-FORWARDING_R1_Serial0|))
(assert (not |0_CONTROL-FORWARDING_R1_Loopback0|))
(assert (=> (not (and true
              |0_R1_OSPF_IMPORT_Serial0_choice|
              (= |0_R1_OVERALL_BEST_None_prefixLength|
                 |0_R1_OSPF_IMPORT_Serial0_prefixLength|)
              (= |0_R1_OVERALL_BEST_None_adminDist|
                 |0_R1_OSPF_IMPORT_Serial0_adminDist|)
              true
              (= |0_R1_OVERALL_BEST_None_metric|
                 |0_R1_OSPF_IMPORT_Serial0_metric|)
              true
              true
              (= |0_R1_OVERALL_BEST_None_ospfType|
                 |0_R1_OSPF_IMPORT_Serial0_ospfType|)
              true
              true
              true
              true
              true
              true))
    (not |0_CONTROL-FORWARDING_R1_Serial0|)))
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Serial1|)
        |0__R2_Serial1_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R2_Serial1|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Loopback0|)
        |0__R2_Loopback0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R2_Loopback0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R2_Serial0|)
        |0__R2_Serial0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R2_Serial0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Serial0|)
        |0__R1_Serial0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R1_Serial0|))
(assert (= (and (or false |0_CONTROL-FORWARDING_R1_Loopback0|)
        |0__R1_Loopback0_OUTBOUND_SOFTAdd|)
   |0_DATA-FORWARDING_R1_Loopback0|))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_ospfType| #b00)))
(assert (=> (not |0_R2_OVERALL_BEST_None_permitted|)
    (= |0_R2_OVERALL_BEST_None_history| #b0)))
(assert (=> (not |0_R2_OSPF_BEST_None_permitted|) (= |0_R2_OSPF_BEST_None_adminDist| 0)))
(assert (=> (not |0_R2_OSPF_BEST_None_permitted|)
    (= |0_R2_OSPF_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R2_OSPF_BEST_None_permitted|) (= |0_R2_OSPF_BEST_None_metric| 0)))
(assert (=> (not |0_R2_OSPF_BEST_None_permitted|)
    (= |0_R2_OSPF_BEST_None_ospfType| #b00)))
(assert (=> (not |0_R2_CONNECTED_BEST_None_permitted|)
    (= |0_R2_CONNECTED_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_adminDist| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_prefixLength| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_metric| 0)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|)
    (= |0_R1_OVERALL_BEST_None_ospfType| #b00)))
(assert (=> (not |0_R1_OVERALL_BEST_None_permitted|) true))
(assert (=> (not |0_R2_OSPF_Redistributed_permitted|)
    (= |0_R2_OSPF_Redistributed_adminDist| 0)))
(assert (=> (not |0_R2_OSPF_Redistributed_permitted|)
    (= |0_R2_OSPF_Redistributed_prefixLength| 0)))
(assert (=> (not |0_R2_OSPF_Redistributed_permitted|)
    (= |0_R2_OSPF_Redistributed_metric| 0)))
(assert (=> (not |0_R2_OSPF_Redistributed_permitted|)
    (= |0_R2_OSPF_Redistributed_ospfType| #b00)))
(assert (=> (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R2_OSPF_SINGLE-EXPORT__adminDist| 0)))
(assert (=> (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R2_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R2_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R2_OSPF_SINGLE-EXPORT__ospfType| #b00)))
(assert (=> (not |0_R2_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R2_OSPF_IMPORT_Serial0_adminDist| 0)))
(assert (=> (not |0_R2_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R2_OSPF_IMPORT_Serial0_prefixLength| 0)))
(assert (=> (not |0_R2_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R2_OSPF_IMPORT_Serial0_metric| 0)))
(assert (=> (not |0_R2_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R2_OSPF_IMPORT_Serial0_ospfType| #b00)))
(assert (=> (not |0_R2_CONNECTED_IMPORT_Loopback0_permitted|)
    (= |0_R2_CONNECTED_IMPORT_Loopback0_prefixLength| 0)))
(assert (=> (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R1_OSPF_SINGLE-EXPORT__adminDist| 0)))
(assert (=> (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R1_OSPF_SINGLE-EXPORT__prefixLength| 0)))
(assert (=> (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R1_OSPF_SINGLE-EXPORT__metric| 0)))
(assert (=> (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)
    (= |0_R1_OSPF_SINGLE-EXPORT__ospfType| #b00)))
(assert (=> (not |0_R1_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R1_OSPF_IMPORT_Serial0_adminDist| 0)))
(assert (=> (not |0_R1_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R1_OSPF_IMPORT_Serial0_prefixLength| 0)))
(assert (=> (not |0_R1_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R1_OSPF_IMPORT_Serial0_metric| 0)))
(assert (=> (not |0_R1_OSPF_IMPORT_Serial0_permitted|)
    (= |0_R1_OSPF_IMPORT_Serial0_ospfType| #b00)))
(assert (or false (= (bvand |0_dst-ip| #xffffffff) (bvand #x45454501 #xffffffff))))
(assert (or false (= (bvand |0_src-ip| #xffffffff) (bvand #x46464646 #xffffffff))))
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
           (and |0_DATA-FORWARDING_R2_Serial1| true)
           (and |0_DATA-FORWARDING_R2_Loopback0| true)
           false
           (and |0_R2_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #xb4000001))
           (and |0_R2_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #x45454501))
           (and |0_R2_CONNECTED_BEST_None_permitted| (= |0_dst-ip| #xc0a82a02)))
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
           (and |0_DATA-FORWARDING_R1_Loopback0| true)
           false
           (and |0_R1_OVERALL_BEST_None_permitted| (= |0_dst-ip| #xc0a82a01))
           (and |0_R1_OVERALL_BEST_None_permitted| (= |0_dst-ip| #x46464646)))
       (= |0__reachable-id_R1| 1)
       a!2))))
(assert (and true |0__reachable_R2| |0__reachable_R1|))
(assert (= |0_FAILED-EDGE_R2_Serial1| 0))
(assert (= |0_FAILED-EDGE_R2_Loopback0| 0))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (=> (= (bvand |0_dst-ip| #xffffff00) (bvand #xc0a82a00 #xffffff00))
    (= |0_FAILED-EDGE_R1_R2| 0)))
(assert (= |0_FAILED-EDGE_R1_Loopback0| 0))
(assert-soft |0__R2_Serial1_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R2_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R2_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R1_Serial0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R1_Loopback0_OUTBOUND_SOFTAdd| :weight 1 :id SoftOutAclAdd)
(assert-soft |0__R2_Serial1_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R2_Loopback0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R2_Serial0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R1_Serial0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft |0__R1_Loopback0_INBOUND_SOFTAdd| :weight 10 :id SoftInAclAdd)
(assert-soft R2OSPFSoftRedisRemove :weight 1 :id RedisRemove)
(assert-soft (let ((a!1 (and |0_R2_OSPF_Redistributed_permitted|
                (or (> |0_R2_OSPF_Redistributed_prefixLength| 24)
                    (and (= |0_R2_OSPF_Redistributed_prefixLength| 24)
                         (< |0_R2_OSPF_Redistributed_adminDist| 110)))))
      (a!2 (and |0_R2_OSPF_SINGLE-EXPORT__permitted|
                true
                (= |0_R2_OSPF_SINGLE-EXPORT__adminDist| 110)
                (= |0_R2_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_R2_OSPF_SINGLE-EXPORT__prefixLength| 24)
                (= |0_R2_OSPF_SINGLE-EXPORT__ospfType| #b00)
                true
                true
                true
                true))
      (a!3 (and true
                (or (bvult |0_R2_OSPF_Redistributed_ospfType|
                           |0_R2_OSPF_BEST_None_ospfType|)
                    (and (= |0_R2_OSPF_Redistributed_ospfType|
                            |0_R2_OSPF_BEST_None_ospfType|)
                         true))))
      (a!8 (ite true
                (ite (<= |0_R2_OSPF_BEST_None_metric| 65535)
                     (and (= |0_R2_OSPF_SINGLE-EXPORT__permitted|
                             |0_R2_OSPF_BEST_None_permitted|)
                          (= |0_R2_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_R2_OSPF_BEST_None_prefixLength|)
                          (= |0_R2_OSPF_SINGLE-EXPORT__adminDist|
                             |0_R2_OSPF_BEST_None_adminDist|)
                          true
                          true
                          (= |0_R2_OSPF_SINGLE-EXPORT__metric|
                             |0_R2_OSPF_BEST_None_metric|)
                          true
                          true
                          (= |0_R2_OSPF_SINGLE-EXPORT__ospfType|
                             |0_R2_OSPF_BEST_None_ospfType|)
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!4 (and true (or false (and true (or false a!3))))))
(let ((a!5 (and true
                (or (< |0_R2_OSPF_Redistributed_metric|
                       |0_R2_OSPF_BEST_None_metric|)
                    (and (= |0_R2_OSPF_Redistributed_metric|
                            |0_R2_OSPF_BEST_None_metric|)
                         (or false a!4))))))
(let ((a!6 (and (= |0_R2_OSPF_Redistributed_prefixLength|
                   |0_R2_OSPF_BEST_None_prefixLength|)
                (or (< |0_R2_OSPF_Redistributed_adminDist|
                       |0_R2_OSPF_BEST_None_adminDist|)
                    (and (= |0_R2_OSPF_Redistributed_adminDist|
                            |0_R2_OSPF_BEST_None_adminDist|)
                         (or false a!5))))))
(let ((a!7 (not (and |0_R2_OSPF_Redistributed_permitted|
                     (or (> |0_R2_OSPF_Redistributed_prefixLength|
                            |0_R2_OSPF_BEST_None_prefixLength|)
                         a!6)))))
(let ((a!9 (ite (and |0_R2_OSPF_BEST_None_permitted| a!7)
                (ite (and (and true true)
                          true
                          |0_R2_OSPF_BEST_None_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0))
                     a!8
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                (ite (and (and true true)
                          true
                          |0_R2_OSPF_Redistributed_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0)
                          R2OSPFSoftRedisRemove)
                     (and (= |0_R2_OSPF_Redistributed_prefixLength|
                             |0_R2_OSPF_SINGLE-EXPORT__prefixLength|)
                          (= |0_R2_OSPF_Redistributed_adminDist|
                             |0_R2_OSPF_SINGLE-EXPORT__adminDist|)
                          true
                          (= |0_R2_OSPF_Redistributed_metric|
                             |0_R2_OSPF_SINGLE-EXPORT__metric|)
                          true
                          true
                          (= |0_R2_OSPF_Redistributed_ospfType|
                             |0_R2_OSPF_SINGLE-EXPORT__ospfType|)
                          true
                          true
                          true
                          true
                          true
                          true
                          (= |0_R2_OSPF_Redistributed_permitted|
                             |0_R2_OSPF_SINGLE-EXPORT__permitted|))
                     (not |0_R2_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!10 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #xc0a82a00 #xffffff00))
                      (not a!1))
                 a!2
                 a!9)))
(let ((a!11 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #xb4000000 #xffffff00))
                      (not a!1))
                 a!2
                 a!10)))
(let ((a!12 (ite (and (and true true)
                      (= (bvand |0_dst-ip| #xffffff00)
                         (bvand #x45454500 #xffffff00))
                      (not a!1))
                 a!2
                 a!11)))
  (or a!10 (not a!12))))))))))) :weight 1 :id exportIPSoft)
(assert-soft (let ((a!1 (and |0_R1_OSPF_SINGLE-EXPORT__permitted|
                true
                (= |0_R1_OSPF_SINGLE-EXPORT__adminDist| 110)
                (= |0_R1_OSPF_SINGLE-EXPORT__metric| 0)
                true
                (= |0_R1_OSPF_SINGLE-EXPORT__prefixLength| 24)
                (= |0_R1_OSPF_SINGLE-EXPORT__ospfType| #b00)
                true
                true
                true
                true))
      (a!2 (ite true
                (ite (<= |0_R1_OVERALL_BEST_None_metric| 65535)
                     (and (= |0_R1_OSPF_SINGLE-EXPORT__permitted|
                             |0_R1_OVERALL_BEST_None_permitted|)
                          (= |0_R1_OSPF_SINGLE-EXPORT__prefixLength|
                             |0_R1_OVERALL_BEST_None_prefixLength|)
                          (= |0_R1_OSPF_SINGLE-EXPORT__adminDist|
                             |0_R1_OVERALL_BEST_None_adminDist|)
                          true
                          true
                          (= |0_R1_OSPF_SINGLE-EXPORT__metric|
                             |0_R1_OVERALL_BEST_None_metric|)
                          true
                          true
                          (= |0_R1_OSPF_SINGLE-EXPORT__ospfType|
                             |0_R1_OVERALL_BEST_None_ospfType|)
                          true
                          true
                          true
                          true
                          true)
                     (not |0_R1_OSPF_SINGLE-EXPORT__permitted|))
                (not |0_R1_OSPF_SINGLE-EXPORT__permitted|))))
(let ((a!3 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #xc0a82a00 #xffffff00)))
                a!1
                (ite (and (and true true)
                          true
                          |0_R1_OVERALL_BEST_None_permitted|
                          (= |0_FAILED-EDGE_R1_R2| 0))
                     a!2
                     (not |0_R1_OSPF_SINGLE-EXPORT__permitted|)))))
(let ((a!4 (ite (and (and true true)
                     (= (bvand |0_dst-ip| #xffffff00)
                        (bvand #x46464600 #xffffff00)))
                a!1
                a!3)))
  (or a!4 (not a!4))))) :weight 1 :id exportIPSoft)
(check-sat)
