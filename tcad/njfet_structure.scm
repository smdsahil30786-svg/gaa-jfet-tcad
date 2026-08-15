(sdegeo:create-rectangle (position 1 2 0)  (position 3.5 4.5 0) "Silicon" "region_1")


(sdegeo:create-rectangle (position 1 1 0)  (position 3.5 2 0) "Silicon" "region_3")

(sdegeo:create-rectangle (position 1 4.5 0)  (position 3.5 5.5 0) "Silicon" "region_4")

(sdegeo:create-rectangle (position 0.5 2.25 0)  (position 1 4.25 0) "Silicon" "region_5")

(sdegeo:create-rectangle (position 3.5 2.25 0)  (position 4 4.25 0) "Silicon" "region_6")

(sdegeo:define-contact-set "gate" 7  (color:rgb 1 0 0 ) "##")

(sdegeo:define-contact-set "source" 4  (color:rgb 1 1 0 ) "##")

(sdegeo:define-contact-set "drain" 4  (color:rgb 1 0 1 ) "##")

(sdegeo:set-current-contact-set "gate")

(sdegeo:set-current-contact-set "source")

(sdegeo:set-current-contact-set "drain")

(sdegeo:set-contact (list (car (find-edge-id (position 2.25 5.5 0)))) "drain")



(sdegeo:set-contact (list (car (find-edge-id (position 2.25 1 0)))) "source")


(sdegeo:set-contact (list (car (find-edge-id (position 0.5 3.25 0)))) "gate")


(sdegeo:set-contact (list (car (find-edge-id (position 4 3.25 0)))) "gate")




(sdedr:define-constant-profile "ConstantProfileDefinition_1" "PhosphorusActiveConcentration" 1e+15)

(sdedr:define-constant-profile-region "ConstantProfilePlacement_1" "ConstantProfileDefinition_1" "region_1")

(sdedr:define-constant-profile "ConstantProfileDefinition_3" "PhosphorusActiveConcentration" 1e+15)

(sdedr:define-constant-profile-region "ConstantProfilePlacement_3" "ConstantProfileDefinition_3" "region_3")

(sdedr:define-constant-profile "ConstantProfileDefinition_4" "PhosphorusActiveConcentration" 1e+15)

(sdedr:define-constant-profile-region "ConstantProfilePlacement_4" "ConstantProfileDefinition_4" "region_4")

(sdedr:define-constant-profile "ConstantProfileDefinition_4" "BoronActiveConcentration" 1e+19)

(sdedr:define-constant-profile-region "ConstantProfilePlacement_4" "ConstantProfileDefinition_4" "region_5")

(sdedr:define-constant-profile "ConstantProfileDefinition_6" "BoronActiveConcentration" 1e+19)

(sdedr:define-constant-profile-region "ConstantProfilePlacement_6" "ConstantProfileDefinition_6" "region_6")

(sdedr:define-refinement-size "RefinementDefinition_1" 0.05 0.05 0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_1" "RefinementDefinition_1" (list "region" "region_1" ) )

(sdedr:define-refinement-size "RefinementDefinition_2" 0.05 0.05 0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_3" "RefinementDefinition_3" (list "region" "region_3" ) )

(sdedr:define-refinement-size "RefinementDefinition_4" 0.05 0.05 0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_4" "RefinementDefinition_4" (list "region" "region_4" ) )

(sdedr:define-refinement-size "RefinementDefinition_1" 0.10 0.10 0.01 0.01 )

(sdedr:define-refinement-placement "RefinementPlacement_5" "RefinementDefinition_5" (list "region" "region_5" ) )

(sdedr:define-refinement-size "RefinementDefinition_6" 0.1 0.1 0.01 0.01 )

(sdedr:define-refinement-placement "RefinementPlacement_6" "RefinementDefinition_6" (list "region" "region_6" ) )

(sde:set-meshing-command "snmesh")

(sde:set-meshing-command "snmesh")

(sde:build-mesh "" "sdemodel")



(system:command "svisual sdemodel_msh.tdr &")

