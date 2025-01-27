CREATE MIGRATION m16efr3jstgyt3672nk6xfczpgyrymhifig7utzthzhpy27ychdwiq
    ONTO m17fpwfvddijvxlqlpolz5jjijpoow4yf23nmh4d2lhla6djtidhpq
{
  CREATE TYPE default::Question2 {
      CREATE REQUIRED PROPERTY age: std::int16;
  };
  ALTER TYPE default::Training {
      CREATE MULTI LINK questions2: default::Question2;
      CREATE MULTI LINK maybe := (SELECT
          (.pages UNION .questions2)
      );
  };
};
