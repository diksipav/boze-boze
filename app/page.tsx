import { getTraining } from "./opa";

export default function Home() {
  console.log("HOMEE");
  // getTrainingEdgeQl("907f05b0-7fd3-11ef-b158-9f47b7946d71");
  getTraining("907f05b0-7fd3-11ef-b158-9f47b7946d71");
  // getInteractable();

  return (
    <div className="grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <main className="flex flex-col gap-8 row-start-2 items-center sm:items-start"></main>
      <footer className="row-start-3 flex gap-6 flex-wrap items-center justify-center"></footer>
    </div>
  );
}
