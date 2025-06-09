using { UDCAPMAT } from '../db/mat';


service matservice {

entity math as select from UDCAPMAT.mathead;
entity mati as select from UDCAPMAT.matplant;

}