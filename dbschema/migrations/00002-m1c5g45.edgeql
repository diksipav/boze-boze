CREATE MIGRATION m1c5g45ag4tsej2ohceephu2f5y62cf4qxe34s4v3kajgskwupy3bq
    ONTO m1eezdv54zbvtyukducyldesy42vyg26ibif3aostqcwdfb52pdptq
{
  ALTER TYPE default::Training {
      CREATE MULTI LINK sections := (SELECT
          (.pages UNION .questions)
      );
  };
};
