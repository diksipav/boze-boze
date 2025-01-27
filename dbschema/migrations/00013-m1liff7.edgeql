CREATE MIGRATION m1liff7xj3p3x3v3hnkrnyymsyj5gh5dgihv7lustpqlhewzlvqrza
    ONTO m1y73jig6uljzmsbwj7lxv4tjurlbrdeicaqdrcq36iabbi7cfegaq
{
  ALTER TYPE default::Training {
      DROP LINK maybe;
  };
  ALTER TYPE default::Question2 {
      ALTER PROPERTY content {
          SET TYPE std::int16 USING (20);
      };
  };
};
