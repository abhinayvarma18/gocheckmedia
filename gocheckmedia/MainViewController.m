//
//  MainViewController.m
//  gocheckmedia
//
//  Created by Abhinay Varma on 28/08/16.
//  Copyright (c) 2016 Abhinay Varma. All rights reserved.
//

#import "MainViewController.h"
#import "AccessoryView.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize autocompleteTableView,pastName,autocompleteNames,txtActiveField,flag,index;
@synthesize btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,btn11,btn12;
@synthesize view1,view2,inputAccView,height;

- (void)viewDidLoad {
    [super viewDidLoad];
    //setting flag , index and dummy data to there default values
    flag = NO;
    index = -1;
    height = 0;
    self.pastName = [NSMutableArray arrayWithArray:@[@"Abbrevation",
                     @"AbstractNouns",
                     @"AcademicQuestion",
                     @"Accent",
                     @"Accommodation",
                     @"Acronyms",
                     @"Acrostics",
                     @"ActionVerbs",
                     @"Active",
                     @"AdjectivalNoun",
                     @"Adjective",
                     @"Adjuncts",
                     @"Adverbials",
                     @"Adverbs",
                     @"Affixes",
                     @"Agents",
                     @"Agreement",
                     @"Allegories",
                     @"Alliteration",
                     @"Allomorphs",
                     @"Allophones",
                     @"Allusion",
                     @"Alphabet",
                     @"AlphabetSoup",
                     @"Ambigram",
                     @"AmbitransitiveVerbs",
                     @"Anadiplosis",
                     @"Anaphora",
                     @"AnimateNouns",
                     @"Antagonyms",
                     @"Antecedent",
                     @"Anti-Language",
                     @"Antimetabole",
                     @"Antonyms",
                     @"Aphorism",
                     @"Apodosis",
                     @"Apposition",
                     @"Appositive",@"rchaicLanguage",
                     @"Articles",
                     @"Articulation",
                     @"ArtificialLanguage",
                     @"Aspect",
                     @"Aspiration",
                     @"Assimilation",
                     @"Assonance",
                     @"Asyndeton",
                     @"AttributiveAdjectives",
                     @"Autoantonym",
                     @"AuxiliaryVerbs",
                     @"Back-Channelling",
                     @"Backchaining",
                     @"Backronym",
                     @"BaseForm",
                     @"BilingualDictionaries",
                     @"BlendedLearning",
                     @"Bottom-UpLanguageLearning",
                     @"CapitalLetters",
                     @"CardinalNumbers",
                     @"Case",
                     @"Cataphora",
                     @"CausativeVerbs",
                     @"Chiasmus",
                     @"Clauses",
                     @"CleftSentences",
                     @"Cliche",
                     @"ClosePairs",
                     @"CockneyRhymingSlang",
                     @"Cognate",
                     @"Coleman-LiauIndex",
                     @"CollectiveNouns",
                     @"Colligation",
                     @"Collocations",
                     @"Colloquial",
                     @"CommonAdjective",
                     @"Comparatives",
                     @"Complement",
                     @"ComplexPrepositions",
                     @"ComputerAssistedLanguageLearning(CALL",
                     @"Concord",
                     @"Concordancers",
                     @"ConcreteNouns",
                     @"ConditionalPerfect",
                     @"Conditionals",
                     @"Conjunctions",
                     @"Conjuncts",
                     @"Consonants",
                     @"ContinuousVerbs",
                     @"Contranyms",
                     @"CoordinatingConjunctions",
                     @"CopulaVerbs",
                     @"CountNouns",
                     @"CountableNouns",
                     @"Creoles",
                     @"CrosswordDictionaries",
                     @"DanglingModifiers",@"declarativeMood",
                     @"DefiningRelativeClauses",
                     @"DefiniteArticle",
                     @"Deixis",
                     @"DemonstrativeAdjectives",
                     @"DemonstrativePronouns",
                     @"Demonstratives",
                     @"DeonticModality",
                     @"DescriptiveGrammar",
                     @"Determiners",
                     @"Diachronic",
                     @"Diacritic",
                     @"Dialects",
                     @"Dictionaries",
                     @"DictionariesofContemporaryEnglish",
                     @"DictionaryTypes",
                     @"Diglossia",
                     @"Diminutive",
                     @"DirectObject",
                     @"DirectSpeech",
                     @"DiscourseAnalysis",
                     @"DiscourseMarker",
                     @"Disjuncts",
                     @"Disyllabic",
                     @"DitransitiveVerbs",
                     @"Don't-levelling",
                     @"Dyad",
                     @"DynamicModality",
                     @"DynamicVerbs",
                     @"EAP",
                     @"EFL",
                     @"Eggcorn",
                     @"Ellipsis",
                     @"EmbeddedQuestions",
                     @"EmphaticForms",
                     @"Endophora",
                     @"Epanadiplosis",
                     @"Epanalepsis",
                     @"EpistemicModality",
                     @"Epistrophe",
                     @"Epizeuxis",
                     @"ErgativeVerbs",
                     @"ESL",
                     @"ESOL",
                     @"EstuaryEnglish",
                     @"EtymologicalDictionaries",
                     @"Etymology",
                     @"Euphemisms",
                     @"ExamplesofAcronyms",
                     @"Exophoric",
                     @"FalseCognate",
                     @"FigureofSpeech",
                     @"FiniteVerbs",
                     @"FirstConditional(1stConditional",
                     @"Flesch-KincaidIndex",
                     @"FogIndex",
                     @"Function",
                     @"FusedParticiple",
                     @"FuturePerfect",
                     @"FuturePerfectProgressive(FuturePerfectContinuous",
                     @"FutureProgressive(FutureContinuous",
                     @"Gender",
                     @"Gerunds",
                     @"Gist",
                     @"Glossary",
                     @"Grammar",
                     @"HelpingVerb",
                     @"Heteronyms",
                     @"HistoricPresent",
                     @"Homograph",
                     @"Homonyms",
                     @"Homophones",
                     @"Hyperbole",
                     @"Hyponyms",
                     @"Hypotheticalquestions",
                     @"Idiolects",
                     @"Idioms",
                     @"IllustratedDictionaries",
                     @"Imperatives",
                     @"InanimateNouns",
                     @"InchoativeVerbs",
                     @"IndefiniteArticles",
                     @"IndefinitePronoun",
                     @"IndirectObjects",
                     @"IndirectSpeech",
                     @"InductiveAntonomasia",
                     @"Infinitives",
                     @"Inflection",
                     @"Interjections",
                     @"InterrogativePronouns",
                     @"IntransitiveVerbs",
                     @"Irony",
                     @"IrregularPlurals",
                     @"IrregularVerbs",
                     @"Jargon",
                     @"LeadingQuestions",
                     @"Letters",
                     @"LexicalDensityTest",
                     @"Limericks",
                     @"LinkingVerb",
                     @"Litotes",
                     @"LoanWords",
                     @"LowerCase",
                     @"MainVerbs",
                     @"MajorSentences",
                     @"Malapropisms",
                     @"MassNouns",
                     @"Meiosis",
                     @"Metaphors",
                     @"Metaplasm",
                     @"Metonymy",
                     @"MiddleVerbs",
                     @"MincedOath",
                     @"Mini-Dictionaries",
                     @"MinimalPairs",
                     @"MinorSentence",
                     @"MinorityLanguage",
                     @"MixedConditionals",
                     @"Mnemonics",
                     @"ModalVerbs",
                     @"Mondegreen",
                     @"MonolingualDictionaries",
                     @"Monosyllabic",
                     @"Mood",
                     @"Morphemes",
                     @"Motivation",
                     @"NegativePronouns",
                     @"Negatives",
                     @"Neologisms",
                     @"Non-definingRelativeClauses",
                     @"Non-FiniteVerbs",
                     @"Non-Rhotic",
                     @"NounasAdjective",
                     @"NounPhrases",
                     @"Nouns",
                     @"Number",
                     @"Numerals",
                     @"Objects",
                     @"Onomatopoeia",
                     @"OrdinalNumbers",
                     @"Orthoepy",
                     @"OtherConditionals",
                     @"Oxymorons",
                     @"Palindromes",
                     @"Paragraphs",
                     @"Parsing",
                     @"PartofSpeech",
                     @"Participles",
                     @"Particles",
                     @"PassiveIndex", @"passiveVoice",
                     @"PastParticiples",
                     @"PastPerfect",
                     @"PastPerfectProgressive(PastPerfectContinuous",
                     @"PastProgressive(PastContinuous",
                     @"PastSimple(SimplePast",
                     @"PastSimpleTense",
                     @"Perfect",
                     @"PerfectAspect",
                     @"PerformativeVerb",
                     @"Person",
                     @"PersonalPronouns",
                     @"PhaticSpeech",
                     @"Philology",
                     @"Phonemes",
                     @"PhoneticAlphabet",
                     @"Phonetics",
                     @"PhrasalVerbs",
                     @"Phrases",
                     @"Pidgin",
                     @"Plagiarism",
                     @"Pleonasm",
                     @"Plurals",
                     @"PocketDictionaries",
                     @"Poetry"]
                                                      ];
    self.autocompleteNames = [[NSMutableArray alloc] init];
    
    //setting navigation bar
    self.navigationItem.title = @"";
    UIBarButtonItem *item =[[UIBarButtonItem alloc] initWithTitle:@"X"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    
    [item setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor colorWithRed:43.0/255.0 green:166.0/255.0 blue:255.0/255.0 alpha:1], NSForegroundColorAttributeName,nil]
                          forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = item;
    UIImage *greenImage = [UIImage imageNamed:@"image2.png"];
    UIButton *face = [UIButton buttonWithType:UIButtonTypeCustom];
    face.bounds = CGRectMake( 0, 0, greenImage.size.width, greenImage.size.height );
    [face setImage:greenImage forState:UIControlStateNormal];
    UIBarButtonItem *faceBtn = [[UIBarButtonItem alloc] initWithCustomView:face];
    
    UIImage *notificationImage = [UIImage imageNamed:@"image1.png"];
    UIButton *fac = [UIButton buttonWithType:UIButtonTypeCustom];
    fac.bounds = CGRectMake( 20, 0, notificationImage.size.width, notificationImage.size.height );
    [fac setImage:notificationImage forState:UIControlStateNormal];
    UIBarButtonItem *btnRefresh = [[UIBarButtonItem alloc] initWithCustomView:fac];
    [self.navigationItem setRightBarButtonItems:[NSArray arrayWithObjects:faceBtn, btnRefresh, nil]];
    
    
    //removing suggestions from keyboard
    _textQuote.autocorrectionType = UITextAutocorrectionTypeNo;
   
    //setting tableView
    autocompleteTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 130, 320, 120) style:UITableViewStylePlain];
    autocompleteTableView.delegate = self;
    autocompleteTableView.dataSource = self;
    autocompleteTableView.scrollEnabled = YES;
    autocompleteTableView.hidden = YES;
    [self.view addSubview:autocompleteTableView];
    
}
//creating inputAccView for kryboard inputacc view
-(void)createInputAccessoryView{
    // Create the view that will play the part of the input accessory view.
    //  landscape orientation not supported.
    inputAccView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 5.0, 370.0, 100.0)];
    view1 = [[UIView alloc] initWithFrame:CGRectMake(0.0, 60.0, self.view.frame.size.width, 45.0)];
    
   
    [view1 setBackgroundColor:[UIColor whiteColor]];
    [view1 setAlpha: 0.8];
    btn1 = [UIButton buttonWithType: UIButtonTypeCustom];
    [btn1 setFrame: CGRectMake(0.0, 5.0, 30.0, 30.0)];
    [btn1 setTitle: @"" forState: UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"btn1.png"]
          forState: UIControlStateNormal];
    [btn1 addTarget: self action: @selector(gotoPrevTextfield) forControlEvents: UIControlEventTouchUpInside];
    
    btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setFrame:CGRectMake(63.0f, 5.0f, 40.0f, 40.0f)];
    [btn2 setTitle:@"123" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(gotoNextTextfield) forControlEvents:UIControlEventTouchUpInside];
    
    btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn3 setFrame:CGRectMake(133.0, 5.0f, 30.0f, 30.0f)];
    [btn3 setTitle:@"Done" forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"btn3.png"]
          forState: UIControlStateNormal];
    [btn3 addTarget:self action:@selector(doneTyping) forControlEvents:UIControlEventTouchUpInside];
    
    
    btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn4 setFrame:CGRectMake(203.0, 5.0f, 30.0f, 30.0f)];
    [btn4 setTitle:@"Done" forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"btn4.png"]
          forState: UIControlStateNormal];
    [btn4 addTarget:self action:@selector(doneTyping) forControlEvents:UIControlEventTouchUpInside];
    
    btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn5 setFrame:CGRectMake(273.0, 5.0f, 30.0f, 30.0f)];
    [btn5 setTitle:@"Done" forState:UIControlStateNormal];
    [btn5 setImage:[UIImage imageNamed:@"btn5.png"]
          forState: UIControlStateNormal];
    [btn5 addTarget:self action:@selector(doneTyping) forControlEvents:UIControlEventTouchUpInside];
    
    btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn6 setFrame:CGRectMake(330.0, 5.0f, 30.0f, 30.0f)];
    [btn6 setTitle:@"Done" forState:UIControlStateNormal];
    [btn6 setImage:[UIImage imageNamed:@"btn6.png"]
          forState: UIControlStateNormal];
    [btn6 addTarget:self action:@selector(doneTyping) forControlEvents:UIControlEventTouchUpInside];
    
    // adding buttons to the view.
    [view1 addSubview:btn1];
    [view1 addSubview:btn2];
    [view1 addSubview:btn3];
    [view1 addSubview:btn4];
    [view1 addSubview:btn5];
    [view1 addSubview:btn6];
    
    view1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    view1.layer.borderWidth = 2.0f;
    
    
    view2 = [[UIView alloc] initWithFrame:CGRectMake(0.0, 16.0, self.view.frame.size.width, 45)];
    [view2 setBackgroundColor:[UIColor whiteColor]];
    [view2 setAlpha: 0.8];
    
    btn7 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn7 setFrame:CGRectMake(0.0, 10.0f, 30.0f, 30.0f)];
    [btn7 setImage:[UIImage imageNamed:@"btn7.png"]
          forState: UIControlStateNormal];
    
    btn8 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn8 setFrame:CGRectMake(60.0, 10.0f, 30.0f, 30.0f)];
    [btn8 setImage:[UIImage imageNamed:@"btn8.png"]
          forState: UIControlStateNormal];
    
    
    btn9 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn9 setFrame:CGRectMake(120.0, 10.0f, 30.0f, 40.0f)];
    [btn9 setImage:[UIImage imageNamed:@"btn9.png"]
          forState: UIControlStateNormal];
    
    btn10 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn10 setFrame:CGRectMake(180.0, 10.0f, 30.0f, 30.0f)];
    [btn10 setImage:[UIImage imageNamed:@"btn10.png"]
           forState: UIControlStateNormal];
    
    btn11 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn11 setFrame:CGRectMake(240.0, 10.0f, 40.0f, 30.0f)];
    [btn11 setTitle:@"140" forState:UIControlStateNormal];
    [btn11 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    
    btn12 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn12 setFrame:CGRectMake(300.0, 10.0f, 50.0f, 30.0f)];
    [btn12 setBackgroundColor:[UIColor colorWithRed:43.0/255.0 green:166.0/255.0 blue:255.0/255.0 alpha:1]];
    [btn12 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn12 setTitle:@"Tweet" forState:UIControlStateNormal];
    
    //adding buttons to the view
    [view2 addSubview:btn7];
    [view2 addSubview:btn8];
    [view2 addSubview:btn9];
    [view2 addSubview:btn10];
    [view2 addSubview:btn11];
    [view2 addSubview:btn12];
    view2.layer.borderColor = [UIColor lightGrayColor].CGColor;
    view2.layer.borderWidth = 2.0f;
    //adding views to inputAccView
    [inputAccView addSubview:view1];
    [inputAccView addSubview:view2];
}

//adding input acc view to keyboard
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    
//    [self createInputAccessoryView];
    [textView setInputAccessoryView:self.viewr];
    
    txtActiveField = textView;
    
    _textQuote.text = @"";
    _textQuote.textColor = [UIColor blackColor];
    return true;
}

//handling all the use cases for hash, backspace , and search
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if([text isEqualToString:@"\n"]){
        height+=13;
        autocompleteTableView.hidden = YES;
    }
    if(range.location%55==0 && range.location!=0)
        height+=13;
    if(range.location == 0 && [text isEqualToString:@""])
        return YES;
    if(range.location==index){
        autocompleteTableView.hidden = YES;
        flag = !flag;
        index = -1;
    }
    if([text isEqualToString:@""]&&flag){
        autocompleteTableView.hidden = NO;
        NSString *substring = [textView.text substringWithRange:NSMakeRange(index+1, [textView.text length] - index-2)];
        if(![substring isEqualToString:@""]){
            substring = [NSString stringWithFormat:@"%@%@",substring,text];
        }else{
            substring = [NSString stringWithFormat:@"%@",text];
        }
        [self searchAutocompleteEntriesWithSubstring:substring];
        return true;
    }
    if ([text isEqualToString:@"#"]&&!flag){
        flag = !flag;
        index = (int)range.location;
        return true;
    }else if ([text isEqualToString:@" "]){
        autocompleteTableView.hidden = YES;
        flag = NO;
    }
    if(flag == YES && ![text isEqualToString:@"#"]){
        autocompleteTableView.hidden = NO;
        NSString *substring = [textView.text substringWithRange:NSMakeRange(index+1, [textView.text length] - index-1)];
        if(![substring isEqualToString:@""]){
            substring = [NSString stringWithFormat:@"%@%@",substring,text];
        }else{
            substring = [NSString stringWithFormat:@"%@",text];
        }
        [self searchAutocompleteEntriesWithSubstring:substring];
    }else if(flag == YES && [text isEqualToString:@"#"]){
        autocompleteTableView.hidden = YES;
    }
    return true;
}


- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string {
    autocompleteTableView.hidden = NO;
    
    NSString *substring = [NSString stringWithString:textField.text];
    substring = [substring
                 stringByReplacingCharactersInRange:range withString:string];
    [self searchAutocompleteEntriesWithSubstring:substring];
    return YES;
}

//searches the string from dummy data and populate table view datasource
- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring {
    
    // Put anything that starts with this substring into the autocompleteUrls array
    // The items in this array is what will show up in the table view
    [autocompleteNames removeAllObjects];
    for(NSString *curString in pastName) {
        NSRange substringRange = [curString rangeOfString:substring options:NSCaseInsensitiveSearch];
        if (substringRange.location == 0) {
            [autocompleteNames addObject:curString];
        }
    }
    
    autocompleteTableView.frame = CGRectMake(0, 110+txtActiveField.contentSize.height, 320, 120);
    [autocompleteTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section {
    return autocompleteNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = nil;
    static NSString *AutoCompleteRowIdentifier = @"AutoCompleteRowIdentifier";
    cell = [tableView dequeueReusableCellWithIdentifier:AutoCompleteRowIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AutoCompleteRowIdentifier];
    }
    
    cell.textLabel.text = [autocompleteNames objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark UITableViewDelegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    txtActiveField.text = [NSString stringWithFormat:@"%@#%@",[txtActiveField.text substringWithRange:NSMakeRange(0, index)],selectedCell. textLabel.text];
    autocompleteTableView.hidden = YES;
    //    [self goPressed];a
    
}

-(void)dismissKeyboard {
//    [textQuote resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)gotoPrevTextfield{
  
}

-(void)gotoNextTextfield{
   
}

-(void)doneTyping{
   
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
  
}

@end
