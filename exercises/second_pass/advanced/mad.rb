require 'yaml'

LIBS = YAML.load_file('mad.yml')

NOUNS = ["activity", "linen", "river", "nation", "smash", "jar", "meeting", "grip", "woman", "crate",
"death", "wealth", "duck", "reaction", "slave", "glass", "expansion", "secretary", "edge",
"rainstorm", "addition", "minister", "rub", "cemetery", "land", "substance", "birds", "wound",
"bead", "deer", "horn", "rod", "ink", "touch", "hill", "number", "cart", "market", "cactus",
"jelly", "summer", "attraction", "cracker", "cakes", "top", "bottle", "bulb", "tin", "cars",
"wire", "writer", "coal", "dust", "afterthought", "sleep", "stem", "lunch", "behavior",
"vegetable", "country", "bit", "slope", "ghost", "poison", "history", "church", "alarm",
"bell", "babies", "space", "dinosaurs", "kitty", "tramp", "sack", "writing", "lumber",
"angle", "cave", "building", "experience", "mouth", "middle", "gate", "smoke", "string",
"table", "night", "juice", "party", "birthday", "donkey", "robin", "curve", "hospital",
"rabbit", "desire", "twist", "rock", "protest", "lettuce", "spiders", "bite", "zipper", "grass", "theory",
"volcano", "week", "boy", "detail", "sail", "range", "street", "sofa", "dolls", "class", "use",
"visitor", "house", "library", "run", "pizzas", "face", "chess", "reason", "bear", "support", "voyage",
"dog", "beef", "rice", "hole", "nut", "copper", "legs", "servant", "verse", "winter", "grape", "throne",
"spot", "silver", "trees", "fuel", "horse", "underwear", "bushes", "shock", "pot", "comparison", "arithmetic",
"stretch", "plantation", "ice", "quill", "railway", "straw", "seashore", "needle", "test", "way", "basket",
"battle", "direction", "crack", "planes", "low", "vessel", "twig", "badge", "queen", "cobweb", "spark", "meat",
"drawer", "cellar", "vest", "fold", "surprise", "home", "corn", "rose", "zinc", "stew", "fairies", "soda", "dress",
"cause", "tail", "salt", "temper", "record", "day", "wax", "scene", "dogs", "doctor", "hate", "oven", "plants", "mailbox"]

VERBS = ["stamp", "screw", "return", "continue", "rely", "collect", "pinch", "mourn", "borrow", 
"join", "polish", "laugh", "face", "ski", "whistle", "worry", "call", "look", "wobble", "tie",
"step", "grate", "live", "delight", "suggest", "recognise", "launch", "glow", "appreciate", "remind",
"amuse", "load", "communicate", "radiate", "cry", "try", "wash", "sneeze", "unpack", "include", "enter",
"repair", "zoom", "slap", "search", "reproduce", "rinse", "present", "seal", "blind", "attach", "disappear",
"boil", "trick", "like", "complain", "push", "list", "protect", "crash", "follow", "connect", "spark", "play",
"decorate", "reach", "deserve", "happen", "itch", "knot", "note", "boast", "level", "explode", "disarm", "trip",
"invent", "part", "remove", "puncture", "hand", "dance", "doubt", "touch", "decay", "separate", "care", "yawn",
"bake", "stitch", "ruin", "zip", "pine", "trot", "mine", "judge", "squeak", "crawl", "request", "shop"]

ADVERBS = ["thus", "reluctantly", "eventually", "violently", "together", "rudely", "unabashedly",
"initially", "sheepishly", "powerfully", "inwardly", "correctly", "hardly", "cheerfully", "ultimately",
"joyously", "briefly", "knowledgeably", "heavily", "generously", "gladly", "hourly", "crazily", "currently",
"intently", "positively", "carelessly", "actually", "upside-down", "naturally", "mostly", "softly", "joshingly",
"fondly", "honestly", "coaxingly", "officially", "beautifully", "daintily", "generally", "seldom", "upright",
"dreamily", "knavishly", "even", "partially", "soon", "questioningly", "loosely", "utterly", "significantly",
"possibly", "boldly", "happily", "frightfully", "noisily", "kindheartedly", "tenderly", "suspiciously",
"devotedly", "wildly", "sedately", "ever", "widely", "again", "always", "helpfully", "separately", "essentially",
"bravely", "frankly", "continually", "hastily", "yesterday", "healthily", "lively", "yieldingly", "personally",
"usually", "knottily", "recently", "commonly", "suddenly", "quietly", "arrogantly", "neatly", "zestily", "gratefully",
"mechanically", "successfully", "nearly", "victoriously", "thoughtfully", "lovingly", "wrongly", "directly", "irritably",
"oddly", "moreover", "strongly"]

ADJECTIVES = ["jaded", "laughable", "resolute", "yellow", "normal", "handsomely",
"wicked", "late", "shivering", "sparkling", "level", "typical", "flagrant", "careless",
"wholesale", "fast", "serious", "free", "tasteful", "encouraging", "shrill", "testy", "jumbled",
"rambunctious", "straight", "stingy", "strong", "psychedelic", "defiant", "quickest", "sweltering",
"silky", "diligent", "two", "busy", "silent", "miscreant", "fumbling", "educated", "venomous", "cold",
"fluttering", "snotty", "drab", "abnormal", "sulky", "naive", "incompetent", "earsplitting", "tranquil",
"threatening", "certain", "grubby", "witty", "smelly", "ajar", "perfect", "crooked", "acceptable", "proud",
"null", "addicted", "questionable", "abounding", "tightfisted", "warlike", "great", "dead", "craven", "plain",
"moaning", "decorous", "different", "well-made", "luxuriant", "productive", "astonishing", "condemned", "fearful",
"gainful", "high-pitched", "flippant", "tearful", "jittery", "reflective", "slow", "amuck", "rich", "male", "grotesque",
"better", "fierce", "internal", "true", "shallow", "rough", "roomy", "young", "barbarous", "unequal"]



def replace(string)
  string = string.split(" ").map { |word| word.gsub("noun", NOUNS.sample) }.join(" ")
  string = string.split(" ").map { |word| word.gsub("adverb", ADVERBS.sample) }.join(" ")
  string = string.split(" ").map { |word| word.gsub("verb", VERBS.sample) }.join(" ")
  string = string.split(" ").map { |word| word.gsub("adjective", ADJECTIVES.sample) }.join(" ")
  string
end

p replace(LIBS['one'])
p replace(LIBS['two'])
p replace(LIBS['three'])