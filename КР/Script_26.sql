create or replace procedure populate_tables
(
    in caseNumber1 int, in caseDesc1 varchar,
    in convictFirstName1 varchar, in convictLastName1 varchar,
    in articleNumber1 int, in articleDesc1 varchar,
    in investigatorFirstName1 varchar, in investigatorLastName1 varchar
)
language plpgsql
as $$
begin
    -- Вставка данных в таблицу Case
    perform add_case(caseNumber1, caseDesc1);
    
    -- Вставка данных в таблицу Convict
    perform add_convict(convictFirstName1, convictLastName1);
    
    -- Вставка данных в таблицу CrimeArticle
    perform add_crime_article(articleNumber1, articleDesc1);
    
    -- Вставка данных в таблицу Investigator
    perform add_investigator(investigatorFirstName1, investigatorLastName1);

    raise notice 'Таблицы успешно заполнены.';
end;
$$;
