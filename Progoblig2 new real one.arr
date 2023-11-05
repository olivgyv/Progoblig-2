use context essentials2021

include gdrive-sheets
include data-source
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

distance-travelled-per-day = 59
distance-per-unit-of-fuel = 5
energy-per-unit-of-fuel = 10

car-energy-per-day = ( distance-travelled-per-day / 
                           distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel
##^D)
####### A) gjorde som oppgaven ba meg om. 
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end
####### A) la inn koden fra oppgaven og brukte saitize for å få den til å bli datatype string
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none =>  car-energy-per-day
  end
where:
  energi-to-number("") is car-energy-per-day
energi-to-number("48") is 48
end
######## B) la in koden fra dokumentet og endret (S) til (str)
transform-table = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)
######## C) brukte funksjonen transform-column for å gjøre fremstillingen av dataen fra strings til numbers

total-energi-forbruk = sum(transform-table, "energi")
######## D) kopierte fra dokumentet dra oppgaven og skrev in egene tall og navn på funksjonene se lengre oppe

bar-chart(transform-table, "komponent", "energi")
######## e) endret på cases der none = 0 til at none = car-energy-per-day. endret på where der energi-to-number "" er det samme som 0 til at det er car-energy-per-day

print(kWh-wealthy-consumer-data)
print(transform-table)
print(car-energy-per-day)
print(total-energi-forbruk)