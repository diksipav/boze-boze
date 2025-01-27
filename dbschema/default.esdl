module default {
    type Training {
        required name: str;

        multi pages: TrainingPage;
        multi questions: Question;
        multi questions2: Question2;
 
        multi sections := ( 
            select .pages union .questions
            order by .index
        );

        multi maybe := (
             select .pages union .questions union .questions2
        )
    }

   abstract type Random {
    maybe: bool;
   }

   abstract type Interactable extending Random{
        required index: int16;
        required content: str;
    }

    scalar type AnswerType extending enum<
        `SINGLE`,
        MULTI,
    >;

    type TrainingPage extending Interactable {
        required name: str;
    }

    type Question extending Interactable {
        required type: AnswerType;
    }

     type Question2 {
        required name: str;
        required content: str;
    }



}