#import "lib.typ": poster

#show: poster.with(
  title: [Rule-based system and forward chaining for\ investigating incidents on Linux servers],
  authors: ("Santiago Vergara de Los Rios", "Juan Camilo Zuluaga"),
  course: "Sistemas Expertos 2026-1",
  professor: "Luis Fernando Londoño",
)

// Everything below this line is automatically passed into 'body'
#grid(
  columns: (1fr, 1fr),
  gutter: 50pt,

  // Left Column
  [
    = Introduction
    #lorem(50)

    #lorem(90)

    = Objectives
    1. #lorem(30)
    2. #lorem(30)
    3. #lorem(30)

    = Methodology
    #figure(
      image("method.png", width: 90%),
      caption: [Forward chaining visualization],
    )
    #lorem(80)

    = References
    #set text(size: 23pt)
    - Giarratano, J. C., & Riley, G. D. (2005). Expert Systems: Principles and Programming (4th ed.). Thomson Course Technology.
    - Nemeth, E., Snyder, G., Hein, T. R., Whaley, B., & Mackin, D. (2017). UNIX and Linux System Administration Handbook (5th ed.). Addison-Wesley Professional.
    - Russell, S. J., & Norvig, P. (2021). Artificial Intelligence: A Modern Approach (4th ed.). Pearson.
    - Buchanan, B. G., & Shortliffe, E. H. (1984). Rule-Based Expert Systems: The MYCIN Experiments of the Stanford Heuristic Programming Project. Addison-Wesley.
  ],

  // Right Column
  [
    = Design
    #figure(
      image("architecture.png", width: 100%),
      caption: [Architecture of the inference system],
    )

    = Results
    #figure(
      image("result.png"),
      caption: [WebApp for the inference system],
    )

    = Conclusions
    - #lorem(25)
    - #lorem(25)
    - #lorem(25)
    - #lorem(25)
  ],
)
