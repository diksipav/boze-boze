CREATE MIGRATION m17swep24zvbhkqjbzjepwwzewo5vsxqiqqewgojhkfsjrhhps4mbq
    ONTO m12k2a5gyjmwmlahf32fmd5va6vsd2xvjen46jdhc66jchdhr3tsla
{
  ALTER TYPE default::Question2 {
      CREATE REQUIRED PROPERTY content: std::str {
          SET REQUIRED USING (<std::str>'ok');
      };
  };
  ALTER TYPE default::Training {
      ALTER LINK maybe {
          USING (SELECT
              ((.pages UNION .questions) UNION .questions2)
          );
      };
  };
  ALTER TYPE default::Question2 {
      DROP PROPERTY age;
  };
  ALTER TYPE default::Question2 {
      CREATE REQUIRED PROPERTY name: std::str {
          SET REQUIRED USING ('ok');
      };
  };
};
