CREATE MIGRATION m1y73jig6uljzmsbwj7lxv4tjurlbrdeicaqdrcq36iabbi7cfegaq
    ONTO m1xxcunhtbdqxpdr5l3vj4xd4gbo7dnwowmm4275wuu6lta5zp7rrq
{
  ALTER TYPE default::Question2 {
      ALTER PROPERTY new_content {
          RENAME TO content;
      };
  };
  ALTER TYPE default::Question2 {
      ALTER PROPERTY new_name {
          RENAME TO name;
      };
  };
};
