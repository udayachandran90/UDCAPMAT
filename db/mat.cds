namespace UDCAPMAT;
using { cuid  } from '@sap/cds/common';

type date : String(8);
type material : String(18);


entity mathead : cuid {
    material : material @assert.unique @mandatory @title : '{i18n>Mat}'; 
    createdon: date;
    namemat: String;
    matemail: String @assert.format : '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    matphone: String @assert.format : '^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$';
    materialtype: String;
    matdesc : Composition of many matplant on matdesc.material = $self;
}

entity matplant : cuid {
    material : Association to mathead @title : '{i18n>Mat}';
    plant: String;
    staus: String @title : '{i18n>Material Status}'; 
    
}