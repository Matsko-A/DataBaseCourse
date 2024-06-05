-- Выводим информацию по преступнику с помощью view
create or replace view ConvictDetailsView as
select 
    conv."FirstName", 
    conv."LastName", 
    ca."ArticleNumber", 
    ca."Description" as "ArticleDescription",
    c."CaseNumber", 
    c."Description" as "CaseDescription"
from 
    "Convict" conv
join 
    "ConvictCase" cc on conv."ConvictID" = cc."ConvictID"
join 
    "Case" c on cc."CaseID" = c."CaseID"
join 
    "CrimeArticleCase" cca on c."CaseID" = cca."CaseID"
join 
    "CrimeArticle" ca on cca."ArticleID" = ca."ArticleID";
