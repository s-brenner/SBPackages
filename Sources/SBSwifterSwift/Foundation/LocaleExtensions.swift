import Foundation

extension Locale {
    
    /// Enumeration based on `Locale.availableIdentifiers`.
    public enum Identifier: String, CaseIterable {
        case afrikaansNamibia = "af_NA"
        case afrikaansSouthAfrica = "af_ZA"
        case aghemCameroon = "agq_CM"
        case ainuJapan = "ain_JP"
        case akanGhana = "ak_GH"
        case amharicEthiopia = "am_ET"
        case arabicWorld = "ar_001"
        case arabicUnitedArabEmirates = "ar_AE"
        case arabicBahrain = "ar_BH"
        case arabicDjibouti = "ar_DJ"
        case arabicAlgeria = "ar_DZ"
        case arabicEgypt = "ar_EG"
        case arabicWesternSahara = "ar_EH"
        case arabicEritrea = "ar_ER"
        case arabicIsrael = "ar_IL"
        case arabicIraq = "ar_IQ"
        case arabicJordan = "ar_JO"
        case arabicComoros = "ar_KM"
        case arabicKuwait = "ar_KW"
        case arabicLebanon = "ar_LB"
        case arabicLibya = "ar_LY"
        case arabicMorocco = "ar_MA"
        case arabicMauritania = "ar_MR"
        case arabicOman = "ar_OM"
        case arabicPalestinianTerritories = "ar_PS"
        case arabicQatar = "ar_QA"
        case arabicSaudiArabia = "ar_SA"
        case arabicSudan = "ar_SD"
        case arabicSomalia = "ar_SO"
        case arabicSouthSudan = "ar_SS"
        case arabicSyria = "ar_SY"
        case arabicChad = "ar_TD"
        case arabicTunisia = "ar_TN"
        case arabicYemen = "ar_YE"
        case mapucheChile = "arn_CL"
        case assameseIndia = "as_IN"
        case asuTanzania = "asa_TZ"
        case asturianSpain = "ast_ES"
        case azerbaijaniCyrillic = "az_Cyrl"
        case azerbaijaniCyrillicAzerbaijan = "az_Cyrl_AZ"
        case azerbaijani = "az_Latn"
        case azerbaijaniAzerbaijan = "az_Latn_AZ"
        case bashkirRussia = "ba_RU"
        case basaaCameroon = "bas_CM"
        case belarusianBelarus = "be_BY"
        case bembaZambia = "bem_ZM"
        case benaTanzania = "bez_TZ"
        case bulgarianBulgaria = "bg_BG"
        case bambaraMali = "bm_ML"
        case banglaBangladesh = "bn_BD"
        case banglaIndia = "bn_IN"
        case tibetanChinaMainland = "bo_CN"
        case tibetanIndia = "bo_IN"
        case bretonFrance = "br_FR"
        case bodoIndia = "brx_IN"
        case bosnianCyrillic = "bs_Cyrl"
        case bosnianCyrillicBosniaHerzegovina = "bs_Cyrl_BA"
        case bosnian = "bs_Latn"
        case bosnianBosniaHerzegovina = "bs_Latn_BA"
        case blinEritrea = "byn_ER"
        case catalanAndorra = "ca_AD"
        case catalanSpain = "ca_ES"
        case catalanFrance = "ca_FR"
        case catalanItaly = "ca_IT"
        case chakmaBangladesh = "ccp_BD"
        case chakmaIndia = "ccp_IN"
        case chechenRussia = "ce_RU"
        case cebuanoPhilippines = "ceb_PH"
        case chigaUganda = "cgg_UG"
        case cherokeeUnitedStates = "chr_US"
        case kurdishSoraniIraq = "ckb_IQ"
        case kurdishSoraniIran = "ckb_IR"
        case corsicanFrance = "co_FR"
        case czechCzechia = "cs_CZ"
        case chuvashRussia = "cv_RU"
        case welshUnitedKingdom = "cy_GB"
        case danishDenmark = "da_DK"
        case danishGreenland = "da_GL"
        case taitaKenya = "dav_KE"
        case germanAustria = "de_AT"
        case germanBelgium = "de_BE"
        case germanSwitzerland = "de_CH"
        case germanGermany = "de_DE"
        case germanItaly = "de_IT"
        case germanLiechtenstein = "de_LI"
        case germanLuxembourg = "de_LU"
        case zarmaNiger = "dje_NE"
        case dogriIndia = "doi_IN"
        case lowerSorbianGermany = "dsb_DE"
        case dualaCameroon = "dua_CM"
        case dhivehiMaldives = "dv_MV"
        case jolaFonyiSenegal = "dyo_SN"
        case dzongkhaBhutan = "dz_BT"
        case embuKenya = "ebu_KE"
        case eweGhana = "ee_GH"
        case eweTogo = "ee_TG"
        case greekCyprus = "el_CY"
        case greekGreece = "el_GR"
        case englishWorld = "en_001"
        case englishEurope = "en_150"
        case englishUnitedArabEmirates = "en_AE"
        case englishAntiguaBarbuda = "en_AG"
        case englishAnguilla = "en_AI"
        case englishAlbania = "en_AL"
        case englishArgentina = "en_AR"
        case englishAmericanSamoa = "en_AS"
        case englishAustria = "en_AT"
        case englishAustralia = "en_AU"
        case englishBarbados = "en_BB"
        case englishBangladesh = "en_BD"
        case englishBelgium = "en_BE"
        case englishBulgaria = "en_BG"
        case englishBurundi = "en_BI"
        case englishBermuda = "en_BM"
        case englishBrunei = "en_BN"
        case englishBrazil = "en_BR"
        case englishBahamas = "en_BS"
        case englishBotswana = "en_BW"
        case englishBelize = "en_BZ"
        case englishCanada = "en_CA"
        case englishCocosKeelingIslands = "en_CC"
        case englishSwitzerland = "en_CH"
        case englishCookIslands = "en_CK"
        case englishChile = "en_CL"
        case englishCameroon = "en_CM"
        case englishChinaMainland = "en_CN"
        case englishColombia = "en_CO"
        case englishChristmasIsland = "en_CX"
        case englishCyprus = "en_CY"
        case englishCzechia = "en_CZ"
        case englishGermany = "en_DE"
        case englishDiegoGarcia = "en_DG"
        case englishDenmark = "en_DK"
        case englishDominica = "en_DM"
        case englishEstonia = "en_EE"
        case englishEritrea = "en_ER"
        case englishFinland = "en_FI"
        case englishFiji = "en_FJ"
        case englishFalklandIslands = "en_FK"
        case englishMicronesia = "en_FM"
        case englishFrance = "en_FR"
        case englishUnitedKingdom = "en_GB"
        case englishGrenada = "en_GD"
        case englishGuernsey = "en_GG"
        case englishGhana = "en_GH"
        case englishGibraltar = "en_GI"
        case englishGambia = "en_GM"
        case englishGreece = "en_GR"
        case englishGuam = "en_GU"
        case englishGuyana = "en_GY"
        case englishHongKong = "en_HK"
        case englishHungary = "en_HU"
        case englishIndonesia = "en_ID"
        case englishIreland = "en_IE"
        case englishIsrael = "en_IL"
        case englishIsleOfMan = "en_IM"
        case englishIndia = "en_IN"
        case englishChagosArchipelago = "en_IO"
        case englishJersey = "en_JE"
        case englishJamaica = "en_JM"
        case englishJapan = "en_JP"
        case englishKenya = "en_KE"
        case englishKiribati = "en_KI"
        case englishStKittsNevis = "en_KN"
        case englishSouthKorea = "en_KR"
        case englishCaymanIslands = "en_KY"
        case englishStLucia = "en_LC"
        case englishLiberia = "en_LR"
        case englishLesotho = "en_LS"
        case englishLithuania = "en_LT"
        case englishLatvia = "en_LV"
        case englishMadagascar = "en_MG"
        case englishMarshallIslands = "en_MH"
        case englishMyanmarBurma = "en_MM"
        case englishMacao = "en_MO"
        case englishNorthernMarianaIslands = "en_MP"
        case englishMontserrat = "en_MS"
        case englishMalta = "en_MT"
        case englishMauritius = "en_MU"
        case englishMaldives = "en_MV"
        case englishMalawi = "en_MW"
        case englishMexico = "en_MX"
        case englishMalaysia = "en_MY"
        case englishNamibia = "en_NA"
        case englishNorfolkIsland = "en_NF"
        case englishNigeria = "en_NG"
        case englishNetherlands = "en_NL"
        case englishNorway = "en_NO"
        case englishNauru = "en_NR"
        case englishNiue = "en_NU"
        case englishNewZealand = "en_NZ"
        case englishPapuaNewGuinea = "en_PG"
        case englishPhilippines = "en_PH"
        case englishPakistan = "en_PK"
        case englishPoland = "en_PL"
        case englishPitcairnIslands = "en_PN"
        case englishPuertoRico = "en_PR"
        case englishPortugal = "en_PT"
        case englishPalau = "en_PW"
        case englishRussia = "en_RU"
        case englishRwanda = "en_RW"
        case englishSaudiArabia = "en_SA"
        case englishSolomonIslands = "en_SB"
        case englishSeychelles = "en_SC"
        case englishSudan = "en_SD"
        case englishSweden = "en_SE"
        case englishSingapore = "en_SG"
        case englishStHelena = "en_SH"
        case englishSlovenia = "en_SI"
        case englishSlovakia = "en_SK"
        case englishSierraLeone = "en_SL"
        case englishSouthSudan = "en_SS"
        case englishSintMaarten = "en_SX"
        case englishEswatini = "en_SZ"
        case englishTurksCaicosIslands = "en_TC"
        case englishThailand = "en_TH"
        case englishTokelau = "en_TK"
        case englishTonga = "en_TO"
        case englishTurkey = "en_TR"
        case englishTrinidadTobago = "en_TT"
        case englishTuvalu = "en_TV"
        case englishTaiwan = "en_TW"
        case englishTanzania = "en_TZ"
        case englishUkraine = "en_UA"
        case englishUganda = "en_UG"
        case englishUSOutlyingIslands = "en_UM"
        case englishUnitedStates = "en_US"
        case englishUnitedStatesComputer = "en_US_POSIX"
        case englishStVincentGrenadines = "en_VC"
        case englishBritishVirginIslands = "en_VG"
        case englishUSVirginIslands = "en_VI"
        case englishVanuatu = "en_VU"
        case englishSamoa = "en_WS"
        case englishSouthAfrica = "en_ZA"
        case englishZambia = "en_ZM"
        case englishZimbabwe = "en_ZW"
        case esperantoWorld = "eo_001"
        case spanishNorthAmerica = "es_003"
        case spanishLatinAmerica = "es_419"
        case spanishAntiguaBarbuda = "es_AG"
        case spanishArgentina = "es_AR"
        case spanishBarbados = "es_BB"
        case spanishBermuda = "es_BM"
        case spanishBolivia = "es_BO"
        case spanishCaribbeanNetherlands = "es_BQ"
        case spanishBrazil = "es_BR"
        case spanishBahamas = "es_BS"
        case spanishBelize = "es_BZ"
        case spanishCanada = "es_CA"
        case spanishChile = "es_CL"
        case spanishColombia = "es_CO"
        case spanishCostaRica = "es_CR"
        case spanishCuba = "es_CU"
        case spanishCuraçao = "es_CW"
        case spanishDominica = "es_DM"
        case spanishDominicanRepublic = "es_DO"
        case spanishCeutaMelilla = "es_EA"
        case spanishEcuador = "es_EC"
        case spanishSpain = "es_ES"
        case spanishGrenada = "es_GD"
        case spanishEquatorialGuinea = "es_GQ"
        case spanishGuatemala = "es_GT"
        case spanishGuyana = "es_GY"
        case spanishHonduras = "es_HN"
        case spanishHaiti = "es_HT"
        case spanishCanaryIslands = "es_IC"
        case spanishStKittsNevis = "es_KN"
        case spanishCaymanIslands = "es_KY"
        case spanishStLucia = "es_LC"
        case spanishMexico = "es_MX"
        case spanishNicaragua = "es_NI"
        case spanishPanama = "es_PA"
        case spanishPeru = "es_PE"
        case spanishPhilippines = "es_PH"
        case spanishPuertoRico = "es_PR"
        case spanishParaguay = "es_PY"
        case spanishElSalvador = "es_SV"
        case spanishTurksCaicosIslands = "es_TC"
        case spanishTrinidadTobago = "es_TT"
        case spanishUnitedStates = "es_US"
        case spanishUruguay = "es_UY"
        case spanishStVincentGrenadines = "es_VC"
        case spanishVenezuela = "es_VE"
        case spanishBritishVirginIslands = "es_VG"
        case spanishUSVirginIslands = "es_VI"
        case estonianEstonia = "et_EE"
        case basqueSpain = "eu_ES"
        case ewondoCameroon = "ewo_CM"
        case persianAfghanistan = "fa_AF"
        case persianIran = "fa_IR"
        case fulaAdlam = "ff_Adlm"
        case fulaAdlamBurkinaFaso = "ff_Adlm_BF"
        case fulaAdlamCameroon = "ff_Adlm_CM"
        case fulaAdlamGhana = "ff_Adlm_GH"
        case fulaAdlamGambia = "ff_Adlm_GM"
        case fulaAdlamGuinea = "ff_Adlm_GN"
        case fulaAdlamGuineaBissau = "ff_Adlm_GW"
        case fulaAdlamLiberia = "ff_Adlm_LR"
        case fulaAdlamMauritania = "ff_Adlm_MR"
        case fulaAdlamNiger = "ff_Adlm_NE"
        case fulaAdlamNigeria = "ff_Adlm_NG"
        case fulaAdlamSierraLeone = "ff_Adlm_SL"
        case fulaAdlamSenegal = "ff_Adlm_SN"
        case fula = "ff_Latn"
        case fulaBurkinaFaso = "ff_Latn_BF"
        case fulaCameroon = "ff_Latn_CM"
        case fulaGhana = "ff_Latn_GH"
        case fulaGambia = "ff_Latn_GM"
        case fulaGuinea = "ff_Latn_GN"
        case fulaGuineaBissau = "ff_Latn_GW"
        case fulaLiberia = "ff_Latn_LR"
        case fulaMauritania = "ff_Latn_MR"
        case fulaNiger = "ff_Latn_NE"
        case fulaNigeria = "ff_Latn_NG"
        case fulaSierraLeone = "ff_Latn_SL"
        case fulaSenegal = "ff_Latn_SN"
        case finnishFinland = "fi_FI"
        case filipinoPhilippines = "fil_PH"
        case faroeseDenmark = "fo_DK"
        case faroeseFaroeIslands = "fo_FO"
        case frenchBelgium = "fr_BE"
        case frenchBurkinaFaso = "fr_BF"
        case frenchBurundi = "fr_BI"
        case frenchBenin = "fr_BJ"
        case frenchStBarthélemy = "fr_BL"
        case frenchCanada = "fr_CA"
        case frenchCongoKinshasa = "fr_CD"
        case frenchCentralAfricanRepublic = "fr_CF"
        case frenchCongoBrazzaville = "fr_CG"
        case frenchSwitzerland = "fr_CH"
        case frenchCôteDivoire = "fr_CI"
        case frenchCameroon = "fr_CM"
        case frenchDjibouti = "fr_DJ"
        case frenchAlgeria = "fr_DZ"
        case frenchFrance = "fr_FR"
        case frenchGabon = "fr_GA"
        case frenchFrenchGuiana = "fr_GF"
        case frenchGuinea = "fr_GN"
        case frenchGuadeloupe = "fr_GP"
        case frenchEquatorialGuinea = "fr_GQ"
        case frenchHaiti = "fr_HT"
        case frenchComoros = "fr_KM"
        case frenchLuxembourg = "fr_LU"
        case frenchMorocco = "fr_MA"
        case frenchMonaco = "fr_MC"
        case frenchStMartin = "fr_MF"
        case frenchMadagascar = "fr_MG"
        case frenchMali = "fr_ML"
        case frenchMartinique = "fr_MQ"
        case frenchMauritania = "fr_MR"
        case frenchMauritius = "fr_MU"
        case frenchNewCaledonia = "fr_NC"
        case frenchNiger = "fr_NE"
        case frenchFrenchPolynesia = "fr_PF"
        case frenchStPierreMiquelon = "fr_PM"
        case frenchRéunion = "fr_RE"
        case frenchRwanda = "fr_RW"
        case frenchSeychelles = "fr_SC"
        case frenchSenegal = "fr_SN"
        case frenchSyria = "fr_SY"
        case frenchChad = "fr_TD"
        case frenchTogo = "fr_TG"
        case frenchTunisia = "fr_TN"
        case frenchVanuatu = "fr_VU"
        case frenchWallisFutuna = "fr_WF"
        case frenchMayotte = "fr_YT"
        case friulianItaly = "fur_IT"
        case westernFrisianNetherlands = "fy_NL"
        case irishUnitedKingdom = "ga_GB"
        case irishIreland = "ga_IE"
        case gaGhana = "gaa_GH"
        case scottishGaelicUnitedKingdom = "gd_GB"
        case geezEritrea = "gez_ER"
        case geezEthiopia = "gez_ET"
        case galicianSpain = "gl_ES"
        case guaraniParaguay = "gn_PY"
        case swissGermanSwitzerland = "gsw_CH"
        case swissGermanFrance = "gsw_FR"
        case swissGermanLiechtenstein = "gsw_LI"
        case gujaratiIndia = "gu_IN"
        case gusiiKenya = "guz_KE"
        case manxIsleOfMan = "gv_IM"
        case hausaGhana = "ha_GH"
        case hausaNiger = "ha_NE"
        case hausaNigeria = "ha_NG"
        case hawaiianUnitedStates = "haw_US"
        case hebrewIsrael = "he_IL"
        case hindiIndia = "hi_IN"
        case hindiLatin = "hi_Latn"
        case hindiLatinIndia = "hi_Latn_IN"
        case croatianBosniaHerzegovina = "hr_BA"
        case croatianCroatia = "hr_HR"
        case upperSorbianGermany = "hsb_DE"
        case hungarianHungary = "hu_HU"
        case armenianArmenia = "hy_AM"
        case interlinguaWorld = "ia_001"
        case indonesianIndonesia = "id_ID"
        case igboNigeria = "ig_NG"
        case sichuanYiChinaMainland = "ii_CN"
        case idoWorld = "io_001"
        case icelandicIceland = "is_IS"
        case italianSwitzerland = "it_CH"
        case italianItaly = "it_IT"
        case italianSanMarino = "it_SM"
        case italianVaticanCity = "it_VA"
        case inuktitutCanada = "iu_CA"
        case japaneseJapan = "ja_JP"
        case lojbanWorld = "jbo_001"
        case ngombaCameroon = "jgo_CM"
        case machameTanzania = "jmc_TZ"
        case javaneseIndonesia = "jv_ID"
        case georgianGeorgia = "ka_GE"
        case kabyleAlgeria = "kab_DZ"
        case jjuNigeria = "kaj_NG"
        case kambaKenya = "kam_KE"
        case tyapNigeria = "kcg_NG"
        case makondeTanzania = "kde_TZ"
        case kabuverdianuCapeVerde = "kea_CV"
        case koyraChiiniMali = "khq_ML"
        case kikuyuKenya = "ki_KE"
        case kazakhKazakhstan = "kk_KZ"
        case kakoCameroon = "kkj_CM"
        case kalaallisutGreenland = "kl_GL"
        case kalenjinKenya = "kln_KE"
        case khmerCambodia = "km_KH"
        case kannadaIndia = "kn_IN"
        case koreanNorthKorea = "ko_KP"
        case koreanSouthKorea = "ko_KR"
        case konkaniIndia = "kok_IN"
        case kpelleGuinea = "kpe_GN"
        case kpelleLiberia = "kpe_LR"
        case kashmiriNaskh = "ks_Arab"
        case kashmiriNaskhIndia = "ks_Arab_IN"
        case kashmiriIndia = "ks_Aran_IN"
        case kashmiriDevanagari = "ks_Deva"
        case kashmiriDevanagariIndia = "ks_Deva_IN"
        case shambalaTanzania = "ksb_TZ"
        case bafiaCameroon = "ksf_CM"
        case colognianGermany = "ksh_DE"
        case kurdishTurkey = "ku_TR"
        case cornishUnitedKingdom = "kw_GB"
        case kyrgyzKyrgyzstan = "ky_KG"
        case langiTanzania = "lag_TZ"
        case luxembourgishLuxembourg = "lb_LU"
        case gandaUganda = "lg_UG"
        case lakotaUnitedStates = "lkt_US"
        case lingalaAngola = "ln_AO"
        case lingalaCongoKinshasa = "ln_CD"
        case lingalaCentralAfricanRepublic = "ln_CF"
        case lingalaCongoBrazzaville = "ln_CG"
        case laoLaos = "lo_LA"
        case northernLuriIraq = "lrc_IQ"
        case northernLuriIran = "lrc_IR"
        case lithuanianLithuania = "lt_LT"
        case lubaKatangaCongoKinshasa = "lu_CD"
        case luoKenya = "luo_KE"
        case luyiaKenya = "luy_KE"
        case latvianLatvia = "lv_LV"
        case maithiliIndia = "mai_IN"
        case masaiKenya = "mas_KE"
        case masaiTanzania = "mas_TZ"
        case meruKenya = "mer_KE"
        case morisyenMauritius = "mfe_MU"
        case malagasyMadagascar = "mg_MG"
        case makhuwaMeettoMozambique = "mgh_MZ"
        case metaʼCameroon = "mgo_CM"
        case māoriNewZealand = "mi_NZ"
        case macedonianNorthMacedonia = "mk_MK"
        case malayalamIndia = "ml_IN"
        case mongolianMongolia = "mn_MN"
        case manipuriBangla = "mni_Beng"
        case manipuriBanglaIndia = "mni_Beng_IN"
        case manipuriMeiteiMayek = "mni_Mtei"
        case manipuriMeiteiMayekIndia = "mni_Mtei_IN"
        case mohawkCanada = "moh_CA"
        case marathiIndia = "mr_IN"
        case malayArabic = "ms_Arab"
        case malayArabicBrunei = "ms_Arab_BN"
        case malayArabicMalaysia = "ms_Arab_MY"
        case malayBrunei = "ms_BN"
        case malayIndonesia = "ms_ID"
        case malayMalaysia = "ms_MY"
        case malaySingapore = "ms_SG"
        case malteseMalta = "mt_MT"
        case mundangCameroon = "mua_CM"
        case burmeseMyanmarBurma = "my_MM"
        case erzyaRussia = "myv_RU"
        case mazanderaniIran = "mzn_IR"
        case namaNamibia = "naq_NA"
        case norwegianBokmålNorway = "nb_NO"
        case norwegianBokmålSvalbardJanMayen = "nb_SJ"
        case northNdebeleZimbabwe = "nd_ZW"
        case lowGermanGermany = "nds_DE"
        case lowGermanNetherlands = "nds_NL"
        case nepaliIndia = "ne_IN"
        case nepaliNepal = "ne_NP"
        case dutchAruba = "nl_AW"
        case dutchBelgium = "nl_BE"
        case dutchCaribbeanNetherlands = "nl_BQ"
        case dutchCuraçao = "nl_CW"
        case dutchNetherlands = "nl_NL"
        case dutchSuriname = "nl_SR"
        case dutchSintMaarten = "nl_SX"
        case kwasioCameroon = "nmg_CM"
        case norwegianNynorskNorway = "nn_NO"
        case ngiemboonCameroon = "nnh_CM"
        case nkoGuinea = "nqo_GN"
        case southNdebeleSouthAfrica = "nr_ZA"
        case northernSothoSouthAfrica = "nso_ZA"
        case nuerSouthSudan = "nus_SS"
        case navajoUnitedStates = "nv_US"
        case nyanjaMalawi = "ny_MW"
        case nyankoleUganda = "nyn_UG"
        case occitanFrance = "oc_FR"
        case oromoEthiopia = "om_ET"
        case oromoKenya = "om_KE"
        case odiaIndia = "or_IN"
        case osseticGeorgia = "os_GE"
        case osseticRussia = "os_RU"
        case punjabiNaskh = "pa_Arab"
        case punjabiNaskhPakistan = "pa_Arab_PK"
        case punjabiNastaliqPakistan = "pa_Aran_PK"
        case punjabi = "pa_Guru"
        case punjabiIndia = "pa_Guru_IN"
        case nigerianPidginNigeria = "pcm_NG"
        case polishPoland = "pl_PL"
        case pashtoAfghanistan = "ps_AF"
        case pashtoPakistan = "ps_PK"
        case portugueseAngola = "pt_AO"
        case portugueseBrazil = "pt_BR"
        case portugueseSwitzerland = "pt_CH"
        case portugueseCapeVerde = "pt_CV"
        case portugueseFrance = "pt_FR"
        case portugueseEquatorialGuinea = "pt_GQ"
        case portugueseGuineaBissau = "pt_GW"
        case portugueseLuxembourg = "pt_LU"
        case portugueseMacao = "pt_MO"
        case portugueseMozambique = "pt_MZ"
        case portuguesePortugal = "pt_PT"
        case portugueseSãoToméPríncipe = "pt_ST"
        case portugueseTimorLeste = "pt_TL"
        case quechuaBolivia = "qu_BO"
        case quechuaEcuador = "qu_EC"
        case quechuaPeru = "qu_PE"
        case rohingyaHanifi = "rhg_Rohg"
        case rohingyaHanifiBangladesh = "rhg_Rohg_BD"
        case rohingyaHanifiMyanmarBurma = "rhg_Rohg_MM"
        case romanshSwitzerland = "rm_CH"
        case rundiBurundi = "rn_BI"
        case romanianMoldova = "ro_MD"
        case romanianRomania = "ro_RO"
        case romboTanzania = "rof_TZ"
        case russianBelarus = "ru_BY"
        case russianKyrgyzstan = "ru_KG"
        case russianKazakhstan = "ru_KZ"
        case russianMoldova = "ru_MD"
        case russianRussia = "ru_RU"
        case russianUkraine = "ru_UA"
        case kinyarwandaRwanda = "rw_RW"
        case rwaTanzania = "rwk_TZ"
        case sanskritIndia = "sa_IN"
        case sakhaRussia = "sah_RU"
        case samburuKenya = "saq_KE"
        case santaliDevanagari = "sat_Deva"
        case santaliDevanagariIndia = "sat_Deva_IN"
        case santaliOlChiki = "sat_Olck"
        case santaliOlChikiIndia = "sat_Olck_IN"
        case sanguTanzania = "sbp_TZ"
        case sardinianItaly = "sc_IT"
        case sicilianItaly = "scn_IT"
        case sindhiArabic = "sd_Arab"
        case sindhiArabicPakistan = "sd_Arab_PK"
        case sindhiDevanagari = "sd_Deva"
        case sindhiDevanagariIndia = "sd_Deva_IN"
        case northernSamiFinland = "se_FI"
        case northernSamiNorway = "se_NO"
        case northernSamiSweden = "se_SE"
        case senaMozambique = "seh_MZ"
        case koyraboroSenniMali = "ses_ML"
        case sangoCentralAfricanRepublic = "sg_CF"
        case tachelhit = "shi_Latn"
        case tachelhitMorocco = "shi_Latn_MA"
        case tachelhitTifinagh = "shi_Tfng"
        case tachelhitTifinaghMorocco = "shi_Tfng_MA"
        case sinhalaSriLanka = "si_LK"
        case slovakSlovakia = "sk_SK"
        case slovenianSlovenia = "sl_SI"
        case inariSamiFinland = "smn_FI"
        case shonaZimbabwe = "sn_ZW"
        case somaliDjibouti = "so_DJ"
        case somaliEthiopia = "so_ET"
        case somaliKenya = "so_KE"
        case somaliSomalia = "so_SO"
        case albanianAlbania = "sq_AL"
        case albanianNorthMacedonia = "sq_MK"
        case albanianKosovo = "sq_XK"
        case serbian = "sr_Cyrl"
        case serbianBosniaHerzegovina = "sr_Cyrl_BA"
        case serbianMontenegro = "sr_Cyrl_ME"
        case serbianSerbia = "sr_Cyrl_RS"
        case serbianKosovo = "sr_Cyrl_XK"
        case serbianLatin = "sr_Latn"
        case serbianLatinBosniaHerzegovina = "sr_Latn_BA"
        case serbianLatinMontenegro = "sr_Latn_ME"
        case serbianLatinSerbia = "sr_Latn_RS"
        case serbianLatinKosovo = "sr_Latn_XK"
        case swatiEswatini = "ss_SZ"
        case swatiSouthAfrica = "ss_ZA"
        case southernSothoLesotho = "st_LS"
        case southernSothoSouthAfrica = "st_ZA"
        case sundaneseLatin = "su_Latn"
        case sundaneseLatinIndonesia = "su_Latn_ID"
        case swedishÅlandIslands = "sv_AX"
        case swedishFinland = "sv_FI"
        case swedishSweden = "sv_SE"
        case swahiliCongoKinshasa = "sw_CD"
        case swahiliKenya = "sw_KE"
        case swahiliTanzania = "sw_TZ"
        case swahiliUganda = "sw_UG"
        case assyrianIraq = "syr_IQ"
        case assyrianSyria = "syr_SY"
        case tamilIndia = "ta_IN"
        case tamilSriLanka = "ta_LK"
        case tamilMalaysia = "ta_MY"
        case tamilSingapore = "ta_SG"
        case teluguIndia = "te_IN"
        case tesoKenya = "teo_KE"
        case tesoUganda = "teo_UG"
        case tajikTajikistan = "tg_TJ"
        case thaiThailand = "th_TH"
        case tigrinyaEritrea = "ti_ER"
        case tigrinyaEthiopia = "ti_ET"
        case tigreEritrea = "tig_ER"
        case turkmenTurkmenistan = "tk_TM"
        case tswanaBotswana = "tn_BW"
        case tswanaSouthAfrica = "tn_ZA"
        case tonganTonga = "to_TO"
        case turkishCyprus = "tr_CY"
        case turkishTurkey = "tr_TR"
        case tarokoTaiwan = "trv_TW"
        case tsongaSouthAfrica = "ts_ZA"
        case tatarRussia = "tt_RU"
        case tasawaqNiger = "twq_NE"
        case centralAtlasTamazightMorocco = "tzm_MA"
        case uyghurChinaMainland = "ug_CN"
        case ukrainianUkraine = "uk_UA"
        case urduNaskh = "ur_Arab"
        case urduNaskhIndia = "ur_Arab_IN"
        case urduNaskhPakistan = "ur_Arab_PK"
        case urduPakistan = "ur_Aran_PK"
        case uzbekArabic = "uz_Arab"
        case uzbekArabicAfghanistan = "uz_Arab_AF"
        case uzbekCyrillic = "uz_Cyrl"
        case uzbekCyrillicUzbekistan = "uz_Cyrl_UZ"
        case uzbek = "uz_Latn"
        case uzbekUzbekistan = "uz_Latn_UZ"
        case vaiLatin = "vai_Latn"
        case vaiLatinLiberia = "vai_Latn_LR"
        case vai = "vai_Vaii"
        case vaiLiberia = "vai_Vaii_LR"
        case vendaSouthAfrica = "ve_ZA"
        case vietnameseVietnam = "vi_VN"
        case vunjoTanzania = "vun_TZ"
        case walloonBelgium = "wa_BE"
        case walserSwitzerland = "wae_CH"
        case wolayttaEthiopia = "wal_ET"
        case wolofSenegal = "wo_SN"
        case xhosaSouthAfrica = "xh_ZA"
        case sogaUganda = "xog_UG"
        case yangbenCameroon = "yav_CM"
        case yiddishWorld = "yi_001"
        case yorubaBenin = "yo_BJ"
        case yorubaNigeria = "yo_NG"
        case cantoneseSimplified = "yue_Hans"
        case cantoneseChinaMainland = "yue_Hans_CN"
        case cantoneseTraditional = "yue_Hant"
        case cantoneseHongKong = "yue_Hant_HK"
        case standardMoroccanTamazightMorocco = "zgh_MA"
        case chineseSimplified = "zh_Hans"
        case chineseChinaMainland = "zh_Hans_CN"
        case chineseSimplifiedHongKong = "zh_Hans_HK"
        case chineseSimplifiedJapan = "zh_Hans_JP"
        case chineseSimplifiedMacao = "zh_Hans_MO"
        case chineseSingapore = "zh_Hans_SG"
        case chineseTraditional = "zh_Hant"
        case chineseTraditionalChinaMainland = "zh_Hant_CN"
        case chineseHongKong = "zh_Hant_HK"
        case chineseMacao = "zh_Hant_MO"
        case chineseTaiwan = "zh_Hant_TW"
        case zuluSouthAfrica = "zu_ZA"
    }
    
    public init(identifier: Identifier) {
        self.init(identifier: identifier.rawValue)
    }
    
    private var localizedDescription: String {
        Locale(identifier: .englishUnitedStates)
            .localizedString(forIdentifier: identifier)!
            .camelcased()
            .removingAll(["(", ")", "[", "]", ",", ".", "-", "&", "’"])
    }
    
    /// Array of available identifiers that contain the `_` character.
    ///
    /// This eliminates any generic identifiers that do not have a specified language.
    internal static var underscoredAvailableIdentifiers: [String] {
        availableIdentifiers
            .filter { $0.contains("_") }
    }
    
    internal static var cases: [String] {
        underscoredAvailableIdentifiers
            .sorted { $0 < $1 }
            .map { "case \(Locale(identifier: $0).localizedDescription) = \"\($0)\"" }
    }
}
