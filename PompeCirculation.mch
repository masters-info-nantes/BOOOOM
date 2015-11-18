/* PompeCirculation
 * Author: 
 * Creation date: 18/11/15
 */
MACHINE
    PompeCirculation
CONSTANTS 
    DD,EE,DPP,DPR,EPP,EPR,V1,V2
PROPERTIES
    DD : NAT & DD = 4
    &
    EE : NAT & EE = 5
    &
    DPP : NAT & DPP = 7
    &
    DPR : NAT & DPR = 8
    &
    EPP : NAT & EPP = 10
    &
    EPR : NAT & EPR = 11
    &
    V1 : NAT & V1 = 12
    &
    V2 : NAT & V2 = 13
VARIABLES
    P001POEtat,
    P001POOrdre
INVARIANT
    P001POEtat : NAT & (P001POEtat = 1 or P001POEtat = 2) 
    &
    P001POOrdre : NAT & (P001POEtat = 1 => (P001POOrdre = DD or P001POOrdre = DPP or P001POOrdre = DPR) & P001POEtat = 2 => (P001POOrdre = EE or P001POOrdre = EPP or P001POOrdre = EPR or P001POOrdre = V1 or P001POOrdre = V2))
INITIALISATION
    P001POEtat := 1 
    ||
    P001POOrdre := DD
END
