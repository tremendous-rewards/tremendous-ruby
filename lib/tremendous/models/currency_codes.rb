=begin
#API Endpoints

#Deliver monetary rewards and incentives to employees, customers, survey participants, and more through the Tremendous API. For organizational tasks, like managing your organization and its members within Tremendous, please see the Tremendous Organizational API.

The version of the OpenAPI document: 2
Contact: developers@tremendous.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Tremendous
  class CurrencyCodes
    USD = "USD".freeze
    CAD = "CAD".freeze
    EUR = "EUR".freeze
    AED = "AED".freeze
    AFN = "AFN".freeze
    ALL = "ALL".freeze
    AMD = "AMD".freeze
    ARS = "ARS".freeze
    AUD = "AUD".freeze
    AZN = "AZN".freeze
    BAM = "BAM".freeze
    BDT = "BDT".freeze
    BGN = "BGN".freeze
    BHD = "BHD".freeze
    BIF = "BIF".freeze
    BND = "BND".freeze
    BOB = "BOB".freeze
    BRL = "BRL".freeze
    BWP = "BWP".freeze
    BYR = "BYR".freeze
    BZD = "BZD".freeze
    CDF = "CDF".freeze
    CHF = "CHF".freeze
    CLP = "CLP".freeze
    CNY = "CNY".freeze
    COP = "COP".freeze
    CRC = "CRC".freeze
    CVE = "CVE".freeze
    CZK = "CZK".freeze
    DJF = "DJF".freeze
    DKK = "DKK".freeze
    DOP = "DOP".freeze
    DZD = "DZD".freeze
    EEK = "EEK".freeze
    EGP = "EGP".freeze
    ERN = "ERN".freeze
    ETB = "ETB".freeze
    GBP = "GBP".freeze
    GEL = "GEL".freeze
    GHS = "GHS".freeze
    GNF = "GNF".freeze
    GTQ = "GTQ".freeze
    HKD = "HKD".freeze
    HNL = "HNL".freeze
    HRK = "HRK".freeze
    HUF = "HUF".freeze
    IDR = "IDR".freeze
    ILS = "ILS".freeze
    INR = "INR".freeze
    IQD = "IQD".freeze
    IRR = "IRR".freeze
    ISK = "ISK".freeze
    JMD = "JMD".freeze
    JOD = "JOD".freeze
    JPY = "JPY".freeze
    KES = "KES".freeze
    KHR = "KHR".freeze
    KRW = "KRW".freeze
    KWD = "KWD".freeze
    KZT = "KZT".freeze
    LBP = "LBP".freeze
    LKR = "LKR".freeze
    LTL = "LTL".freeze
    LVL = "LVL".freeze
    MAD = "MAD".freeze
    MDL = "MDL".freeze
    MGA = "MGA".freeze
    MKD = "MKD".freeze
    MMK = "MMK".freeze
    MOP = "MOP".freeze
    MUR = "MUR".freeze
    MXN = "MXN".freeze
    MYR = "MYR".freeze
    MZN = "MZN".freeze
    NAD = "NAD".freeze
    NGN = "NGN".freeze
    NIO = "NIO".freeze
    NOK = "NOK".freeze
    NPR = "NPR".freeze
    NZD = "NZD".freeze
    OMR = "OMR".freeze
    PAB = "PAB".freeze
    PEN = "PEN".freeze
    PHP = "PHP".freeze
    PKR = "PKR".freeze
    PLN = "PLN".freeze
    PYG = "PYG".freeze
    QAR = "QAR".freeze
    RON = "RON".freeze
    RSD = "RSD".freeze
    RUB = "RUB".freeze
    RWF = "RWF".freeze
    SAR = "SAR".freeze
    SDG = "SDG".freeze
    SEK = "SEK".freeze
    SGD = "SGD".freeze
    SOS = "SOS".freeze
    SYP = "SYP".freeze
    THB = "THB".freeze
    TND = "TND".freeze
    TOP = "TOP".freeze
    TRY = "TRY".freeze
    TTD = "TTD".freeze
    TWD = "TWD".freeze
    TZS = "TZS".freeze
    UAH = "UAH".freeze
    UGX = "UGX".freeze
    UYU = "UYU".freeze
    UZS = "UZS".freeze
    VEF = "VEF".freeze
    VND = "VND".freeze
    XAF = "XAF".freeze
    XOF = "XOF".freeze
    YER = "YER".freeze
    ZAR = "ZAR".freeze
    ZMK = "ZMK".freeze

    def self.all_vars
      @all_vars ||= [USD, CAD, EUR, AED, AFN, ALL, AMD, ARS, AUD, AZN, BAM, BDT, BGN, BHD, BIF, BND, BOB, BRL, BWP, BYR, BZD, CDF, CHF, CLP, CNY, COP, CRC, CVE, CZK, DJF, DKK, DOP, DZD, EEK, EGP, ERN, ETB, GBP, GEL, GHS, GNF, GTQ, HKD, HNL, HRK, HUF, IDR, ILS, INR, IQD, IRR, ISK, JMD, JOD, JPY, KES, KHR, KRW, KWD, KZT, LBP, LKR, LTL, LVL, MAD, MDL, MGA, MKD, MMK, MOP, MUR, MXN, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PEN, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SDG, SEK, SGD, SOS, SYP, THB, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, UYU, UZS, VEF, VND, XAF, XOF, YER, ZAR, ZMK].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if CurrencyCodes.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CurrencyCodes"
    end
  end
end
