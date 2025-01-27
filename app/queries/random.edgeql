select Training {
   maybe: {
    index := [is TrainingPage].index ?? [is Question].index,
    content,
    [is Question].type,
   },
}