namespace UDCAPMAT;
using { cuid  } from '@sap/cds/common';


entity mathead : cuid {
    material : String @mandatory @title : '{i18n>Mat}'; 
    createdon: String;
    namemat: String;
    materialtype: String;
    matdesc : Composition of many matplant on matdesc.material = $self;
}

entity matplant : cuid {
    material : Association to mathead @title : '{i18n>Mat}';
    plant: String;
    staus: String @title : '{i18n>Material Status}'; 
    
}