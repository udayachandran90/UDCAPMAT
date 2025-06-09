namespace UDCAPMAT;
using { cuid  } from '@sap/cds/common';


entity mathead : cuid {
    material : String; // Composition of many matplant on material.material = $self;
    createdon: String;
    namemat: String;
    materialtype: String
}

entity matplant : cuid {
    material : Association to mathead;
    plant: String;
    staus: String
    
}