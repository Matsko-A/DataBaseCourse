-- Для каждого из курсов валют выведите название
-- валют, курс, а также курс этих же валют за следующий
-- временной период. ("Sales"."CurrencyRate")
select
    cr."ToCurrencyCode",
    cr."EndOfDayRate",
    (
        select cr2."EndOfDayRate" 
        from "Sales"."CurrencyRate" cr2
       	where cr2."ToCurrencyCode" = cr."ToCurrencyCode"
          and cr2."CurrencyRateDate" > cr."CurrencyRateDate"
        order by cr2."CurrencyRateDate"
        limit 1
    )  as "NextAverageRate"
from "Sales"."CurrencyRate" cr
order by cr."ToCurrencyCode", cr."CurrencyRateDate";
