CREATE OR REPLACE PROCEDURE update_all_data(
    -- Параметры для таблицы Case
    IN p_caseID INT, IN p_newCaseNumber INT, IN p_newCaseDescription VARCHAR,
    -- Параметры для таблицы Convict
    IN p_convictID INT, IN p_newConvictFirstName VARCHAR, IN p_newConvictLastName VARCHAR,
    -- Параметры для таблицы CrimeArticle
    IN p_articleID INT, IN p_newArticleNumber INT, IN p_newArticleDescription VARCHAR,
    -- Параметры для таблицы Investigator
    IN p_investigatorID INT, IN p_newInvestigatorFirstName VARCHAR, IN p_newInvestigatorLastName VARCHAR,
    -- Параметры для связей
    IN p_newConvictCaseID INT, IN p_newInvestigatorCaseID INT, IN p_newCaseCrimeArticleID INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Обновление таблицы Case
    UPDATE "Case"
    SET "CaseNumber" = p_newCaseNumber, "Description" = p_newCaseDescription
    WHERE "CaseID" = p_caseID;

    -- Обновление таблицы Convict
    UPDATE "Convict"
    SET "FirstName" = p_newConvictFirstName, "LastName" = p_newConvictLastName
    WHERE "ConvictID" = p_convictID;

    -- Обновление таблицы CrimeArticle
    UPDATE "CrimeArticle"
    SET "ArticleNumber" = p_newArticleNumber, "Description" = p_newArticleDescription
    WHERE "ArticleID" = p_articleID;

    -- Обновление таблицы Investigator
    UPDATE "Investigator"
    SET "FirstName" = p_newInvestigatorFirstName, "LastName" = p_newInvestigatorLastName
    WHERE "InvestigatorID" = p_investigatorID;

    -- Обновление таблицы-связи ConvictCase
    UPDATE "ConvictCase"
    SET "CaseID" = p_newConvictCaseID
    WHERE "ConvictID" = p_convictID;

    -- Обновление таблицы-связи InvestigatorCase
    UPDATE "InvestigatorCase"
    SET "CaseID" = p_newInvestigatorCaseID
    WHERE "InvestigatorID" = p_investigatorID;

    -- Обновление таблицы-связи CaseCrimeArticle
    UPDATE "CrimeArticleCase"
    SET "CaseID" = p_caseID
    WHERE "ArticleID" = p_newCaseCrimeArticleID;

    RAISE NOTICE 'Обновление таблиц.';
END;
$$;
