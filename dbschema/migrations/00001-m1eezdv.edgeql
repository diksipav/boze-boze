CREATE MIGRATION m1eezdv54zbvtyukducyldesy42vyg26ibif3aostqcwdfb52pdptq
    ONTO initial
{
  CREATE ABSTRACT TYPE default::Interactable {
      CREATE REQUIRED PROPERTY content: std::str;
      CREATE REQUIRED PROPERTY index: std::int16;
  };
  CREATE SCALAR TYPE default::AnswerType EXTENDING enum<`SINGLE`, MULTI>;
  CREATE TYPE default::Question EXTENDING default::Interactable {
      CREATE REQUIRED PROPERTY type: default::AnswerType;
  };
  CREATE TYPE default::TrainingPage EXTENDING default::Interactable {
      CREATE REQUIRED PROPERTY name: std::str;
  };
  CREATE TYPE default::Training {
      CREATE MULTI LINK questions: default::Question;
      CREATE MULTI LINK pages: default::TrainingPage;
      CREATE REQUIRED PROPERTY name: std::str;
  };
};
