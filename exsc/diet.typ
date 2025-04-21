#show table: set align(center)
#show image: set align(center)
= Essential Nutrients

- Carbs ($45-65%$)
- Fats ($20-35%$)
- Protein ($10-35%$)
- Water
- Mineral
- Vitamin

#image("my_specs.png", width: 50%)

= Calories

#table(
  columns: (auto, auto, auto),
  table.header([*Fat*], [*Protein*], [*Carbs*]),
)[$9$][$4$][$4$]

#table(
  columns: (auto, auto),
  table.header([*Male*], [*Female*]),
)[$2600~3000$][$2000~2400$]

= Protein

Made of amino acids. Important part of blood, enzymes, cell membranes and hormones.

#table(
  columns: (auto, auto, auto),
  table.header([*Complete*], [*Complete low*], [*Incomplete*]),
  [Meat], [Quinoa], [Nuts],
  [Fish], [Soy], [Beans],
  [Poultry], [Buckwheat], [Peas],
  [Eggs], [Hempseed], [Lentils],
  [Milk], [], [],
  [Chesse], [], [],
)

Certain combinations of vegetable proteins such a legumes and grains
(peanut butter and bread) yield a complete protein.

Recommended protein intake is $"weight" times 0.36$ in gram (protein, not food).
In my case, it be $83$ grams. Excess protein becomes fat. Too much protein also
ccauses kidney problems.

= Fat

#table(
  columns: (auto, auto, auto, auto),
  table.header([*Type*], [*Source*], [*Source Oils*], [*Room temperature*]),
  [Saturated], [Meat, Dairies], [Palm Oils], [Solid],
  [Monounsaturated], [Avocado, olives, peanut butter, nuts], [Olive, canola, safflower], [Solid, Liquid],
  [Polyunsaturated $omega$-3], [Fish, walnut, flaxseed, tofu, green leaves], [Canola, soybean], [Solid, Liquid],
  [Polyunsaturatd $omega$-6], [], [Corn, soybean, cottonseed, sunflower], [Liquid],
)

Hydrogenation makes unsaturated fats turn into trans fat, and makes them more
solid. Artificial trans fat raise low-density cholesterol and lowers
high-density cholesterol.

= Carbs

#table(
  columns: (auto, auto),
  table.header([*Simple*], [*Complex*]),
  [Glucose, fructose (fruits), galactose], [Starches: grains, legums, tubers],
  [Double sugar: sucrose (table sugar), maltose, lactose],
  [Fiber: soluble (oats, barley, legumes, fruits, vegetables),
    insoluble (insoluble, wheat, vegetables, whole grains)],
)

Whole grains make you feel fuller for longer. 130 grams is the optimal amount
of carbs.

= Vitamins

#table(
  columns: (auto, auto, auto, auto),
  table.header([*Type*], [*Source*], [*Deficiency*], [*Excess*]),
  [*A*], [Carrots,], [Night blindness],
)

Fat-soluble vitamins can be harmful in excess because it takes longer to the
body to excrete them.

Vitamins don't last long: consume vegetables as soon as possible, or store them
in the fridge by covering them in containers or plastic bags to minimize
moisture loss. Freeze them if the won't be eaten in few days.

= Minerals

#table(
  columns: (auto, auto, auto, auto, auto),
  table.header([*Type*], [*Source*], [*Function*], [*Deficiency*], [*Excess*]),
  [*Calcium*],
  [Dairies, tofu, fortified carbs, green leavs, fish bones],
  [Formation of bones, nerve formation, muscle fuction, blood clotting],
  [Stunned growth, urinary stones],
  [Kidney Stones, Constipation, Osteoporosis],

  [*Fluoride*],
  [Tea, Fish with bones, fluoridated water],
  [Maintenance of bones],
  [Tooth decay],
  [Bone density, kidney malfunction],

  [*Iodine*],
  [salt, seafood, processed foods],
  [Thyroid hormones, metabolism regulation],
  [Enlarged thyroid],
  [Depression, hyperthyroidism],

  [*Iron*],
  [Meat, fortified grain, green vegetabless, dried fruit],
  [Hemoglobin, myoglobin, enzymes],
  [Anemia, weakness, immune weakness, gastric distress],
  [Nausea, diarrhea, liver damage, kidney damage, joint pains, sterility, death],

  [*Magnesium*],
  [almost everywhere],
  [Neural impulses, energy transfer, enzymes],
  [Kidney disorders, nausea, stunned growth, neurological problems],
  [Nausea, vomiting, diarrhea, central nervous system, kidney problems],

  [*Phosphorus*],
  [almost everywhere],
  [Bone growth, energy transfer],
  [Impaired growth, weakness, kidney disorders],
  [Drop in calcium, bone loss],

  [*Potassium*],
  [Meats, milk, fruits, vegetables, grains, legumes],
  [Nerve function, water balance],
  [Muscular weakness, drowsiness, paralysis, confusion],
  [Cardiac arrest, high blood pressure],

  [*Selenium*],
  [Seafood, meat, eggs, whole grains],
  [Oxidative stress regulation, thyroid],
  [Muscle pain, heart disorders],
  [Hair and nail loss, irritability, nausea, vomiting],

  [*Sodium*],
  [Salt, soy sauce],
  [Body water balance, acid-base balance],
  [Muscle wakness, loss of appetite, nausea],
  [Edema, hypertension],

  [*Zinc*],
  [Whole grains, meat, eggs, liver, seafood],
  [Synthesis of proteins, RNA and DNA, immune response],
  [Growth impariment, loss of appetite, skin rash],
  [Decline in high-density cholesterol],
)
