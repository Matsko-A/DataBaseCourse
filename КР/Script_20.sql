-- Выдает список Дел по данной статье преступления
create or replace function GetCasesByCrimeArticle(articleNumber int)
returns table(CaseID int, CaseNumber int, Description varchar) as $$
begin
    return query
    select c."CaseID", c."CaseNumber", c."Description"
    from "CrimeArticle" ca
    join "CrimeArticleCase" cca on ca."ArticleID" = cca."ArticleID"
    join "Case" c on cca."CaseID" = c."CaseID"
    where ca."ArticleNumber" = articleNumber;
end;
$$ language plpgsql;
