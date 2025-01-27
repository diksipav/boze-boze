CREATE MIGRATION m17fpwfvddijvxlqlpolz5jjijpoow4yf23nmh4d2lhla6djtidhpq
    ONTO m1n6ea5kev7yl7fpmlbflngyz7tssnamdtq67zd75fgxac5lpy75kq
{
  CREATE ABSTRACT TYPE default::Random {
      CREATE PROPERTY maybe: std::bool;
  };
  ALTER TYPE default::Interactable EXTENDING default::Random LAST;
};
