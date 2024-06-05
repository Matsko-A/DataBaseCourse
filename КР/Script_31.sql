create or replace function add_crime_article
(
    p_articlenumber int,
    p_description varchar
)
returns void as $$
begin
	insert into "CrimeArticle" ("ArticleNumber", "Description")
    values (p_articlenumber, p_description);
end;
$$ language plpgsql;
