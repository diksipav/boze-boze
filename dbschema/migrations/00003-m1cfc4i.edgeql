CREATE MIGRATION m1cfc4iu5wdaln3wiinhakqxfxqfdwpt7hc7n3gmunv3qry5wpiwtq
    ONTO m1c5g45ag4tsej2ohceephu2f5y62cf4qxe34s4v3kajgskwupy3bq
{
  ALTER TYPE default::Training {
      ALTER LINK sections {
          USING (SELECT
              (.pages UNION .questions)
          ORDER BY
              .index ASC
          );
      };
  };
};
