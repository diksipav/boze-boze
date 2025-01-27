CREATE MIGRATION m1g2ybyetqtcbxsliktq74hhjdha64wavftdxkrgmjodqgtu7yip5a
    ONTO m1liff7xj3p3x3v3hnkrnyymsyj5gh5dgihv7lustpqlhewzlvqrza
{
  ALTER TYPE default::Question2 {
      ALTER PROPERTY content {
          SET TYPE std::str USING ('interesting');
      };
  };
  ALTER TYPE default::Training {
      CREATE MULTI LINK maybe := (SELECT
          ((.pages UNION .questions) UNION .questions2)
      );
  };
};
