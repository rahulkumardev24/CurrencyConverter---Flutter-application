class CurrencyModel {
  String? date;
  String? base;
  Rates? rates;
  CurrencyModel({this.date, this.base, this.rates});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    base = json['base'];
    rates = json['rates'] != null ? new Rates.fromJson(json['rates']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['base'] = this.base;
    if (this.rates != null) {
      data['rates'] = this.rates!.toJson();
    }
    return data;
  }
}

class Rates {
  String? aGLD;
  String? fJD;
  String? sTPT;
  String? lVL;
  String? sCR;
  String? bBD;
  String? hNL;
  String? uGX;
  String? kUJI;
  String? nEAR;
  String? aIOZ;
  String? aUDIO;
  String? wLD;
  String? hNT;
  String? eTHFI;
  String? fARM;
  String? sDG;
  String? dGB;
  String? bCH;
  String? fKP;
  String? jST;
  String? hOT;
  String? aR;
  String? b3;
  String? sEI;
  String? sEK;
  String? bB;
  String? qAR;
  String? jTO;
  String? wEMIX;
  String? g;
  String? rLUSD;
  String? fLR;
  String? bIGTIME;
  String? s;
  String? bDT;
  String? t;
  String? lYD;
  String? w;
  String? bDX;
  String? bABYDOGE;
  String? sFP;
  String? dIA;
  String? jUP;
  String? rSS3;
  String? sNEK;
  String? lYX;
  String? sGB;
  String? sGD;
  String? wOO;
  String? bLUR;
  String? sTRK;
  String? hRK;
  String? dJF;
  String? wAVES;
  String? dOGINME;
  String? fLOKI;
  String? sHP;
  String? bGB;
  String? sTEAKUSDC;
  String? sAND;
  String? dKK;
  String? wCFG;
  String? qUBIC;
  String? bGN;
  String? uMA;
  String? fOX;
  String? wSTETH;
  String? tUSD;
  String? lRDS;
  String? cOOKIE;
  String? hTG;
  String? bHD;
  String? pUNDIAI;
  String? oAS;
  String? pEAQ;
  String? cOVAL;
  String? zETACHAIN;
  String? cGLD;
  String? uNI;
  String? fX;
  String? hUF;
  String? bIF;
  String? pEPECOIN;
  String? wELL;
  String? bIO;
  String? sWFTC;
  String? wAVAX;
  String? bIT;
  String? gT;
  String? sKK;
  String? sKL;
  String? uOS;
  String? wST;
  String? sHPING;
  String? bRETT;
  String? mYTH;
  String? dNT;
  String? hT;
  String? tRUAPT;
  String? sLE;
  String? fLOW;
  String? uPI;
  String? nTGL;
  String? sLL;
  String? sLP;
  String? iD;
  String? dOG;
  String? gIGA;
  String? dOP;
  String? iO;
  String? uQC;
  String? iP;
  String? iQ;
  String? dOT;
  String? oSAK;
  String? s1INCH;
  String? mAD;
  String? tURBO;
  String? uNFI;
  String? aPEX;
  String? fTM;
  String? pOWR;
  String? fTN;
  String? cORGIAI;
  String? aRKM;
  String? aTOM;
  String? sAVAX;
  String? qUICK;
  String? pENDLE;
  String? bLZ;
  String? bOBA;
  String? tONE;
  String? bMD;
  String? sNT;
  String? sNX;
  String? kOGE;
  String? l3;
  String? uSD;
  String? aPI3;
  String? rOSE;
  String? sATS;
  String? sOL;
  String? uSR;
  String? sOS;
  String? bNB;
  String? oGN;
  String? uST;
  String? cELR;
  String? cGPT;
  String? bND;
  String? cELO;
  String? tBTC;
  String? aUCTION;
  String? lAYER;
  String? mANTA;
  String? bADGER;
  String? mULTI;
  String? aERO;
  String? cETUS;
  String? sPA;
  String? bNT;
  String? sHDW;
  String? bOB;
  String? mDL;
  String? oHM;
  String? mE;
  String? sPX;
  String? mDT;
  String? aNDY;
  String? aERGO;
  String? mOCA;
  String? mX;
  String? eGLD;
  String? pLUME;
  String? kAS;
  String? tRUMP;
  String? mEW;
  String? pUNDIX;
  String? fXS;
  String? aEVO;
  String? sRD;
  String? pTGC;
  String? nU;
  String? fLUX;
  String? pRCL;
  String? qNT;
  String? oM;
  String? eTHW;
  String? mUSE;
  String? eTHX;
  String? oP;
  String? mGA;
  String? oKB;
  String? wETH;
  String? sSP;
  String? jUPSOL;
  String? nEON;
  String? sSV;
  String? pI;
  String? oKT;
  String? eTH2;
  String? pAAL;
  String? kCS;
  String? bUSD;
  String? aRPA;
  String? bRL;
  String? aLCX;
  String? aLEX;
  String? sTD;
  String? sTG;
  String? iOTX;
  String? sHIB;
  String? kDA;
  String? zAR;
  String? aLEO;
  String? sTN;
  String? bSD;
  String? sTX;
  String? qI;
  String? bLAST;
  String? bSV;
  String? iOST;
  String? sUI;
  String? cAKE;
  String? mSOL;
  String? oMG;
  String? oMI;
  String? pYUSD;
  String? sUN;
  String? bTC;
  String? uYU;
  String? iOTA;
  String? aIXBT;
  String? oMR;
  String? mIR;
  String? kES;
  String? kET;
  String? bTN;
  String? rONIN;
  String? sOLVBTC;
  String? sVC;
  String? bTT;
  String? oNE;
  String? fWOG;
  String? rENDER;
  String? oNG;
  String? cETH;
  String? aNKR;
  String? aLGO;
  String? sYLO;
  String? uZS;
  String? sC;
  String? sD;
  String? oNT;
  String? fLUID;
  String? dYM;
  String? dYP;
  String? mKD;
  String? dZD;
  String? mKR;
  String? kGS;
  String? iCP;
  String? zEC;
  String? xAF;
  String? nEST;
  String? iCX;
  String? xAG;
  String? kMNO;
  String? xAI;
  String? zEN;
  String? dOGE;
  String? sXP;
  String? hBAR;
  String? xAU;
  String? mLN;
  String? pEPE;
  String? kHR;
  String? iDR;
  String? dOGS;
  String? cTSI;
  String? bWP;
  String? oUSG;
  String? c98;
  String? oSMO;
  String? nTRN;
  String? sYN;
  String? mMK;
  String? sYP;
  String? cRPT;
  String? gAL;
  String? gAS;
  String? xCD;
  String? mMX;
  String? bOME;
  String? sONIC;
  String? vR;
  String? xCH;
  String? cBBTC;
  String? tHETA;
  String? xCN;
  String? sZL;
  String? oRN;
  String? nEXO;
  String? aAVE;
  String? mNT;
  String? gBP;
  String? bONK;
  String? bYN;
  String? xDC;
  String? pERP;
  String? bYR;
  String? bONE;
  String? bOND;
  String? mOG;
  String? hYPE;
  String? xDR;
  String? tIME;
  String? bICO;
  String? bZD;
  String? mOP;
  String? mONA;
  String? bBSOL;
  String? mELANIA;
  String? hMSTR;
  String? xEC;
  String? pEOPLE;
  String? xT;
  String? zIL;
  String? xEM;
  String? wEETH;
  String? tRAC;
  String? mPL;
  String? wAXL;
  String? oOKI;
  String? sWELL;
  String? bORA;
  String? kMF;
  String? gEL;
  String? zK;
  String? rSETH;
  String? eETH;
  String? uSUAL;
  String? kNC;
  String? pROM;
  String? aLEPH;
  String? pONKE;
  String? gFI;
  String? mRO;
  String? mRU;
  String? bORG;
  String? sUPEROETHB;
  String? wAXP;
  String? sUKU;
  String? gGP;
  String? vEF;
  String? zMK;
  String? mTD;
  String? kARRAT;
  String? aLPH;
  String? mOBILE;
  String? vINE;
  String? tAO;
  String? mORPHO;
  String? mTL;
  String? vET;
  String? vES;
  String? zMW;
  String? uSDG;
  String? uSDT;
  String? uSDCE;
  String? oXT;
  String? uSDS;
  String? uSDP;
  String? gHO;
  String? iLS;
  String? iLV;
  String? gHS;
  String? kPW;
  String? uSDY;
  String? uSDX;
  String? mEDIA;
  String? kEEP;
  String? cAD;
  String? eEK;
  String? mUR;
  String? iMP;
  String? uSD0;
  String? gIP;
  String? bEAM;
  String? iMX;
  String? cAT;
  String? uSDE;
  String? uSDD;
  String? uSDC;
  String? uSDB;
  String? uSDA;
  String? xMON;
  String? rETH;
  String? iNJ;
  String? kRL;
  String? vGX;
  String? cHEX;
  String? mVR;
  String? tRIBE;
  String? iNR;
  String? iNV;
  String? kRW;
  String? mWC;
  String? xLM;
  String? mWK;
  String? eIGEN;
  String? sUPER;
  String? kSM;
  String? bSCUSD;
  String? rNDR;
  String? aNIME;
  String? gALA;
  String? eGP;
  String? rAD;
  String? mOVE;
  String? mXC;
  String? tEL;
  String? mOVR;
  String? rAI;
  String? xMR;
  String? mXN;
  String? tRIP;
  String? cDF;
  String? gLM;
  String? rAY;
  String? bTCB;
  String? fDUSD;
  String? zRO;
  String? sAROS;
  String? kUB;
  String? sSOL;
  String? iQD;
  String? gMD;
  String? rBN;
  String? zRX;
  String? mYR;
  String? sERAPH;
  String? xOF;
  String? gMT;
  String? sWETH;
  String? cET;
  String? gMX;
  String? oMNI;
  String? gNF;
  String? mZN;
  String? cFG;
  String? iRR;
  String? gNO;
  String? gNT;
  String? gNS;
  String? xPD;
  String? tHB;
  String? xPF;
  String? vANRY;
  String? wSTUSR;
  String? bITCOIN;
  String? aBT;
  String? cFX;
  String? kWD;
  String? vELO;
  String? bINK;
  String? xPT;
  String? iSK;
  String? aCH;
  String? mINA;
  String? tIA;
  String? vTHO;
  String? dRIFT;
  String? pAB;
  String? rED;
  String? aCS;
  String? aCT;
  String? aCX;
  String? rEN;
  String? eLA;
  String? rEP;
  String? aDA;
  String? eLF;
  String? rEQ;
  String? sTORJ;
  String? vIRTUAL;
  String? cHF;
  String? rARI;
  String? rARE;
  String? pAXG;
  String? pAX;
  String? rEZ;
  String? sTBTC;
  String? gPS;
  String? xRD;
  String? cHR;
  String? vND;
  String? cHZ;
  String? kYD;
  String? xRP;
  String? jASMY;
  String? iNDEX;
  String? tJS;
  String? aED;
  String? fIDA;
  String? h2O;
  String? zWD;
  String? oCEAN;
  String? qGOLD;
  String? zWL;
  String? pCI;
  String? eNA;
  String? rGT;
  String? eNJ;
  String? tKX;
  String? kZT;
  String? yFII;
  String? dIMO;
  String? gRT;
  String? aFN;
  String? tFUEL;
  String? eNS;
  String? kAIA;
  String? dEGEN;
  String? cKB;
  String? lUNC;
  String? xTZ;
  String? lUNA;
  String? aURORA;
  String? aGI;
  String? eOS;
  String? gST;
  String? fORT;
  String? rIF;
  String? nAD;
  String? fRXETH;
  String? dEEP;
  String? tMM;
  String? gTC;
  String? pEN;
  String? sOLO;
  String? tMT;
  String? cLF;
  String? tOSHI;
  String? eUROC;
  String? sUNDOG;
  String? gTQ;
  String? cLP;
  String? cPOOL;
  String? tND;
  String? cLV;
  String? xVS;
  String? mEME;
  String? aIC;
  String? sFUND;
  String? tON;
  String? tOP;
  String? pGK;
  String? pNUT;
  String? gYEN;
  String? cNH;
  String? nCT;
  String? wLUNA;
  String? eRN;
  String? vENOM;
  String? vOXEL;
  String? pHA;
  String? rLC;
  String? rLB;
  String? cNY;
  String? iBERA;
  String? pHP;
  String? rLY;
  String? oXOLD;
  String? cOQ;
  String? cOP;
  String? hOPR;
  String? aKT;
  String? cOW;
  String? gLMR;
  String? oRAI;
  String? xYO;
  String? eTB;
  String? eTC;
  String? vUV;
  String? lAK;
  String? eTH;
  String? nEO;
  String? aLL;
  String? hIGH;
  String? tRB;
  String? aLT;
  String? oRDI;
  String? gYD;
  String? oSETH;
  String? tRU;
  String? vVV;
  String? wBNB;
  String? aMD;
  String? gRASS;
  String? dREP;
  String? eTHDYDX;
  String? tRY;
  String? lBP;
  String? tRX;
  String? nFT;
  String? eDGE;
  String? eUR;
  String? aMP;
  String? mEOW;
  String? oRCA;
  String? uSTC;
  String? bERA;
  String? rON;
  String? nGN;
  String? tST;
  String? cRC;
  String? pKR;
  String? vANA;
  String? cRE;
  String? lUSD;
  String? aNG;
  String? sPELL;
  String? lCX;
  String? cRO;
  String? pLA;
  String? tTD;
  String? sFRXETH;
  String? cRV;
  String? mNDE;
  String? aNT;
  String? bAKE;
  String? rPL;
  String? aOA;
  String? pLN;
  String? lDO;
  String? mAGIC;
  String? aLICE;
  String? cORECHAIN;
  String? pLU;
  String? sEAM;
  String? aMAPT;
  String? cTC;
  String? nIO;
  String? aPE;
  String? lEO;
  String? mCO2;
  String? s00;
  String? mATIC;
  String? aPT;
  String? aPU;
  String? cTX;
  String? pNG;
  String? tVK;
  String? uSYC;
  String? cUC;
  String? sOLVBTCBBN;
  String? pYTH;
  String? aI16Z;
  String? cUP;
  String? tWD;
  String? rSD;
  String? fRAX;
  String? vRSC;
  String? wBETH;
  String? mETH;
  String? bAND;
  String? pOL;
  String? aSTR;
  String? nKN;
  String? rSR;
  String? tWT;
  String? pARTI;
  String? aRB;
  String? cVC;
  String? aRC;
  String? vARA;
  String? cVE;
  String? sUSDS;
  String? aRK;
  String? lOKA;
  String? bTSE;
  String? cHEEMS;
  String? aRS;
  String? cVX;
  String? lBTC;
  String? mPLX;
  String? sUSHI;
  String? aBTC;
  String? wBTC;
  String? aSM;
  String? rUB;
  String? aST;
  String? bNSOL;
  String? mANA;
  String? cSPR;
  String? aGENTFUN;
  String? aTA;
  String? nMR;
  String? jEP;
  String? nMT;
  String? aTH;
  String? lIT;
  String? cGETHHASHKEY;
  String? tNSR;
  String? pOLYX;
  String? dESO;
  String? lOOM;
  String? rVN;
  String? pRO;
  String? tZS;
  String? pRQ;
  String? oNDO;
  String? aUD;
  String? uSDT0;
  String? bUIDL;
  String? dEUSD;
  String? rWF;
  String? kAVA;
  String? nOK;
  String? sTRAX;
  String? lKR;
  String? nOT;
  String? nOS;
  String? cZK;
  String? aVT;
  String? nPC;
  String? eURC;
  String? wAL;
  String? yER;
  String? lSETH;
  String? sUSDE;
  String? mASK;
  String? aWG;
  String? nPR;
  String? pRIME;
  String? yFI;
  String? mOODENG;
  String? cWBTC;
  String? kEYCAT;
  String? pOPCAT;
  String? wBT;
  String? lQTY;
  String? oLAS;
  String? fAI;
  String? zETA;
  String? aXL;
  String? yGG;
  String? fARTCOIN;
  String? cLBTC;
  String? aXS;
  String? sYRUP;
  String? hONEY;
  String? s0X0;
  String? cOMP;
  String? hFT;
  String? wAMPL;
  String? uXLINK;
  String? cMETH;
  String? rUNE;
  String? pURR;
  String? zEUS;
  String? pENGU;
  String? dEXT;
  String? fORTH;
  String? gHST;
  String? mATH;
  String? iDEX;
  String? dEXE;
  String? aVAX;
  String? aZN;
  String? aMPL;
  String? gOAT;
  String? uAH;
  String? bANANA;
  String? lPT;
  String? kAITO;
  String? eZETH;
  String? gODS;
  String? pYG;
  String? jMD;
  String? xAUT;
  String? pYR;
  String? bTRST;
  String? dAG;
  String? bERASTONE;
  String? dAI;
  String? aVAIL;
  String? dAR;
  String? fET;
  String? cBETH;
  String? lRC;
  String? rEPV2;
  String? lRD;
  String? cORE;
  String? dASH;
  String? jOD;
  String? gUSD;
  String? hKD;
  String? jOE;
  String? aRSMEP;
  String? lSL;
  String? lSK;
  String? pUMPBTC;
  String? sAFE;
  String? dCR;
  String? wIF;
  String? lTC;
  String? mETIS;
  String? eCOIN;
  String? sTETH;
  String? nXM;
  String? lTL;
  String? sAR;
  String? dYDX;
  String? aGIX;
  String? pOND;
  String? jPY;
  String? sBD;
  String? gRIFFAIN;
  String? dDX;
  String? lINK;
  String? qTUM;
  String? wILD;
  String? pOLS;
  String? fIL;
  String? pOLY;
  String? eBTC;
  String? bAL;
  String? bAM;
  String? bAN;
  String? fIS;
  String? bAT;
  String? nZD;
  String? cOTI;

  Rates(
      {this.aGLD,
        this.fJD,
        this.sTPT,
        this.lVL,
        this.sCR,
        this.bBD,
        this.hNL,
        this.uGX,
        this.kUJI,
        this.nEAR,
        this.aIOZ,
        this.aUDIO,
        this.wLD,
        this.hNT,
        this.eTHFI,
        this.fARM,
        this.sDG,
        this.dGB,
        this.bCH,
        this.fKP,
        this.jST,
        this.hOT,
        this.aR,
        this.b3,
        this.sEI,
        this.sEK,
        this.bB,
        this.qAR,
        this.jTO,
        this.wEMIX,
        this.g,
        this.rLUSD,
        this.fLR,
        this.bIGTIME,
        this.s,
        this.bDT,
        this.t,
        this.lYD,
        this.w,
        this.bDX,
        this.bABYDOGE,
        this.sFP,
        this.dIA,
        this.jUP,
        this.rSS3,
        this.sNEK,
        this.lYX,
        this.sGB,
        this.sGD,
        this.wOO,
        this.bLUR,
        this.sTRK,
        this.hRK,
        this.dJF,
        this.wAVES,
        this.dOGINME,
        this.fLOKI,
        this.sHP,
        this.bGB,
        this.sTEAKUSDC,
        this.sAND,
        this.dKK,
        this.wCFG,
        this.qUBIC,
        this.bGN,
        this.uMA,
        this.fOX,
        this.wSTETH,
        this.tUSD,
        this.lRDS,
        this.cOOKIE,
        this.hTG,
        this.bHD,
        this.pUNDIAI,
        this.oAS,
        this.pEAQ,
        this.cOVAL,
        this.zETACHAIN,
        this.cGLD,
        this.uNI,
        this.fX,
        this.hUF,
        this.bIF,
        this.pEPECOIN,
        this.wELL,
        this.bIO,
        this.sWFTC,
        this.wAVAX,
        this.bIT,
        this.gT,
        this.sKK,
        this.sKL,
        this.uOS,
        this.wST,
        this.sHPING,
        this.bRETT,
        this.mYTH,
        this.dNT,
        this.hT,
        this.tRUAPT,
        this.sLE,
        this.fLOW,
        this.uPI,
        this.nTGL,
        this.sLL,
        this.sLP,
        this.iD,
        this.dOG,
        this.gIGA,
        this.dOP,
        this.iO,
        this.uQC,
        this.iP,
        this.iQ,
        this.dOT,
        this.oSAK,
        this.s1INCH,
        this.mAD,
        this.tURBO,
        this.uNFI,
        this.aPEX,
        this.fTM,
        this.pOWR,
        this.fTN,
        this.cORGIAI,
        this.aRKM,
        this.aTOM,
        this.sAVAX,
        this.qUICK,
        this.pENDLE,
        this.bLZ,
        this.bOBA,
        this.tONE,
        this.bMD,
        this.sNT,
        this.sNX,
        this.kOGE,
        this.l3,
        this.uSD,
        this.aPI3,
        this.rOSE,
        this.sATS,
        this.sOL,
        this.uSR,
        this.sOS,
        this.bNB,
        this.oGN,
        this.uST,
        this.cELR,
        this.cGPT,
        this.bND,
        this.cELO,
        this.tBTC,
        this.aUCTION,
        this.lAYER,
        this.mANTA,
        this.bADGER,
        this.mULTI,
        this.aERO,
        this.cETUS,
        this.sPA,
        this.bNT,
        this.sHDW,
        this.bOB,
        this.mDL,
        this.oHM,
        this.mE,
        this.sPX,
        this.mDT,
        this.aNDY,
        this.aERGO,
        this.mOCA,
        this.mX,
        this.eGLD,
        this.pLUME,
        this.kAS,
        this.tRUMP,
        this.mEW,
        this.pUNDIX,
        this.fXS,
        this.aEVO,
        this.sRD,
        this.pTGC,
        this.nU,
        this.fLUX,
        this.pRCL,
        this.qNT,
        this.oM,
        this.eTHW,
        this.mUSE,
        this.eTHX,
        this.oP,
        this.mGA,
        this.oKB,
        this.wETH,
        this.sSP,
        this.jUPSOL,
        this.nEON,
        this.sSV,
        this.pI,
        this.oKT,
        this.eTH2,
        this.pAAL,
        this.kCS,
        this.bUSD,
        this.aRPA,
        this.bRL,
        this.aLCX,
        this.aLEX,
        this.sTD,
        this.sTG,
        this.iOTX,
        this.sHIB,
        this.kDA,
        this.zAR,
        this.aLEO,
        this.sTN,
        this.bSD,
        this.sTX,
        this.qI,
        this.bLAST,
        this.bSV,
        this.iOST,
        this.sUI,
        this.cAKE,
        this.mSOL,
        this.oMG,
        this.oMI,
        this.pYUSD,
        this.sUN,
        this.bTC,
        this.uYU,
        this.iOTA,
        this.aIXBT,
        this.oMR,
        this.mIR,
        this.kES,
        this.kET,
        this.bTN,
        this.rONIN,
        this.sOLVBTC,
        this.sVC,
        this.bTT,
        this.oNE,
        this.fWOG,
        this.rENDER,
        this.oNG,
        this.cETH,
        this.aNKR,
        this.aLGO,
        this.sYLO,
        this.uZS,
        this.sC,
        this.sD,
        this.oNT,
        this.fLUID,
        this.dYM,
        this.dYP,
        this.mKD,
        this.dZD,
        this.mKR,
        this.kGS,
        this.iCP,
        this.zEC,
        this.xAF,
        this.nEST,
        this.iCX,
        this.xAG,
        this.kMNO,
        this.xAI,
        this.zEN,
        this.dOGE,
        this.sXP,
        this.hBAR,
        this.xAU,
        this.mLN,
        this.pEPE,
        this.kHR,
        this.iDR,
        this.dOGS,
        this.cTSI,
        this.bWP,
        this.oUSG,
        this.c98,
        this.oSMO,
        this.nTRN,
        this.sYN,
        this.mMK,
        this.sYP,
        this.cRPT,
        this.gAL,
        this.gAS,
        this.xCD,
        this.mMX,
        this.bOME,
        this.sONIC,
        this.vR,
        this.xCH,
        this.cBBTC,
        this.tHETA,
        this.xCN,
        this.sZL,
        this.oRN,
        this.nEXO,
        this.aAVE,
        this.mNT,
        this.gBP,
        this.bONK,
        this.bYN,
        this.xDC,
        this.pERP,
        this.bYR,
        this.bONE,
        this.bOND,
        this.mOG,
        this.hYPE,
        this.xDR,
        this.tIME,
        this.bICO,
        this.bZD,
        this.mOP,
        this.mONA,
        this.bBSOL,
        this.mELANIA,
        this.hMSTR,
        this.xEC,
        this.pEOPLE,
        this.xT,
        this.zIL,
        this.xEM,
        this.wEETH,
        this.tRAC,
        this.mPL,
        this.wAXL,
        this.oOKI,
        this.sWELL,
        this.bORA,
        this.kMF,
        this.gEL,
        this.zK,
        this.rSETH,
        this.eETH,
        this.uSUAL,
        this.kNC,
        this.pROM,
        this.aLEPH,
        this.pONKE,
        this.gFI,
        this.mRO,
        this.mRU,
        this.bORG,
        this.sUPEROETHB,
        this.wAXP,
        this.sUKU,
        this.gGP,
        this.vEF,
        this.zMK,
        this.mTD,
        this.kARRAT,
        this.aLPH,
        this.mOBILE,
        this.vINE,
        this.tAO,
        this.mORPHO,
        this.mTL,
        this.vET,
        this.vES,
        this.zMW,
        this.uSDG,
        this.uSDT,
        this.uSDCE,
        this.oXT,
        this.uSDS,
        this.uSDP,
        this.gHO,
        this.iLS,
        this.iLV,
        this.gHS,
        this.kPW,
        this.uSDY,
        this.uSDX,
        this.mEDIA,
        this.kEEP,
        this.cAD,
        this.eEK,
        this.mUR,
        this.iMP,
        this.uSD0,
        this.gIP,
        this.bEAM,
        this.iMX,
        this.cAT,
        this.uSDE,
        this.uSDD,
        this.uSDC,
        this.uSDB,
        this.uSDA,
        this.xMON,
        this.rETH,
        this.iNJ,
        this.kRL,
        this.vGX,
        this.cHEX,
        this.mVR,
        this.tRIBE,
        this.iNR,
        this.iNV,
        this.kRW,
        this.mWC,
        this.xLM,
        this.mWK,
        this.eIGEN,
        this.sUPER,
        this.kSM,
        this.bSCUSD,
        this.rNDR,
        this.aNIME,
        this.gALA,
        this.eGP,
        this.rAD,
        this.mOVE,
        this.mXC,
        this.tEL,
        this.mOVR,
        this.rAI,
        this.xMR,
        this.mXN,
        this.tRIP,
        this.cDF,
        this.gLM,
        this.rAY,
        this.bTCB,
        this.fDUSD,
        this.zRO,
        this.sAROS,
        this.kUB,
        this.sSOL,
        this.iQD,
        this.gMD,
        this.rBN,
        this.zRX,
        this.mYR,
        this.sERAPH,
        this.xOF,
        this.gMT,
        this.sWETH,
        this.cET,
        this.gMX,
        this.oMNI,
        this.gNF,
        this.mZN,
        this.cFG,
        this.iRR,
        this.gNO,
        this.gNT,
        this.gNS,
        this.xPD,
        this.tHB,
        this.xPF,
        this.vANRY,
        this.wSTUSR,
        this.bITCOIN,
        this.aBT,
        this.cFX,
        this.kWD,
        this.vELO,
        this.bINK,
        this.xPT,
        this.iSK,
        this.aCH,
        this.mINA,
        this.tIA,
        this.vTHO,
        this.dRIFT,
        this.pAB,
        this.rED,
        this.aCS,
        this.aCT,
        this.aCX,
        this.rEN,
        this.eLA,
        this.rEP,
        this.aDA,
        this.eLF,
        this.rEQ,
        this.sTORJ,
        this.vIRTUAL,
        this.cHF,
        this.rARI,
        this.rARE,
        this.pAXG,
        this.pAX,
        this.rEZ,
        this.sTBTC,
        this.gPS,
        this.xRD,
        this.cHR,
        this.vND,
        this.cHZ,
        this.kYD,
        this.xRP,
        this.jASMY,
        this.iNDEX,
        this.tJS,
        this.aED,
        this.fIDA,
        this.h2O,
        this.zWD,
        this.oCEAN,
        this.qGOLD,
        this.zWL,
        this.pCI,
        this.eNA,
        this.rGT,
        this.eNJ,
        this.tKX,
        this.kZT,
        this.yFII,
        this.dIMO,
        this.gRT,
        this.aFN,
        this.tFUEL,
        this.eNS,
        this.kAIA,
        this.dEGEN,
        this.cKB,
        this.lUNC,
        this.xTZ,
        this.lUNA,
        this.aURORA,
        this.aGI,
        this.eOS,
        this.gST,
        this.fORT,
        this.rIF,
        this.nAD,
        this.fRXETH,
        this.dEEP,
        this.tMM,
        this.gTC,
        this.pEN,
        this.sOLO,
        this.tMT,
        this.cLF,
        this.tOSHI,
        this.eUROC,
        this.sUNDOG,
        this.gTQ,
        this.cLP,
        this.cPOOL,
        this.tND,
        this.cLV,
        this.xVS,
        this.mEME,
        this.aIC,
        this.sFUND,
        this.tON,
        this.tOP,
        this.pGK,
        this.pNUT,
        this.gYEN,
        this.cNH,
        this.nCT,
        this.wLUNA,
        this.eRN,
        this.vENOM,
        this.vOXEL,
        this.pHA,
        this.rLC,
        this.rLB,
        this.cNY,
        this.iBERA,
        this.pHP,
        this.rLY,
        this.oXOLD,
        this.cOQ,
        this.cOP,
        this.hOPR,
        this.aKT,
        this.cOW,
        this.gLMR,
        this.oRAI,
        this.xYO,
        this.eTB,
        this.eTC,
        this.vUV,
        this.lAK,
        this.eTH,
        this.nEO,
        this.aLL,
        this.hIGH,
        this.tRB,
        this.aLT,
        this.oRDI,
        this.gYD,
        this.oSETH,
        this.tRU,
        this.vVV,
        this.wBNB,
        this.aMD,
        this.gRASS,
        this.dREP,
        this.eTHDYDX,
        this.tRY,
        this.lBP,
        this.tRX,
        this.nFT,
        this.eDGE,
        this.eUR,
        this.aMP,
        this.mEOW,
        this.oRCA,
        this.uSTC,
        this.bERA,
        this.rON,
        this.nGN,
        this.tST,
        this.cRC,
        this.pKR,
        this.vANA,
        this.cRE,
        this.lUSD,
        this.aNG,
        this.sPELL,
        this.lCX,
        this.cRO,
        this.pLA,
        this.tTD,
        this.sFRXETH,
        this.cRV,
        this.mNDE,
        this.aNT,
        this.bAKE,
        this.rPL,
        this.aOA,
        this.pLN,
        this.lDO,
        this.mAGIC,
        this.aLICE,
        this.cORECHAIN,
        this.pLU,
        this.sEAM,
        this.aMAPT,
        this.cTC,
        this.nIO,
        this.aPE,
        this.lEO,
        this.mCO2,
        this.s00,
        this.mATIC,
        this.aPT,
        this.aPU,
        this.cTX,
        this.pNG,
        this.tVK,
        this.uSYC,
        this.cUC,
        this.sOLVBTCBBN,
        this.pYTH,
        this.aI16Z,
        this.cUP,
        this.tWD,
        this.rSD,
        this.fRAX,
        this.vRSC,
        this.wBETH,
        this.mETH,
        this.bAND,
        this.pOL,
        this.aSTR,
        this.nKN,
        this.rSR,
        this.tWT,
        this.pARTI,
        this.aRB,
        this.cVC,
        this.aRC,
        this.vARA,
        this.cVE,
        this.sUSDS,
        this.aRK,
        this.lOKA,
        this.bTSE,
        this.cHEEMS,
        this.aRS,
        this.cVX,
        this.lBTC,
        this.mPLX,
        this.sUSHI,
        this.aBTC,
        this.wBTC,
        this.aSM,
        this.rUB,
        this.aST,
        this.bNSOL,
        this.mANA,
        this.cSPR,
        this.aGENTFUN,
        this.aTA,
        this.nMR,
        this.jEP,
        this.nMT,
        this.aTH,
        this.lIT,
        this.cGETHHASHKEY,
        this.tNSR,
        this.pOLYX,
        this.dESO,
        this.lOOM,
        this.rVN,
        this.pRO,
        this.tZS,
        this.pRQ,
        this.oNDO,
        this.aUD,
        this.uSDT0,
        this.bUIDL,
        this.dEUSD,
        this.rWF,
        this.kAVA,
        this.nOK,
        this.sTRAX,
        this.lKR,
        this.nOT,
        this.nOS,
        this.cZK,
        this.aVT,
        this.nPC,
        this.eURC,
        this.wAL,
        this.yER,
        this.lSETH,
        this.sUSDE,
        this.mASK,
        this.aWG,
        this.nPR,
        this.pRIME,
        this.yFI,
        this.mOODENG,
        this.cWBTC,
        this.kEYCAT,
        this.pOPCAT,
        this.wBT,
        this.lQTY,
        this.oLAS,
        this.fAI,
        this.zETA,
        this.aXL,
        this.yGG,
        this.fARTCOIN,
        this.cLBTC,
        this.aXS,
        this.sYRUP,
        this.hONEY,
        this.s0X0,
        this.cOMP,
        this.hFT,
        this.wAMPL,
        this.uXLINK,
        this.cMETH,
        this.rUNE,
        this.pURR,
        this.zEUS,
        this.pENGU,
        this.dEXT,
        this.fORTH,
        this.gHST,
        this.mATH,
        this.iDEX,
        this.dEXE,
        this.aVAX,
        this.aZN,
        this.aMPL,
        this.gOAT,
        this.uAH,
        this.bANANA,
        this.lPT,
        this.kAITO,
        this.eZETH,
        this.gODS,
        this.pYG,
        this.jMD,
        this.xAUT,
        this.pYR,
        this.bTRST,
        this.dAG,
        this.bERASTONE,
        this.dAI,
        this.aVAIL,
        this.dAR,
        this.fET,
        this.cBETH,
        this.lRC,
        this.rEPV2,
        this.lRD,
        this.cORE,
        this.dASH,
        this.jOD,
        this.gUSD,
        this.hKD,
        this.jOE,
        this.aRSMEP,
        this.lSL,
        this.lSK,
        this.pUMPBTC,
        this.sAFE,
        this.dCR,
        this.wIF,
        this.lTC,
        this.mETIS,
        this.eCOIN,
        this.sTETH,
        this.nXM,
        this.lTL,
        this.sAR,
        this.dYDX,
        this.aGIX,
        this.pOND,
        this.jPY,
        this.sBD,
        this.gRIFFAIN,
        this.dDX,
        this.lINK,
        this.qTUM,
        this.wILD,
        this.pOLS,
        this.fIL,
        this.pOLY,
        this.eBTC,
        this.bAL,
        this.bAM,
        this.bAN,
        this.fIS,
        this.bAT,
        this.nZD,
        this.cOTI});

  Rates.fromJson(Map<String, dynamic> json) {
    aGLD = json['AGLD'];
    fJD = json['FJD'];
    sTPT = json['STPT'];
    lVL = json['LVL'];
    sCR = json['SCR'];
    bBD = json['BBD'];
    hNL = json['HNL'];
    uGX = json['UGX'];
    kUJI = json['KUJI'];
    nEAR = json['NEAR'];
    aIOZ = json['AIOZ'];
    aUDIO = json['AUDIO'];
    wLD = json['WLD'];
    hNT = json['HNT'];
    eTHFI = json['ETHFI'];
    fARM = json['FARM'];
    sDG = json['SDG'];
    dGB = json['DGB'];
    bCH = json['BCH'];
    fKP = json['FKP'];
    jST = json['JST'];
    hOT = json['HOT'];
    aR = json['AR'];
    b3 = json['B3'];
    sEI = json['SEI'];
    sEK = json['SEK'];
    bB = json['BB'];
    qAR = json['QAR'];
    jTO = json['JTO'];
    wEMIX = json['WEMIX'];
    g = json['G'];
    rLUSD = json['RLUSD'];
    fLR = json['FLR'];
    bIGTIME = json['BIGTIME'];
    s = json['S'];
    bDT = json['BDT'];
    t = json['T'];
    lYD = json['LYD'];
    w = json['W'];
    bDX = json['BDX'];
    bABYDOGE = json['BABYDOGE'];
    sFP = json['SFP'];
    dIA = json['DIA'];
    jUP = json['JUP'];
    rSS3 = json['RSS3'];
    sNEK = json['SNEK'];
    lYX = json['LYX'];
    sGB = json['SGB'];
    sGD = json['SGD'];
    wOO = json['WOO'];
    bLUR = json['BLUR'];
    sTRK = json['STRK'];
    hRK = json['HRK'];
    dJF = json['DJF'];
    wAVES = json['WAVES'];
    dOGINME = json['DOGINME'];
    fLOKI = json['FLOKI'];
    sHP = json['SHP'];
    bGB = json['BGB'];
    sTEAKUSDC = json['STEAKUSDC'];
    sAND = json['SAND'];
    dKK = json['DKK'];
    wCFG = json['WCFG'];
    qUBIC = json['QUBIC'];
    bGN = json['BGN'];
    uMA = json['UMA'];
    fOX = json['FOX'];
    wSTETH = json['WSTETH'];
    tUSD = json['TUSD'];
    lRDS = json['LRDS'];
    cOOKIE = json['COOKIE'];
    hTG = json['HTG'];
    bHD = json['BHD'];
    pUNDIAI = json['PUNDIAI'];
    oAS = json['OAS'];
    pEAQ = json['PEAQ'];
    cOVAL = json['COVAL'];
    zETACHAIN = json['ZETACHAIN'];
    cGLD = json['CGLD'];
    uNI = json['UNI'];
    fX = json['FX'];
    hUF = json['HUF'];
    bIF = json['BIF'];
    pEPECOIN = json['PEPECOIN'];
    wELL = json['WELL'];
    bIO = json['BIO'];
    sWFTC = json['SWFTC'];
    wAVAX = json['WAVAX'];
    bIT = json['BIT'];
    gT = json['GT'];
    sKK = json['SKK'];
    sKL = json['SKL'];
    uOS = json['UOS'];
    wST = json['WST'];
    sHPING = json['SHPING'];
    bRETT = json['BRETT'];
    mYTH = json['MYTH'];
    dNT = json['DNT'];
    hT = json['HT'];
    tRUAPT = json['TRUAPT'];
    sLE = json['SLE'];
    fLOW = json['FLOW'];
    uPI = json['UPI'];
    nTGL = json['NTGL'];
    sLL = json['SLL'];
    sLP = json['SLP'];
    iD = json['ID'];
    dOG = json['DOG'];
    gIGA = json['GIGA'];
    dOP = json['DOP'];
    iO = json['IO'];
    uQC = json['UQC'];
    iP = json['IP'];
    iQ = json['IQ'];
    dOT = json['DOT'];
    oSAK = json['OSAK'];
    s1INCH = json['1INCH'];
    mAD = json['MAD'];
    tURBO = json['TURBO'];
    uNFI = json['UNFI'];
    aPEX = json['APEX'];
    fTM = json['FTM'];
    pOWR = json['POWR'];
    fTN = json['FTN'];
    cORGIAI = json['CORGIAI'];
    aRKM = json['ARKM'];
    aTOM = json['ATOM'];
    sAVAX = json['SAVAX'];
    qUICK = json['QUICK'];
    pENDLE = json['PENDLE'];
    bLZ = json['BLZ'];
    bOBA = json['BOBA'];
    tONE = json['TONE'];
    bMD = json['BMD'];
    sNT = json['SNT'];
    sNX = json['SNX'];
    kOGE = json['KOGE'];
    l3 = json['L3'];
    uSD = json['USD'];
    aPI3 = json['API3'];
    rOSE = json['ROSE'];
    sATS = json['SATS'];
    sOL = json['SOL'];
    uSR = json['USR'];
    sOS = json['SOS'];
    bNB = json['BNB'];
    oGN = json['OGN'];
    uST = json['UST'];
    cELR = json['CELR'];
    cGPT = json['CGPT'];
    bND = json['BND'];
    cELO = json['CELO'];
    tBTC = json['TBTC'];
    aUCTION = json['AUCTION'];
    lAYER = json['LAYER'];
    mANTA = json['MANTA'];
    bADGER = json['BADGER'];
    mULTI = json['MULTI'];
    aERO = json['AERO'];
    cETUS = json['CETUS'];
    sPA = json['SPA'];
    bNT = json['BNT'];
    sHDW = json['SHDW'];
    bOB = json['BOB'];
    mDL = json['MDL'];
    oHM = json['OHM'];
    mE = json['ME'];
    sPX = json['SPX'];
    mDT = json['MDT'];
    aNDY = json['ANDY'];
    aERGO = json['AERGO'];
    mOCA = json['MOCA'];
    mX = json['MX'];
    eGLD = json['EGLD'];
    pLUME = json['PLUME'];
    kAS = json['KAS'];
    tRUMP = json['TRUMP'];
    mEW = json['MEW'];
    pUNDIX = json['PUNDIX'];
    fXS = json['FXS'];
    aEVO = json['AEVO'];
    sRD = json['SRD'];
    pTGC = json['PTGC'];
    nU = json['NU'];
    fLUX = json['FLUX'];
    pRCL = json['PRCL'];
    qNT = json['QNT'];
    oM = json['OM'];
    eTHW = json['ETHW'];
    mUSE = json['MUSE'];
    eTHX = json['ETHX'];
    oP = json['OP'];
    mGA = json['MGA'];
    oKB = json['OKB'];
    wETH = json['WETH'];
    sSP = json['SSP'];
    jUPSOL = json['JUPSOL'];
    nEON = json['NEON'];
    sSV = json['SSV'];
    pI = json['PI'];
    oKT = json['OKT'];
    eTH2 = json['ETH2'];
    pAAL = json['PAAL'];
    kCS = json['KCS'];
    bUSD = json['BUSD'];
    aRPA = json['ARPA'];
    bRL = json['BRL'];
    aLCX = json['ALCX'];
    aLEX = json['ALEX'];
    sTD = json['STD'];
    sTG = json['STG'];
    iOTX = json['IOTX'];
    sHIB = json['SHIB'];
    kDA = json['KDA'];
    zAR = json['ZAR'];
    aLEO = json['ALEO'];
    sTN = json['STN'];
    bSD = json['BSD'];
    sTX = json['STX'];
    qI = json['QI'];
    bLAST = json['BLAST'];
    bSV = json['BSV'];
    iOST = json['IOST'];
    sUI = json['SUI'];
    cAKE = json['CAKE'];
    mSOL = json['MSOL'];
    oMG = json['OMG'];
    oMI = json['OMI'];
    pYUSD = json['PYUSD'];
    sUN = json['SUN'];
    bTC = json['BTC'];
    uYU = json['UYU'];
    iOTA = json['IOTA'];
    aIXBT = json['AIXBT'];
    oMR = json['OMR'];
    mIR = json['MIR'];
    kES = json['KES'];
    kET = json['KET'];
    bTN = json['BTN'];
    rONIN = json['RONIN'];
    sOLVBTC = json['SOLVBTC'];
    sVC = json['SVC'];
    bTT = json['BTT'];
    oNE = json['ONE'];
    fWOG = json['FWOG'];
    rENDER = json['RENDER'];
    oNG = json['ONG'];
    cETH = json['CETH'];
    aNKR = json['ANKR'];
    aLGO = json['ALGO'];
    sYLO = json['SYLO'];
    uZS = json['UZS'];
    sC = json['SC'];
    sD = json['SD'];
    oNT = json['ONT'];
    fLUID = json['FLUID'];
    dYM = json['DYM'];
    dYP = json['DYP'];
    mKD = json['MKD'];
    dZD = json['DZD'];
    mKR = json['MKR'];
    kGS = json['KGS'];
    iCP = json['ICP'];
    zEC = json['ZEC'];
    xAF = json['XAF'];
    nEST = json['NEST'];
    iCX = json['ICX'];
    xAG = json['XAG'];
    kMNO = json['KMNO'];
    xAI = json['XAI'];
    zEN = json['ZEN'];
    dOGE = json['DOGE'];
    sXP = json['SXP'];
    hBAR = json['HBAR'];
    xAU = json['XAU'];
    mLN = json['MLN'];
    pEPE = json['PEPE'];
    kHR = json['KHR'];
    iDR = json['IDR'];
    dOGS = json['DOGS'];
    cTSI = json['CTSI'];
    bWP = json['BWP'];
    oUSG = json['OUSG'];
    c98 = json['C98'];
    oSMO = json['OSMO'];
    nTRN = json['NTRN'];
    sYN = json['SYN'];
    mMK = json['MMK'];
    sYP = json['SYP'];
    cRPT = json['CRPT'];
    gAL = json['GAL'];
    gAS = json['GAS'];
    xCD = json['XCD'];
    mMX = json['MMX'];
    bOME = json['BOME'];
    sONIC = json['SONIC'];
    vR = json['VR'];
    xCH = json['XCH'];
    cBBTC = json['CBBTC'];
    tHETA = json['THETA'];
    xCN = json['XCN'];
    sZL = json['SZL'];
    oRN = json['ORN'];
    nEXO = json['NEXO'];
    aAVE = json['AAVE'];
    mNT = json['MNT'];
    gBP = json['GBP'];
    bONK = json['BONK'];
    bYN = json['BYN'];
    xDC = json['XDC'];
    pERP = json['PERP'];
    bYR = json['BYR'];
    bONE = json['BONE'];
    bOND = json['BOND'];
    mOG = json['MOG'];
    hYPE = json['HYPE'];
    xDR = json['XDR'];
    tIME = json['TIME'];
    bICO = json['BICO'];
    bZD = json['BZD'];
    mOP = json['MOP'];
    mONA = json['MONA'];
    bBSOL = json['BBSOL'];
    mELANIA = json['MELANIA'];
    hMSTR = json['HMSTR'];
    xEC = json['XEC'];
    pEOPLE = json['PEOPLE'];
    xT = json['XT'];
    zIL = json['ZIL'];
    xEM = json['XEM'];
    wEETH = json['WEETH'];
    tRAC = json['TRAC'];
    mPL = json['MPL'];
    wAXL = json['WAXL'];
    oOKI = json['OOKI'];
    sWELL = json['SWELL'];
    bORA = json['BORA'];
    kMF = json['KMF'];
    gEL = json['GEL'];
    zK = json['ZK'];
    rSETH = json['RSETH'];
    eETH = json['EETH'];
    uSUAL = json['USUAL'];
    kNC = json['KNC'];
    pROM = json['PROM'];
    aLEPH = json['ALEPH'];
    pONKE = json['PONKE'];
    gFI = json['GFI'];
    mRO = json['MRO'];
    mRU = json['MRU'];
    bORG = json['BORG'];
    sUPEROETHB = json['SUPEROETHB'];
    wAXP = json['WAXP'];
    sUKU = json['SUKU'];
    gGP = json['GGP'];
    vEF = json['VEF'];
    zMK = json['ZMK'];
    mTD = json['MTD'];
    kARRAT = json['KARRAT'];
    aLPH = json['ALPH'];
    mOBILE = json['MOBILE'];
    vINE = json['VINE'];
    tAO = json['TAO'];
    mORPHO = json['MORPHO'];
    mTL = json['MTL'];
    vET = json['VET'];
    vES = json['VES'];
    zMW = json['ZMW'];
    uSDG = json['USDG'];
    uSDT = json['USDT'];
    uSDCE = json['USDC.E'];
    oXT = json['OXT'];
    uSDS = json['USDS'];
    uSDP = json['USDP'];
    gHO = json['GHO'];
    iLS = json['ILS'];
    iLV = json['ILV'];
    gHS = json['GHS'];
    kPW = json['KPW'];
    uSDY = json['USDY'];
    uSDX = json['USDX'];
    mEDIA = json['MEDIA'];
    kEEP = json['KEEP'];
    cAD = json['CAD'];
    eEK = json['EEK'];
    mUR = json['MUR'];
    iMP = json['IMP'];
    uSD0 = json['USD0'];
    gIP = json['GIP'];
    bEAM = json['BEAM'];
    iMX = json['IMX'];
    cAT = json['CAT'];
    uSDE = json['USDE'];
    uSDD = json['USDD'];
    uSDC = json['USDC'];
    uSDB = json['USDB'];
    uSDA = json['USDA'];
    xMON = json['XMON'];
    rETH = json['RETH'];
    iNJ = json['INJ'];
    kRL = json['KRL'];
    vGX = json['VGX'];
    cHEX = json['CHEX'];
    mVR = json['MVR'];
    tRIBE = json['TRIBE'];
    iNR = json['INR'];
    iNV = json['INV'];
    kRW = json['KRW'];
    mWC = json['MWC'];
    xLM = json['XLM'];
    mWK = json['MWK'];
    eIGEN = json['EIGEN'];
    sUPER = json['SUPER'];
    kSM = json['KSM'];
    bSCUSD = json['BSC-USD'];
    rNDR = json['RNDR'];
    aNIME = json['ANIME'];
    gALA = json['GALA'];
    eGP = json['EGP'];
    rAD = json['RAD'];
    mOVE = json['MOVE'];
    mXC = json['MXC'];
    tEL = json['TEL'];
    mOVR = json['MOVR'];
    rAI = json['RAI'];
    xMR = json['XMR'];
    mXN = json['MXN'];
    tRIP = json['TRIP'];
    cDF = json['CDF'];
    gLM = json['GLM'];
    rAY = json['RAY'];
    bTCB = json['BTC.B'];
    fDUSD = json['FDUSD'];
    zRO = json['ZRO'];
    sAROS = json['SAROS'];
    kUB = json['KUB'];
    sSOL = json['SSOL'];
    iQD = json['IQD'];
    gMD = json['GMD'];
    rBN = json['RBN'];
    zRX = json['ZRX'];
    mYR = json['MYR'];
    sERAPH = json['SERAPH'];
    xOF = json['XOF'];
    gMT = json['GMT'];
    sWETH = json['SWETH'];
    cET = json['CET'];
    gMX = json['GMX'];
    oMNI = json['OMNI'];
    gNF = json['GNF'];
    mZN = json['MZN'];
    cFG = json['CFG'];
    iRR = json['IRR'];
    gNO = json['GNO'];
    gNT = json['GNT'];
    gNS = json['GNS'];
    xPD = json['XPD'];
    tHB = json['THB'];
    xPF = json['XPF'];
    vANRY = json['VANRY'];
    wSTUSR = json['WSTUSR'];
    bITCOIN = json['BITCOIN'];
    aBT = json['ABT'];
    cFX = json['CFX'];
    kWD = json['KWD'];
    vELO = json['VELO'];
    bINK = json['BINK'];
    xPT = json['XPT'];
    iSK = json['ISK'];
    aCH = json['ACH'];
    mINA = json['MINA'];
    tIA = json['TIA'];
    vTHO = json['VTHO'];
    dRIFT = json['DRIFT'];
    pAB = json['PAB'];
    rED = json['RED'];
    aCS = json['ACS'];
    aCT = json['ACT'];
    aCX = json['ACX'];
    rEN = json['REN'];
    eLA = json['ELA'];
    rEP = json['REP'];
    aDA = json['ADA'];
    eLF = json['ELF'];
    rEQ = json['REQ'];
    sTORJ = json['STORJ'];
    vIRTUAL = json['VIRTUAL'];
    cHF = json['CHF'];
    rARI = json['RARI'];
    rARE = json['RARE'];
    pAXG = json['PAXG'];
    pAX = json['PAX'];
    rEZ = json['REZ'];
    sTBTC = json['STBTC'];
    gPS = json['GPS'];
    xRD = json['XRD'];
    cHR = json['CHR'];
    vND = json['VND'];
    cHZ = json['CHZ'];
    kYD = json['KYD'];
    xRP = json['XRP'];
    jASMY = json['JASMY'];
    iNDEX = json['INDEX'];
    tJS = json['TJS'];
    aED = json['AED'];
    fIDA = json['FIDA'];
    h2O = json['H2O'];
    zWD = json['ZWD'];
    oCEAN = json['OCEAN'];
    qGOLD = json['QGOLD'];
    zWL = json['ZWL'];
    pCI = json['PCI'];
    eNA = json['ENA'];
    rGT = json['RGT'];
    eNJ = json['ENJ'];
    tKX = json['TKX'];
    kZT = json['KZT'];
    yFII = json['YFII'];
    dIMO = json['DIMO'];
    gRT = json['GRT'];
    aFN = json['AFN'];
    tFUEL = json['TFUEL'];
    eNS = json['ENS'];
    kAIA = json['KAIA'];
    dEGEN = json['DEGEN'];
    cKB = json['CKB'];
    lUNC = json['LUNC'];
    xTZ = json['XTZ'];
    lUNA = json['LUNA'];
    aURORA = json['AURORA'];
    aGI = json['AGI'];
    eOS = json['EOS'];
    gST = json['GST'];
    fORT = json['FORT'];
    rIF = json['RIF'];
    nAD = json['NAD'];
    fRXETH = json['FRXETH'];
    dEEP = json['DEEP'];
    tMM = json['TMM'];
    gTC = json['GTC'];
    pEN = json['PEN'];
    sOLO = json['SOLO'];
    tMT = json['TMT'];
    cLF = json['CLF'];
    tOSHI = json['TOSHI'];
    eUROC = json['EUROC'];
    sUNDOG = json['SUNDOG'];
    gTQ = json['GTQ'];
    cLP = json['CLP'];
    cPOOL = json['CPOOL'];
    tND = json['TND'];
    cLV = json['CLV'];
    xVS = json['XVS'];
    mEME = json['MEME'];
    aIC = json['AIC'];
    sFUND = json['SFUND'];
    tON = json['TON'];
    tOP = json['TOP'];
    pGK = json['PGK'];
    pNUT = json['PNUT'];
    gYEN = json['GYEN'];
    cNH = json['CNH'];
    nCT = json['NCT'];
    wLUNA = json['WLUNA'];
    eRN = json['ERN'];
    vENOM = json['VENOM'];
    vOXEL = json['VOXEL'];
    pHA = json['PHA'];
    rLC = json['RLC'];
    rLB = json['RLB'];
    cNY = json['CNY'];
    iBERA = json['IBERA'];
    pHP = json['PHP'];
    rLY = json['RLY'];
    oXOLD = json['OX_OLD'];
    cOQ = json['COQ'];
    cOP = json['COP'];
    hOPR = json['HOPR'];
    aKT = json['AKT'];
    cOW = json['COW'];
    gLMR = json['GLMR'];
    oRAI = json['ORAI'];
    xYO = json['XYO'];
    eTB = json['ETB'];
    eTC = json['ETC'];
    vUV = json['VUV'];
    lAK = json['LAK'];
    eTH = json['ETH'];
    nEO = json['NEO'];
    aLL = json['ALL'];
    hIGH = json['HIGH'];
    tRB = json['TRB'];
    aLT = json['ALT'];
    oRDI = json['ORDI'];
    gYD = json['GYD'];
    oSETH = json['OSETH'];
    tRU = json['TRU'];
    vVV = json['VVV'];
    wBNB = json['WBNB'];
    aMD = json['AMD'];
    gRASS = json['GRASS'];
    dREP = json['DREP'];
    eTHDYDX = json['ETHDYDX'];
    tRY = json['TRY'];
    lBP = json['LBP'];
    tRX = json['TRX'];
    nFT = json['NFT'];
    eDGE = json['EDGE'];
    eUR = json['EUR'];
    aMP = json['AMP'];
    mEOW = json['MEOW'];
    oRCA = json['ORCA'];
    uSTC = json['USTC'];
    bERA = json['BERA'];
    rON = json['RON'];
    nGN = json['NGN'];
    tST = json['TST'];
    cRC = json['CRC'];
    pKR = json['PKR'];
    vANA = json['VANA'];
    cRE = json['CRE'];
    lUSD = json['LUSD'];
    aNG = json['ANG'];
    sPELL = json['SPELL'];
    lCX = json['LCX'];
    cRO = json['CRO'];
    pLA = json['PLA'];
    tTD = json['TTD'];
    sFRXETH = json['SFRXETH'];
    cRV = json['CRV'];
    mNDE = json['MNDE'];
    aNT = json['ANT'];
    bAKE = json['BAKE'];
    rPL = json['RPL'];
    aOA = json['AOA'];
    pLN = json['PLN'];
    lDO = json['LDO'];
    mAGIC = json['MAGIC'];
    aLICE = json['ALICE'];
    cORECHAIN = json['CORECHAIN'];
    pLU = json['PLU'];
    sEAM = json['SEAM'];
    aMAPT = json['AMAPT'];
    cTC = json['CTC'];
    nIO = json['NIO'];
    aPE = json['APE'];
    lEO = json['LEO'];
    mCO2 = json['MCO2'];
    s00 = json['00'];
    mATIC = json['MATIC'];
    aPT = json['APT'];
    aPU = json['APU'];
    cTX = json['CTX'];
    pNG = json['PNG'];
    tVK = json['TVK'];
    uSYC = json['USYC'];
    cUC = json['CUC'];
    sOLVBTCBBN = json['SOLVBTC.BBN'];
    pYTH = json['PYTH'];
    aI16Z = json['AI16Z'];
    cUP = json['CUP'];
    tWD = json['TWD'];
    rSD = json['RSD'];
    fRAX = json['FRAX'];
    vRSC = json['VRSC'];
    wBETH = json['WBETH'];
    mETH = json['METH'];
    bAND = json['BAND'];
    pOL = json['POL'];
    aSTR = json['ASTR'];
    nKN = json['NKN'];
    rSR = json['RSR'];
    tWT = json['TWT'];
    pARTI = json['PARTI'];
    aRB = json['ARB'];
    cVC = json['CVC'];
    aRC = json['ARC'];
    vARA = json['VARA'];
    cVE = json['CVE'];
    sUSDS = json['SUSDS'];
    aRK = json['ARK'];
    lOKA = json['LOKA'];
    bTSE = json['BTSE'];
    cHEEMS = json['CHEEMS'];
    aRS = json['ARS'];
    cVX = json['CVX'];
    lBTC = json['LBTC'];
    mPLX = json['MPLX'];
    sUSHI = json['SUSHI'];
    aBTC = json['ABTC'];
    wBTC = json['WBTC'];
    aSM = json['ASM'];
    rUB = json['RUB'];
    aST = json['AST'];
    bNSOL = json['BNSOL'];
    mANA = json['MANA'];
    cSPR = json['CSPR'];
    aGENTFUN = json['AGENTFUN'];
    aTA = json['ATA'];
    nMR = json['NMR'];
    jEP = json['JEP'];
    nMT = json['NMT'];
    aTH = json['ATH'];
    lIT = json['LIT'];
    cGETHHASHKEY = json['CGETH.HASHKEY'];
    tNSR = json['TNSR'];
    pOLYX = json['POLYX'];
    dESO = json['DESO'];
    lOOM = json['LOOM'];
    rVN = json['RVN'];
    pRO = json['PRO'];
    tZS = json['TZS'];
    pRQ = json['PRQ'];
    oNDO = json['ONDO'];
    aUD = json['AUD'];
    uSDT0 = json['USDT0'];
    bUIDL = json['BUIDL'];
    dEUSD = json['DEUSD'];
    rWF = json['RWF'];
    kAVA = json['KAVA'];
    nOK = json['NOK'];
    sTRAX = json['STRAX'];
    lKR = json['LKR'];
    nOT = json['NOT'];
    nOS = json['NOS'];
    cZK = json['CZK'];
    aVT = json['AVT'];
    nPC = json['NPC'];
    eURC = json['EURC'];
    wAL = json['WAL'];
    yER = json['YER'];
    lSETH = json['LSETH'];
    sUSDE = json['SUSDE'];
    mASK = json['MASK'];
    aWG = json['AWG'];
    nPR = json['NPR'];
    pRIME = json['PRIME'];
    yFI = json['YFI'];
    mOODENG = json['MOODENG'];
    cWBTC = json['CWBTC'];
    kEYCAT = json['KEYCAT'];
    pOPCAT = json['POPCAT'];
    wBT = json['WBT'];
    lQTY = json['LQTY'];
    oLAS = json['OLAS'];
    fAI = json['FAI'];
    zETA = json['ZETA'];
    aXL = json['AXL'];
    yGG = json['YGG'];
    fARTCOIN = json['FARTCOIN'];
    cLBTC = json['CLBTC'];
    aXS = json['AXS'];
    sYRUP = json['SYRUP'];
    hONEY = json['HONEY'];
    s0X0 = json['0X0'];
    cOMP = json['COMP'];
    hFT = json['HFT'];
    wAMPL = json['WAMPL'];
    uXLINK = json['UXLINK'];
    cMETH = json['CMETH'];
    rUNE = json['RUNE'];
    pURR = json['PURR'];
    zEUS = json['ZEUS'];
    pENGU = json['PENGU'];
    dEXT = json['DEXT'];
    fORTH = json['FORTH'];
    gHST = json['GHST'];
    mATH = json['MATH'];
    iDEX = json['IDEX'];
    dEXE = json['DEXE'];
    aVAX = json['AVAX'];
    aZN = json['AZN'];
    aMPL = json['AMPL'];
    gOAT = json['GOAT'];
    uAH = json['UAH'];
    bANANA = json['BANANA'];
    lPT = json['LPT'];
    kAITO = json['KAITO'];
    eZETH = json['EZETH'];
    gODS = json['GODS'];
    pYG = json['PYG'];
    jMD = json['JMD'];
    xAUT = json['XAUT'];
    pYR = json['PYR'];
    bTRST = json['BTRST'];
    dAG = json['DAG'];
    bERASTONE = json['BERASTONE'];
    dAI = json['DAI'];
    aVAIL = json['AVAIL'];
    dAR = json['DAR'];
    fET = json['FET'];
    cBETH = json['CBETH'];
    lRC = json['LRC'];
    rEPV2 = json['REPV2'];
    lRD = json['LRD'];
    cORE = json['CORE'];
    dASH = json['DASH'];
    jOD = json['JOD'];
    gUSD = json['GUSD'];
    hKD = json['HKD'];
    jOE = json['JOE'];
    aRSMEP = json['ARSMEP'];
    lSL = json['LSL'];
    lSK = json['LSK'];
    pUMPBTC = json['PUMPBTC'];
    sAFE = json['SAFE'];
    dCR = json['DCR'];
    wIF = json['WIF'];
    lTC = json['LTC'];
    mETIS = json['METIS'];
    eCOIN = json['ECOIN'];
    sTETH = json['STETH'];
    nXM = json['NXM'];
    lTL = json['LTL'];
    sAR = json['SAR'];
    dYDX = json['DYDX'];
    aGIX = json['AGIX'];
    pOND = json['POND'];
    jPY = json['JPY'];
    sBD = json['SBD'];
    gRIFFAIN = json['GRIFFAIN'];
    dDX = json['DDX'];
    lINK = json['LINK'];
    qTUM = json['QTUM'];
    wILD = json['WILD'];
    pOLS = json['POLS'];
    fIL = json['FIL'];
    pOLY = json['POLY'];
    eBTC = json['EBTC'];
    bAL = json['BAL'];
    bAM = json['BAM'];
    bAN = json['BAN'];
    fIS = json['FIS'];
    bAT = json['BAT'];
    nZD = json['NZD'];
    cOTI = json['COTI'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AGLD'] = this.aGLD;
    data['FJD'] = this.fJD;
    data['STPT'] = this.sTPT;
    data['LVL'] = this.lVL;
    data['SCR'] = this.sCR;
    data['BBD'] = this.bBD;
    data['HNL'] = this.hNL;
    data['UGX'] = this.uGX;
    data['KUJI'] = this.kUJI;
    data['NEAR'] = this.nEAR;
    data['AIOZ'] = this.aIOZ;
    data['AUDIO'] = this.aUDIO;
    data['WLD'] = this.wLD;
    data['HNT'] = this.hNT;
    data['ETHFI'] = this.eTHFI;
    data['FARM'] = this.fARM;
    data['SDG'] = this.sDG;
    data['DGB'] = this.dGB;
    data['BCH'] = this.bCH;
    data['FKP'] = this.fKP;
    data['JST'] = this.jST;
    data['HOT'] = this.hOT;
    data['AR'] = this.aR;
    data['B3'] = this.b3;
    data['SEI'] = this.sEI;
    data['SEK'] = this.sEK;
    data['BB'] = this.bB;
    data['QAR'] = this.qAR;
    data['JTO'] = this.jTO;
    data['WEMIX'] = this.wEMIX;
    data['G'] = this.g;
    data['RLUSD'] = this.rLUSD;
    data['FLR'] = this.fLR;
    data['BIGTIME'] = this.bIGTIME;
    data['S'] = this.s;
    data['BDT'] = this.bDT;
    data['T'] = this.t;
    data['LYD'] = this.lYD;
    data['W'] = this.w;
    data['BDX'] = this.bDX;
    data['BABYDOGE'] = this.bABYDOGE;
    data['SFP'] = this.sFP;
    data['DIA'] = this.dIA;
    data['JUP'] = this.jUP;
    data['RSS3'] = this.rSS3;
    data['SNEK'] = this.sNEK;
    data['LYX'] = this.lYX;
    data['SGB'] = this.sGB;
    data['SGD'] = this.sGD;
    data['WOO'] = this.wOO;
    data['BLUR'] = this.bLUR;
    data['STRK'] = this.sTRK;
    data['HRK'] = this.hRK;
    data['DJF'] = this.dJF;
    data['WAVES'] = this.wAVES;
    data['DOGINME'] = this.dOGINME;
    data['FLOKI'] = this.fLOKI;
    data['SHP'] = this.sHP;
    data['BGB'] = this.bGB;
    data['STEAKUSDC'] = this.sTEAKUSDC;
    data['SAND'] = this.sAND;
    data['DKK'] = this.dKK;
    data['WCFG'] = this.wCFG;
    data['QUBIC'] = this.qUBIC;
    data['BGN'] = this.bGN;
    data['UMA'] = this.uMA;
    data['FOX'] = this.fOX;
    data['WSTETH'] = this.wSTETH;
    data['TUSD'] = this.tUSD;
    data['LRDS'] = this.lRDS;
    data['COOKIE'] = this.cOOKIE;
    data['HTG'] = this.hTG;
    data['BHD'] = this.bHD;
    data['PUNDIAI'] = this.pUNDIAI;
    data['OAS'] = this.oAS;
    data['PEAQ'] = this.pEAQ;
    data['COVAL'] = this.cOVAL;
    data['ZETACHAIN'] = this.zETACHAIN;
    data['CGLD'] = this.cGLD;
    data['UNI'] = this.uNI;
    data['FX'] = this.fX;
    data['HUF'] = this.hUF;
    data['BIF'] = this.bIF;
    data['PEPECOIN'] = this.pEPECOIN;
    data['WELL'] = this.wELL;
    data['BIO'] = this.bIO;
    data['SWFTC'] = this.sWFTC;
    data['WAVAX'] = this.wAVAX;
    data['BIT'] = this.bIT;
    data['GT'] = this.gT;
    data['SKK'] = this.sKK;
    data['SKL'] = this.sKL;
    data['UOS'] = this.uOS;
    data['WST'] = this.wST;
    data['SHPING'] = this.sHPING;
    data['BRETT'] = this.bRETT;
    data['MYTH'] = this.mYTH;
    data['DNT'] = this.dNT;
    data['HT'] = this.hT;
    data['TRUAPT'] = this.tRUAPT;
    data['SLE'] = this.sLE;
    data['FLOW'] = this.fLOW;
    data['UPI'] = this.uPI;
    data['NTGL'] = this.nTGL;
    data['SLL'] = this.sLL;
    data['SLP'] = this.sLP;
    data['ID'] = this.iD;
    data['DOG'] = this.dOG;
    data['GIGA'] = this.gIGA;
    data['DOP'] = this.dOP;
    data['IO'] = this.iO;
    data['UQC'] = this.uQC;
    data['IP'] = this.iP;
    data['IQ'] = this.iQ;
    data['DOT'] = this.dOT;
    data['OSAK'] = this.oSAK;
    data['1INCH'] = this.s1INCH;
    data['MAD'] = this.mAD;
    data['TURBO'] = this.tURBO;
    data['UNFI'] = this.uNFI;
    data['APEX'] = this.aPEX;
    data['FTM'] = this.fTM;
    data['POWR'] = this.pOWR;
    data['FTN'] = this.fTN;
    data['CORGIAI'] = this.cORGIAI;
    data['ARKM'] = this.aRKM;
    data['ATOM'] = this.aTOM;
    data['SAVAX'] = this.sAVAX;
    data['QUICK'] = this.qUICK;
    data['PENDLE'] = this.pENDLE;
    data['BLZ'] = this.bLZ;
    data['BOBA'] = this.bOBA;
    data['TONE'] = this.tONE;
    data['BMD'] = this.bMD;
    data['SNT'] = this.sNT;
    data['SNX'] = this.sNX;
    data['KOGE'] = this.kOGE;
    data['L3'] = this.l3;
    data['USD'] = this.uSD;
    data['API3'] = this.aPI3;
    data['ROSE'] = this.rOSE;
    data['SATS'] = this.sATS;
    data['SOL'] = this.sOL;
    data['USR'] = this.uSR;
    data['SOS'] = this.sOS;
    data['BNB'] = this.bNB;
    data['OGN'] = this.oGN;
    data['UST'] = this.uST;
    data['CELR'] = this.cELR;
    data['CGPT'] = this.cGPT;
    data['BND'] = this.bND;
    data['CELO'] = this.cELO;
    data['TBTC'] = this.tBTC;
    data['AUCTION'] = this.aUCTION;
    data['LAYER'] = this.lAYER;
    data['MANTA'] = this.mANTA;
    data['BADGER'] = this.bADGER;
    data['MULTI'] = this.mULTI;
    data['AERO'] = this.aERO;
    data['CETUS'] = this.cETUS;
    data['SPA'] = this.sPA;
    data['BNT'] = this.bNT;
    data['SHDW'] = this.sHDW;
    data['BOB'] = this.bOB;
    data['MDL'] = this.mDL;
    data['OHM'] = this.oHM;
    data['ME'] = this.mE;
    data['SPX'] = this.sPX;
    data['MDT'] = this.mDT;
    data['ANDY'] = this.aNDY;
    data['AERGO'] = this.aERGO;
    data['MOCA'] = this.mOCA;
    data['MX'] = this.mX;
    data['EGLD'] = this.eGLD;
    data['PLUME'] = this.pLUME;
    data['KAS'] = this.kAS;
    data['TRUMP'] = this.tRUMP;
    data['MEW'] = this.mEW;
    data['PUNDIX'] = this.pUNDIX;
    data['FXS'] = this.fXS;
    data['AEVO'] = this.aEVO;
    data['SRD'] = this.sRD;
    data['PTGC'] = this.pTGC;
    data['NU'] = this.nU;
    data['FLUX'] = this.fLUX;
    data['PRCL'] = this.pRCL;
    data['QNT'] = this.qNT;
    data['OM'] = this.oM;
    data['ETHW'] = this.eTHW;
    data['MUSE'] = this.mUSE;
    data['ETHX'] = this.eTHX;
    data['OP'] = this.oP;
    data['MGA'] = this.mGA;
    data['OKB'] = this.oKB;
    data['WETH'] = this.wETH;
    data['SSP'] = this.sSP;
    data['JUPSOL'] = this.jUPSOL;
    data['NEON'] = this.nEON;
    data['SSV'] = this.sSV;
    data['PI'] = this.pI;
    data['OKT'] = this.oKT;
    data['ETH2'] = this.eTH2;
    data['PAAL'] = this.pAAL;
    data['KCS'] = this.kCS;
    data['BUSD'] = this.bUSD;
    data['ARPA'] = this.aRPA;
    data['BRL'] = this.bRL;
    data['ALCX'] = this.aLCX;
    data['ALEX'] = this.aLEX;
    data['STD'] = this.sTD;
    data['STG'] = this.sTG;
    data['IOTX'] = this.iOTX;
    data['SHIB'] = this.sHIB;
    data['KDA'] = this.kDA;
    data['ZAR'] = this.zAR;
    data['ALEO'] = this.aLEO;
    data['STN'] = this.sTN;
    data['BSD'] = this.bSD;
    data['STX'] = this.sTX;
    data['QI'] = this.qI;
    data['BLAST'] = this.bLAST;
    data['BSV'] = this.bSV;
    data['IOST'] = this.iOST;
    data['SUI'] = this.sUI;
    data['CAKE'] = this.cAKE;
    data['MSOL'] = this.mSOL;
    data['OMG'] = this.oMG;
    data['OMI'] = this.oMI;
    data['PYUSD'] = this.pYUSD;
    data['SUN'] = this.sUN;
    data['BTC'] = this.bTC;
    data['UYU'] = this.uYU;
    data['IOTA'] = this.iOTA;
    data['AIXBT'] = this.aIXBT;
    data['OMR'] = this.oMR;
    data['MIR'] = this.mIR;
    data['KES'] = this.kES;
    data['KET'] = this.kET;
    data['BTN'] = this.bTN;
    data['RONIN'] = this.rONIN;
    data['SOLVBTC'] = this.sOLVBTC;
    data['SVC'] = this.sVC;
    data['BTT'] = this.bTT;
    data['ONE'] = this.oNE;
    data['FWOG'] = this.fWOG;
    data['RENDER'] = this.rENDER;
    data['ONG'] = this.oNG;
    data['CETH'] = this.cETH;
    data['ANKR'] = this.aNKR;
    data['ALGO'] = this.aLGO;
    data['SYLO'] = this.sYLO;
    data['UZS'] = this.uZS;
    data['SC'] = this.sC;
    data['SD'] = this.sD;
    data['ONT'] = this.oNT;
    data['FLUID'] = this.fLUID;
    data['DYM'] = this.dYM;
    data['DYP'] = this.dYP;
    data['MKD'] = this.mKD;
    data['DZD'] = this.dZD;
    data['MKR'] = this.mKR;
    data['KGS'] = this.kGS;
    data['ICP'] = this.iCP;
    data['ZEC'] = this.zEC;
    data['XAF'] = this.xAF;
    data['NEST'] = this.nEST;
    data['ICX'] = this.iCX;
    data['XAG'] = this.xAG;
    data['KMNO'] = this.kMNO;
    data['XAI'] = this.xAI;
    data['ZEN'] = this.zEN;
    data['DOGE'] = this.dOGE;
    data['SXP'] = this.sXP;
    data['HBAR'] = this.hBAR;
    data['XAU'] = this.xAU;
    data['MLN'] = this.mLN;
    data['PEPE'] = this.pEPE;
    data['KHR'] = this.kHR;
    data['IDR'] = this.iDR;
    data['DOGS'] = this.dOGS;
    data['CTSI'] = this.cTSI;
    data['BWP'] = this.bWP;
    data['OUSG'] = this.oUSG;
    data['C98'] = this.c98;
    data['OSMO'] = this.oSMO;
    data['NTRN'] = this.nTRN;
    data['SYN'] = this.sYN;
    data['MMK'] = this.mMK;
    data['SYP'] = this.sYP;
    data['CRPT'] = this.cRPT;
    data['GAL'] = this.gAL;
    data['GAS'] = this.gAS;
    data['XCD'] = this.xCD;
    data['MMX'] = this.mMX;
    data['BOME'] = this.bOME;
    data['SONIC'] = this.sONIC;
    data['VR'] = this.vR;
    data['XCH'] = this.xCH;
    data['CBBTC'] = this.cBBTC;
    data['THETA'] = this.tHETA;
    data['XCN'] = this.xCN;
    data['SZL'] = this.sZL;
    data['ORN'] = this.oRN;
    data['NEXO'] = this.nEXO;
    data['AAVE'] = this.aAVE;
    data['MNT'] = this.mNT;
    data['GBP'] = this.gBP;
    data['BONK'] = this.bONK;
    data['BYN'] = this.bYN;
    data['XDC'] = this.xDC;
    data['PERP'] = this.pERP;
    data['BYR'] = this.bYR;
    data['BONE'] = this.bONE;
    data['BOND'] = this.bOND;
    data['MOG'] = this.mOG;
    data['HYPE'] = this.hYPE;
    data['XDR'] = this.xDR;
    data['TIME'] = this.tIME;
    data['BICO'] = this.bICO;
    data['BZD'] = this.bZD;
    data['MOP'] = this.mOP;
    data['MONA'] = this.mONA;
    data['BBSOL'] = this.bBSOL;
    data['MELANIA'] = this.mELANIA;
    data['HMSTR'] = this.hMSTR;
    data['XEC'] = this.xEC;
    data['PEOPLE'] = this.pEOPLE;
    data['XT'] = this.xT;
    data['ZIL'] = this.zIL;
    data['XEM'] = this.xEM;
    data['WEETH'] = this.wEETH;
    data['TRAC'] = this.tRAC;
    data['MPL'] = this.mPL;
    data['WAXL'] = this.wAXL;
    data['OOKI'] = this.oOKI;
    data['SWELL'] = this.sWELL;
    data['BORA'] = this.bORA;
    data['KMF'] = this.kMF;
    data['GEL'] = this.gEL;
    data['ZK'] = this.zK;
    data['RSETH'] = this.rSETH;
    data['EETH'] = this.eETH;
    data['USUAL'] = this.uSUAL;
    data['KNC'] = this.kNC;
    data['PROM'] = this.pROM;
    data['ALEPH'] = this.aLEPH;
    data['PONKE'] = this.pONKE;
    data['GFI'] = this.gFI;
    data['MRO'] = this.mRO;
    data['MRU'] = this.mRU;
    data['BORG'] = this.bORG;
    data['SUPEROETHB'] = this.sUPEROETHB;
    data['WAXP'] = this.wAXP;
    data['SUKU'] = this.sUKU;
    data['GGP'] = this.gGP;
    data['VEF'] = this.vEF;
    data['ZMK'] = this.zMK;
    data['MTD'] = this.mTD;
    data['KARRAT'] = this.kARRAT;
    data['ALPH'] = this.aLPH;
    data['MOBILE'] = this.mOBILE;
    data['VINE'] = this.vINE;
    data['TAO'] = this.tAO;
    data['MORPHO'] = this.mORPHO;
    data['MTL'] = this.mTL;
    data['VET'] = this.vET;
    data['VES'] = this.vES;
    data['ZMW'] = this.zMW;
    data['USDG'] = this.uSDG;
    data['USDT'] = this.uSDT;
    data['USDC.E'] = this.uSDCE;
    data['OXT'] = this.oXT;
    data['USDS'] = this.uSDS;
    data['USDP'] = this.uSDP;
    data['GHO'] = this.gHO;
    data['ILS'] = this.iLS;
    data['ILV'] = this.iLV;
    data['GHS'] = this.gHS;
    data['KPW'] = this.kPW;
    data['USDY'] = this.uSDY;
    data['USDX'] = this.uSDX;
    data['MEDIA'] = this.mEDIA;
    data['KEEP'] = this.kEEP;
    data['CAD'] = this.cAD;
    data['EEK'] = this.eEK;
    data['MUR'] = this.mUR;
    data['IMP'] = this.iMP;
    data['USD0'] = this.uSD0;
    data['GIP'] = this.gIP;
    data['BEAM'] = this.bEAM;
    data['IMX'] = this.iMX;
    data['CAT'] = this.cAT;
    data['USDE'] = this.uSDE;
    data['USDD'] = this.uSDD;
    data['USDC'] = this.uSDC;
    data['USDB'] = this.uSDB;
    data['USDA'] = this.uSDA;
    data['XMON'] = this.xMON;
    data['RETH'] = this.rETH;
    data['INJ'] = this.iNJ;
    data['KRL'] = this.kRL;
    data['VGX'] = this.vGX;
    data['CHEX'] = this.cHEX;
    data['MVR'] = this.mVR;
    data['TRIBE'] = this.tRIBE;
    data['INR'] = this.iNR;
    data['INV'] = this.iNV;
    data['KRW'] = this.kRW;
    data['MWC'] = this.mWC;
    data['XLM'] = this.xLM;
    data['MWK'] = this.mWK;
    data['EIGEN'] = this.eIGEN;
    data['SUPER'] = this.sUPER;
    data['KSM'] = this.kSM;
    data['BSC-USD'] = this.bSCUSD;
    data['RNDR'] = this.rNDR;
    data['ANIME'] = this.aNIME;
    data['GALA'] = this.gALA;
    data['EGP'] = this.eGP;
    data['RAD'] = this.rAD;
    data['MOVE'] = this.mOVE;
    data['MXC'] = this.mXC;
    data['TEL'] = this.tEL;
    data['MOVR'] = this.mOVR;
    data['RAI'] = this.rAI;
    data['XMR'] = this.xMR;
    data['MXN'] = this.mXN;
    data['TRIP'] = this.tRIP;
    data['CDF'] = this.cDF;
    data['GLM'] = this.gLM;
    data['RAY'] = this.rAY;
    data['BTC.B'] = this.bTCB;
    data['FDUSD'] = this.fDUSD;
    data['ZRO'] = this.zRO;
    data['SAROS'] = this.sAROS;
    data['KUB'] = this.kUB;
    data['SSOL'] = this.sSOL;
    data['IQD'] = this.iQD;
    data['GMD'] = this.gMD;
    data['RBN'] = this.rBN;
    data['ZRX'] = this.zRX;
    data['MYR'] = this.mYR;
    data['SERAPH'] = this.sERAPH;
    data['XOF'] = this.xOF;
    data['GMT'] = this.gMT;
    data['SWETH'] = this.sWETH;
    data['CET'] = this.cET;
    data['GMX'] = this.gMX;
    data['OMNI'] = this.oMNI;
    data['GNF'] = this.gNF;
    data['MZN'] = this.mZN;
    data['CFG'] = this.cFG;
    data['IRR'] = this.iRR;
    data['GNO'] = this.gNO;
    data['GNT'] = this.gNT;
    data['GNS'] = this.gNS;
    data['XPD'] = this.xPD;
    data['THB'] = this.tHB;
    data['XPF'] = this.xPF;
    data['VANRY'] = this.vANRY;
    data['WSTUSR'] = this.wSTUSR;
    data['BITCOIN'] = this.bITCOIN;
    data['ABT'] = this.aBT;
    data['CFX'] = this.cFX;
    data['KWD'] = this.kWD;
    data['VELO'] = this.vELO;
    data['BINK'] = this.bINK;
    data['XPT'] = this.xPT;
    data['ISK'] = this.iSK;
    data['ACH'] = this.aCH;
    data['MINA'] = this.mINA;
    data['TIA'] = this.tIA;
    data['VTHO'] = this.vTHO;
    data['DRIFT'] = this.dRIFT;
    data['PAB'] = this.pAB;
    data['RED'] = this.rED;
    data['ACS'] = this.aCS;
    data['ACT'] = this.aCT;
    data['ACX'] = this.aCX;
    data['REN'] = this.rEN;
    data['ELA'] = this.eLA;
    data['REP'] = this.rEP;
    data['ADA'] = this.aDA;
    data['ELF'] = this.eLF;
    data['REQ'] = this.rEQ;
    data['STORJ'] = this.sTORJ;
    data['VIRTUAL'] = this.vIRTUAL;
    data['CHF'] = this.cHF;
    data['RARI'] = this.rARI;
    data['RARE'] = this.rARE;
    data['PAXG'] = this.pAXG;
    data['PAX'] = this.pAX;
    data['REZ'] = this.rEZ;
    data['STBTC'] = this.sTBTC;
    data['GPS'] = this.gPS;
    data['XRD'] = this.xRD;
    data['CHR'] = this.cHR;
    data['VND'] = this.vND;
    data['CHZ'] = this.cHZ;
    data['KYD'] = this.kYD;
    data['XRP'] = this.xRP;
    data['JASMY'] = this.jASMY;
    data['INDEX'] = this.iNDEX;
    data['TJS'] = this.tJS;
    data['AED'] = this.aED;
    data['FIDA'] = this.fIDA;
    data['H2O'] = this.h2O;
    data['ZWD'] = this.zWD;
    data['OCEAN'] = this.oCEAN;
    data['QGOLD'] = this.qGOLD;
    data['ZWL'] = this.zWL;
    data['PCI'] = this.pCI;
    data['ENA'] = this.eNA;
    data['RGT'] = this.rGT;
    data['ENJ'] = this.eNJ;
    data['TKX'] = this.tKX;
    data['KZT'] = this.kZT;
    data['YFII'] = this.yFII;
    data['DIMO'] = this.dIMO;
    data['GRT'] = this.gRT;
    data['AFN'] = this.aFN;
    data['TFUEL'] = this.tFUEL;
    data['ENS'] = this.eNS;
    data['KAIA'] = this.kAIA;
    data['DEGEN'] = this.dEGEN;
    data['CKB'] = this.cKB;
    data['LUNC'] = this.lUNC;
    data['XTZ'] = this.xTZ;
    data['LUNA'] = this.lUNA;
    data['AURORA'] = this.aURORA;
    data['AGI'] = this.aGI;
    data['EOS'] = this.eOS;
    data['GST'] = this.gST;
    data['FORT'] = this.fORT;
    data['RIF'] = this.rIF;
    data['NAD'] = this.nAD;
    data['FRXETH'] = this.fRXETH;
    data['DEEP'] = this.dEEP;
    data['TMM'] = this.tMM;
    data['GTC'] = this.gTC;
    data['PEN'] = this.pEN;
    data['SOLO'] = this.sOLO;
    data['TMT'] = this.tMT;
    data['CLF'] = this.cLF;
    data['TOSHI'] = this.tOSHI;
    data['EUROC'] = this.eUROC;
    data['SUNDOG'] = this.sUNDOG;
    data['GTQ'] = this.gTQ;
    data['CLP'] = this.cLP;
    data['CPOOL'] = this.cPOOL;
    data['TND'] = this.tND;
    data['CLV'] = this.cLV;
    data['XVS'] = this.xVS;
    data['MEME'] = this.mEME;
    data['AIC'] = this.aIC;
    data['SFUND'] = this.sFUND;
    data['TON'] = this.tON;
    data['TOP'] = this.tOP;
    data['PGK'] = this.pGK;
    data['PNUT'] = this.pNUT;
    data['GYEN'] = this.gYEN;
    data['CNH'] = this.cNH;
    data['NCT'] = this.nCT;
    data['WLUNA'] = this.wLUNA;
    data['ERN'] = this.eRN;
    data['VENOM'] = this.vENOM;
    data['VOXEL'] = this.vOXEL;
    data['PHA'] = this.pHA;
    data['RLC'] = this.rLC;
    data['RLB'] = this.rLB;
    data['CNY'] = this.cNY;
    data['IBERA'] = this.iBERA;
    data['PHP'] = this.pHP;
    data['RLY'] = this.rLY;
    data['OX_OLD'] = this.oXOLD;
    data['COQ'] = this.cOQ;
    data['COP'] = this.cOP;
    data['HOPR'] = this.hOPR;
    data['AKT'] = this.aKT;
    data['COW'] = this.cOW;
    data['GLMR'] = this.gLMR;
    data['ORAI'] = this.oRAI;
    data['XYO'] = this.xYO;
    data['ETB'] = this.eTB;
    data['ETC'] = this.eTC;
    data['VUV'] = this.vUV;
    data['LAK'] = this.lAK;
    data['ETH'] = this.eTH;
    data['NEO'] = this.nEO;
    data['ALL'] = this.aLL;
    data['HIGH'] = this.hIGH;
    data['TRB'] = this.tRB;
    data['ALT'] = this.aLT;
    data['ORDI'] = this.oRDI;
    data['GYD'] = this.gYD;
    data['OSETH'] = this.oSETH;
    data['TRU'] = this.tRU;
    data['VVV'] = this.vVV;
    data['WBNB'] = this.wBNB;
    data['AMD'] = this.aMD;
    data['GRASS'] = this.gRASS;
    data['DREP'] = this.dREP;
    data['ETHDYDX'] = this.eTHDYDX;
    data['TRY'] = this.tRY;
    data['LBP'] = this.lBP;
    data['TRX'] = this.tRX;
    data['NFT'] = this.nFT;
    data['EDGE'] = this.eDGE;
    data['EUR'] = this.eUR;
    data['AMP'] = this.aMP;
    data['MEOW'] = this.mEOW;
    data['ORCA'] = this.oRCA;
    data['USTC'] = this.uSTC;
    data['BERA'] = this.bERA;
    data['RON'] = this.rON;
    data['NGN'] = this.nGN;
    data['TST'] = this.tST;
    data['CRC'] = this.cRC;
    data['PKR'] = this.pKR;
    data['VANA'] = this.vANA;
    data['CRE'] = this.cRE;
    data['LUSD'] = this.lUSD;
    data['ANG'] = this.aNG;
    data['SPELL'] = this.sPELL;
    data['LCX'] = this.lCX;
    data['CRO'] = this.cRO;
    data['PLA'] = this.pLA;
    data['TTD'] = this.tTD;
    data['SFRXETH'] = this.sFRXETH;
    data['CRV'] = this.cRV;
    data['MNDE'] = this.mNDE;
    data['ANT'] = this.aNT;
    data['BAKE'] = this.bAKE;
    data['RPL'] = this.rPL;
    data['AOA'] = this.aOA;
    data['PLN'] = this.pLN;
    data['LDO'] = this.lDO;
    data['MAGIC'] = this.mAGIC;
    data['ALICE'] = this.aLICE;
    data['CORECHAIN'] = this.cORECHAIN;
    data['PLU'] = this.pLU;
    data['SEAM'] = this.sEAM;
    data['AMAPT'] = this.aMAPT;
    data['CTC'] = this.cTC;
    data['NIO'] = this.nIO;
    data['APE'] = this.aPE;
    data['LEO'] = this.lEO;
    data['MCO2'] = this.mCO2;
    data['00'] = this.s00;
    data['MATIC'] = this.mATIC;
    data['APT'] = this.aPT;
    data['APU'] = this.aPU;
    data['CTX'] = this.cTX;
    data['PNG'] = this.pNG;
    data['TVK'] = this.tVK;
    data['USYC'] = this.uSYC;
    data['CUC'] = this.cUC;
    data['SOLVBTC.BBN'] = this.sOLVBTCBBN;
    data['PYTH'] = this.pYTH;
    data['AI16Z'] = this.aI16Z;
    data['CUP'] = this.cUP;
    data['TWD'] = this.tWD;
    data['RSD'] = this.rSD;
    data['FRAX'] = this.fRAX;
    data['VRSC'] = this.vRSC;
    data['WBETH'] = this.wBETH;
    data['METH'] = this.mETH;
    data['BAND'] = this.bAND;
    data['POL'] = this.pOL;
    data['ASTR'] = this.aSTR;
    data['NKN'] = this.nKN;
    data['RSR'] = this.rSR;
    data['TWT'] = this.tWT;
    data['PARTI'] = this.pARTI;
    data['ARB'] = this.aRB;
    data['CVC'] = this.cVC;
    data['ARC'] = this.aRC;
    data['VARA'] = this.vARA;
    data['CVE'] = this.cVE;
    data['SUSDS'] = this.sUSDS;
    data['ARK'] = this.aRK;
    data['LOKA'] = this.lOKA;
    data['BTSE'] = this.bTSE;
    data['CHEEMS'] = this.cHEEMS;
    data['ARS'] = this.aRS;
    data['CVX'] = this.cVX;
    data['LBTC'] = this.lBTC;
    data['MPLX'] = this.mPLX;
    data['SUSHI'] = this.sUSHI;
    data['ABTC'] = this.aBTC;
    data['WBTC'] = this.wBTC;
    data['ASM'] = this.aSM;
    data['RUB'] = this.rUB;
    data['AST'] = this.aST;
    data['BNSOL'] = this.bNSOL;
    data['MANA'] = this.mANA;
    data['CSPR'] = this.cSPR;
    data['AGENTFUN'] = this.aGENTFUN;
    data['ATA'] = this.aTA;
    data['NMR'] = this.nMR;
    data['JEP'] = this.jEP;
    data['NMT'] = this.nMT;
    data['ATH'] = this.aTH;
    data['LIT'] = this.lIT;
    data['CGETH.HASHKEY'] = this.cGETHHASHKEY;
    data['TNSR'] = this.tNSR;
    data['POLYX'] = this.pOLYX;
    data['DESO'] = this.dESO;
    data['LOOM'] = this.lOOM;
    data['RVN'] = this.rVN;
    data['PRO'] = this.pRO;
    data['TZS'] = this.tZS;
    data['PRQ'] = this.pRQ;
    data['ONDO'] = this.oNDO;
    data['AUD'] = this.aUD;
    data['USDT0'] = this.uSDT0;
    data['BUIDL'] = this.bUIDL;
    data['DEUSD'] = this.dEUSD;
    data['RWF'] = this.rWF;
    data['KAVA'] = this.kAVA;
    data['NOK'] = this.nOK;
    data['STRAX'] = this.sTRAX;
    data['LKR'] = this.lKR;
    data['NOT'] = this.nOT;
    data['NOS'] = this.nOS;
    data['CZK'] = this.cZK;
    data['AVT'] = this.aVT;
    data['NPC'] = this.nPC;
    data['EURC'] = this.eURC;
    data['WAL'] = this.wAL;
    data['YER'] = this.yER;
    data['LSETH'] = this.lSETH;
    data['SUSDE'] = this.sUSDE;
    data['MASK'] = this.mASK;
    data['AWG'] = this.aWG;
    data['NPR'] = this.nPR;
    data['PRIME'] = this.pRIME;
    data['YFI'] = this.yFI;
    data['MOODENG'] = this.mOODENG;
    data['CWBTC'] = this.cWBTC;
    data['KEYCAT'] = this.kEYCAT;
    data['POPCAT'] = this.pOPCAT;
    data['WBT'] = this.wBT;
    data['LQTY'] = this.lQTY;
    data['OLAS'] = this.oLAS;
    data['FAI'] = this.fAI;
    data['ZETA'] = this.zETA;
    data['AXL'] = this.aXL;
    data['YGG'] = this.yGG;
    data['FARTCOIN'] = this.fARTCOIN;
    data['CLBTC'] = this.cLBTC;
    data['AXS'] = this.aXS;
    data['SYRUP'] = this.sYRUP;
    data['HONEY'] = this.hONEY;
    data['0X0'] = this.s0X0;
    data['COMP'] = this.cOMP;
    data['HFT'] = this.hFT;
    data['WAMPL'] = this.wAMPL;
    data['UXLINK'] = this.uXLINK;
    data['CMETH'] = this.cMETH;
    data['RUNE'] = this.rUNE;
    data['PURR'] = this.pURR;
    data['ZEUS'] = this.zEUS;
    data['PENGU'] = this.pENGU;
    data['DEXT'] = this.dEXT;
    data['FORTH'] = this.fORTH;
    data['GHST'] = this.gHST;
    data['MATH'] = this.mATH;
    data['IDEX'] = this.iDEX;
    data['DEXE'] = this.dEXE;
    data['AVAX'] = this.aVAX;
    data['AZN'] = this.aZN;
    data['AMPL'] = this.aMPL;
    data['GOAT'] = this.gOAT;
    data['UAH'] = this.uAH;
    data['BANANA'] = this.bANANA;
    data['LPT'] = this.lPT;
    data['KAITO'] = this.kAITO;
    data['EZETH'] = this.eZETH;
    data['GODS'] = this.gODS;
    data['PYG'] = this.pYG;
    data['JMD'] = this.jMD;
    data['XAUT'] = this.xAUT;
    data['PYR'] = this.pYR;
    data['BTRST'] = this.bTRST;
    data['DAG'] = this.dAG;
    data['BERASTONE'] = this.bERASTONE;
    data['DAI'] = this.dAI;
    data['AVAIL'] = this.aVAIL;
    data['DAR'] = this.dAR;
    data['FET'] = this.fET;
    data['CBETH'] = this.cBETH;
    data['LRC'] = this.lRC;
    data['REPV2'] = this.rEPV2;
    data['LRD'] = this.lRD;
    data['CORE'] = this.cORE;
    data['DASH'] = this.dASH;
    data['JOD'] = this.jOD;
    data['GUSD'] = this.gUSD;
    data['HKD'] = this.hKD;
    data['JOE'] = this.jOE;
    data['ARSMEP'] = this.aRSMEP;
    data['LSL'] = this.lSL;
    data['LSK'] = this.lSK;
    data['PUMPBTC'] = this.pUMPBTC;
    data['SAFE'] = this.sAFE;
    data['DCR'] = this.dCR;
    data['WIF'] = this.wIF;
    data['LTC'] = this.lTC;
    data['METIS'] = this.mETIS;
    data['ECOIN'] = this.eCOIN;
    data['STETH'] = this.sTETH;
    data['NXM'] = this.nXM;
    data['LTL'] = this.lTL;
    data['SAR'] = this.sAR;
    data['DYDX'] = this.dYDX;
    data['AGIX'] = this.aGIX;
    data['POND'] = this.pOND;
    data['JPY'] = this.jPY;
    data['SBD'] = this.sBD;
    data['GRIFFAIN'] = this.gRIFFAIN;
    data['DDX'] = this.dDX;
    data['LINK'] = this.lINK;
    data['QTUM'] = this.qTUM;
    data['WILD'] = this.wILD;
    data['POLS'] = this.pOLS;
    data['FIL'] = this.fIL;
    data['POLY'] = this.pOLY;
    data['EBTC'] = this.eBTC;
    data['BAL'] = this.bAL;
    data['BAM'] = this.bAM;
    data['BAN'] = this.bAN;
    data['FIS'] = this.fIS;
    data['BAT'] = this.bAT;
    data['NZD'] = this.nZD;
    data['COTI'] = this.cOTI;
    return data;
  }
}
