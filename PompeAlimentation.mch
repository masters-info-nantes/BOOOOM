/* PompeAlimentation
 * Author: 
 * Creation date: 18/11/15
 */
MACHINE
    PompeAlimentation
CONSTANTS
    DD, EE
PROPERTIES
    DD : NAT & DD = 0
    &
    EE : NAT & EE = 1

VARIABLES
    P002PO
INVARIANT
    P002PO : NAT & (P002PO = DD or P002PO = EE)
INITIALISATION
    P002PO := DD

END
