CREATE MIGRATION m1xxcunhtbdqxpdr5l3vj4xd4gbo7dnwowmm4275wuu6lta5zp7rrq
    ONTO m17swep24zvbhkqjbzjepwwzewo5vsxqiqqewgojhkfsjrhhps4mbq
{
  ALTER TYPE default::Question2 {
      ALTER PROPERTY content {
          RENAME TO new_content;
      };
  };
  ALTER TYPE default::Question2 {
      ALTER PROPERTY name {
          RENAME TO new_name;
      };
  };
};
