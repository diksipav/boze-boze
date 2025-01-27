CREATE MIGRATION m1ef3jqaxupneanb7aajjq2uhp7tfv3ulqg5jdkimknrentbacenfq
    ONTO m1cfc4iu5wdaln3wiinhakqxfxqfdwpt7hc7n3gmunv3qry5wpiwtq
{
  ALTER TYPE default::Training {
      ALTER LINK sections {
          USING (SELECT
              (.pages UNION .questions)
          );
      };
  };
};
