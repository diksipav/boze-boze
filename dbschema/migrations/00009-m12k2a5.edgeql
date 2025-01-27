CREATE MIGRATION m12k2a5gyjmwmlahf32fmd5va6vsd2xvjen46jdhc66jchdhr3tsla
    ONTO m16efr3jstgyt3672nk6xfczpgyrymhifig7utzthzhpy27ychdwiq
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
