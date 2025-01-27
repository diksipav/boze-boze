import { createClient } from "didimon";
import e, { type $infer } from "../dbschema/edgeql-js";

const client = createClient();
console.log("client: ", client);
const TrainingSection = e.shape(e.Training.sections, (section) => ({
  index: true,
  content: true,
  ...e.is(e.TrainingPage, {
    name: true,
  }),
  ...e.is(e.Question, {
    type: true,
  }),
}));

export async function getTraining(id: string): Promise<any> {
  const x = e.select(e.Training, () => ({
    ...{ sections: TrainingSection },
    filter_single: { id },
  }));
  const ok = e.select(e.Training, () => ({
    ...{ sections: TrainingSection },
    filter_single: { id },
  }));
  console.log("didi clie", client);
  type rest = $infer<typeof x>;
  const res = await x.run(client);
  console.log(res);
}
