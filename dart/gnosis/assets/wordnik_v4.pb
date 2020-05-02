
2.0§
Wordnik4.0MWordnik is the world's biggest online English dictionary, by number of words
:"
x-apisguru-categories	- text
:?
x-logo53url: https://wordnik.com/img/logo-wordnik-home.png
:À
x-origin³°- converter:
    url: https://github.com/lucybot/api-spec-converter
    version: 2.6.2
  format: swagger
  url: http://developer.wordnik.com/v4/resources.json
  version: "1.1"
: 
x-providerNamewordnik.com
api.wordnik.com"/v4*httpBØ}ø
/account.json/apiTokenStatus×Ô
account-Returns usage statistics for the API account.*getApiTokenStatusB=
;9
7headerWordnik authentication token"api_key*stringJH
F
200?
=
No response was specified 

#/definitions/ApiTokenStatusš
%/account.json/authenticate/{username}ðô
accountAuthenticates a User*authenticateB>
<:"8pathA confirmed Wordnik username"username*stringB6
420queryThe user's password"password2stringJM
K
200D
B
No response was specified%
#
!#/definitions/AuthenticationToken"ö
accountAuthenticates a user*authenticatePostB>
<:"8pathA confirmed Wordnik username"username*stringB4
2
0
The user's passwordbodybody *²
stringJM
K
200D
B
No response was specified%
#
!#/definitions/AuthenticationTokenÙ
/account.json/userÂ¿
accountReturns the logged-in User&Requires a valid auth_token to be set.*getLoggedInUserBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ>
<
2005
3
No response was specified

#/definitions/Userœ
/account.json/wordLists€ý
account0Fetches WordList objects for the logged-in user.*getWordListsForLoggedInUserBB
@>
<headerauth_token of logged-in user"
auth_token*stringB:
864queryResults to skip"skip2integer:int32R0
BP
NLJquery#Maximum number of results to return"limit2integer:int32R50
JQ
O
200H
F
No response was specified)
'²
arrayº

#/definitions/WordList”
/word.json/{word}þû
wordCGiven a word as a string, returns the WordObject that represents it*getWordBB
@>"<path$String value of WordObject to return"word*stringB¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
Bt
rpnquery>Return suggestions (for correct spelling, case variants, etc.)"includeSuggestions2stringR	"true"
JD
B
200;
9
No response was specified

#/definitions/WordObject×
/word.json/{word}/audio»¸
word"Fetches audio metadata for a word.ÐThe metadata includes a time-expiring fileUrl which allows reading the audio file directly from the API.  Currently only audio pronunciations from the American Heritage Dictionary in mp3 format are supported.*getAudioB4
20".pathWord to get audio for."word*stringBS
QOMquery"Use the canonical form of the word"useCanonical2stringR
"false"
BP
NLJquery#Maximum number of results to return"limit2integer:int32R50
JR
P
200I
G
No response was specified*
(²
arrayº

#/definitions/AudioFileË	
/word.json/{word}/definitions©	¦	
wordReturn definitions for a word*getDefinitionsB<
:8"6pathWord to return definitions for"word*stringBQ
OMKquery#Maximum number of results to return"limit2integer:int32R200
BE
CA?query CSV list of part-of-speech types"partOfSpeech2stringBX
VTRquery%Return related words with definitions"includeRelated2stringR
"false"
Bã
àÝÚquery«Source dictionary to return definitions from.  If 'all' is received, results are returned from all sources. If multiple values are received (e.g. 'century,wiktionary'), results are returned from the first specified dictionary that has definitions. If left blank, results are returned from the first dictionary that has definitions. By default, dictionaries are searched in this order: ahd, wiktionary, webster, century, wordnet"sourceDictionaries2arrayB
stringB¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B[
YWUquery+Return a closed set of XML tags in response"includeTags2stringR
"false"
JS
Q
200J
H
No response was specified+
)²
arrayº

#/definitions/Definitionâ
/word.json/{word}/etymologiesÀ½
wordFetches etymology data*getEtymologiesB,
*("&pathWord to return"word*stringB˜
•’querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringJD
B
200;
9
No response was specified
²
arrayº
²
string÷
/word.json/{word}/examplesØÕ
wordReturns examples for a word*getExamplesB9
75"3pathWord to return examples for"word*stringBd
b`^query.Show duplicate examples from different sources"includeDuplicates2stringR
"false"
B¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B:
864queryResults to skip"skip2integer:int32R0
BO
MKIquery#Maximum number of results to return"limit2integer:int32R5
JN
L
200E
C
No response was specified&
$
"#/definitions/ExampleSearchResultsú
/word.json/{word}/frequencyÚ×
wordReturns word usage over time*getWordFrequencyB,
*("&pathWord to return"word*stringB¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B@
><:queryStarting Year"	startYear2integer:int32R1800
B<
:86queryEnding Year"endYear2integer:int32R2012
JJ
H
200A
?
No response was specified"
 
#/definitions/FrequencySummaryñ
/word.json/{word}/hyphenationÏÌ
word'Returns syllable information for a word*getHyphenationB7
53"1pathWord to get syllables for"word*stringB¢
Ÿœ™querynIf true will try to return a correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B‡
„query\Get from a single dictionary. Valid options: ahd, century, wiktionary, webster, and wordnet."sourceDictionary2stringBP
NLJquery#Maximum number of results to return"limit2integer:int32R50
JQ
O
200H
F
No response was specified)
'²
arrayº

#/definitions/Syllable¡
/word.json/{word}/phrasesƒ€
word"Fetches bi-gram phrases for a word*
getPhrasesB7
53"1pathWord to fetch phrases for"word*stringBO
MKIquery#Maximum number of results to return"limit2integer:int32R5
BF
DB@queryMinimum WLMI for the phrase"wlmi2integer:int32R0
B¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
JO
M
200F
D
No response was specified'
%²
arrayº

#/definitions/Bigramþ
 /word.json/{word}/pronunciationsÙÖ
word,Returns text pronunciations for a given word*getTextPronunciationsB<
:8"6pathWord to get pronunciations for"word*stringB¢
Ÿœ™querynIf true will try to return a correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
BE
CA?queryGet from a single dictionary"sourceDictionary2stringB:
864queryText pronunciation type"
typeFormat2stringBP
NLJquery#Maximum number of results to return"limit2integer:int32R50
JQ
O
200H
F
No response was specified)
'²
arrayº

#/definitions/TextPron‰
/word.json/{word}/relatedWordsæã
wordCGiven a word as a string, returns relationships from the Word Graph*getRelatedWordsB=
;9"7pathWord to fetch relationships for"word*stringB¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B`
^\Zquery6Limits the total results per type of relationship type"relationshipTypes2stringBk
igequery+Restrict to the supplied relationship types"limitPerRelationshipType2integer:int32R10
JP
N
200G
E
No response was specified(
&²
arrayº

#/definitions/Relatedÿ
/word.json/{word}/topExampleÞÛ
word Returns a top example for a word*getTopExampleB8
64"2pathWord to fetch examples for"word*stringB¤
¡ž›querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
JA
?
2008
6
No response was specified

#/definitions/ExampleÍ
/wordList.json/{permalink}®ä
wordListFetches a WordList by ID*getWordListByPermalinkBA
?=";pathpermalink of WordList to fetch"	permalink*stringBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJB
@
2009
7
No response was specified

#/definitions/WordListƒ
wordListUpdates an existing WordList*updateWordListBB
@>"<pathpermalink of WordList to update"	permalink*stringB<
:
8
Updated WordListbodybody*
#/definitions/WordListBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified*¾
wordListDeletes an existing WordList*deleteWordListB;
97"5pathID of WordList to delete"	permalink*stringBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified×
&/wordList.json/{permalink}/deleteWords¬"©
wordListRemoves words from a WordList*deleteWordsFromWordListB?
=;"9pathpermalink of WordList to use"	permalink*stringB[
Y
W
Words to remove from WordListbodybody**²
arrayº

#/definitions/StringValueBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specifiedÇ
 /wordList.json/{permalink}/words¢ø
wordListFetches words in a WordList*getWordListWordsB8
64"2pathID of WordList to use"	permalink*stringB>
<:8queryField to sort by"sortBy2stringRcreateDate
B<
:86queryDirection to sort"	sortOrder2stringRdesc
B:
864queryResults to skip"skip2integer:int32R0
BQ
OMKquery#Maximum number of results to return"limit2integer:int32R100
Bž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJU
S
200L
J
No response was specified-
+²
arrayº

#/definitions/WordListWord"¤
wordListAdds words to a WordList*addWordsToWordListB@
><":pathpermalink of WordList to user"	permalink*stringB_
]
[
!Array of words to add to WordListbodybody**²
arrayº

#/definitions/StringValueBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specifiedì
/wordLists.jsonØ"Õ
	wordListsCreates a WordList.*createWordListB>
<
:
WordList to createbodybody*
#/definitions/WordListBž
›˜
•headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJB
@
2009
7
No response was specified

#/definitions/WordListŠ
/words.json/randomWordïì
words"Returns a single random WordObject*getRandomWordBa
_][query-Only return words with dictionary definitions"hasDictionaryDef2stringR	"true"
BP
NLJquery$CSV part-of-speech values to include"includePartOfSpeech2stringBP
NLJquery$CSV part-of-speech values to exclude"excludePartOfSpeech2stringBW
USQquery"Minimum corpus frequency for terms"minCorpusCount2integer:int32R0
BX
VTRquery"Maximum corpus frequency for terms"maxCorpusCount2integer:int32R-1
BQ
OMKqueryMinimum dictionary count"minDictionaryCount2integer:int32R1
BR
PNLqueryMaximum dictionary count"maxDictionaryCount2integer:int32R-1
BC
A?=queryMinimum word length"	minLength2integer:int32R5
BD
B@>queryMaximum word length"	maxLength2integer:int32R-1
JD
B
200;
9
No response was specified

#/definitions/WordObjectØ
/words.json/randomWords¼¹
words&Returns an array of random WordObjects*getRandomWordsBa
_][query-Only return words with dictionary definitions"hasDictionaryDef2stringR	"true"
BP
NLJquery$CSV part-of-speech values to include"includePartOfSpeech2stringBP
NLJquery$CSV part-of-speech values to exclude"excludePartOfSpeech2stringBW
USQquery"Minimum corpus frequency for terms"minCorpusCount2integer:int32R0
BX
VTRquery"Maximum corpus frequency for terms"maxCorpusCount2integer:int32R-1
BQ
OMKqueryMinimum dictionary count"minDictionaryCount2integer:int32R1
BR
PNLqueryMaximum dictionary count"maxDictionaryCount2integer:int32R-1
BC
A?=queryMinimum word length"	minLength2integer:int32R5
BD
B@>queryMaximum word length"	maxLength2integer:int32R-1
B3
1/-queryAttribute to sort by"sortBy2stringB0
.,*querySort direction"	sortOrder2stringBP
NLJquery#Maximum number of results to return"limit2integer:int32R10
JS
Q
200J
H
No response was specified+
)²
arrayº

#/definitions/WordObjectò

/words.json/reverseDictionaryÐ
Í

wordsReverse dictionary search*reverseDictionaryB+
)'%querySearch term"query2stringBP
NLJquery'Restricts words and finds closest sense"findSenseForWord2stringBh
fdbquery6Only include these comma-delimited source dictionaries"includeSourceDictionaries2stringBc
a_]query1Exclude these comma-delimited source dictionaries"excludeSourceDictionaries2stringB^
\ZXquery2Only include these comma-delimited parts of speech"includePartOfSpeech2stringBY
WUSquery-Exclude these comma-delimited parts of speech"excludePartOfSpeech2stringBW
USQquery"Minimum corpus frequency for terms"minCorpusCount2integer:int32R5
BX
VTRquery"Maximum corpus frequency for terms"maxCorpusCount2integer:int32R-1
BC
A?=queryMinimum word length"	minLength2integer:int32R1
BD
B@>queryMaximum word length"	maxLength2integer:int32R-1
B0
.,*queryExpand terms"expandTerms2stringB[
YWUquery+Return a closed set of XML tags in response"includeTags2stringR
"false"
B3
1/-queryAttribute to sort by"sortBy2stringB0
.,*querySort direction"	sortOrder2stringB4
20.queryResults to skip"skip2stringR"0"
BP
NLJquery#Maximum number of results to return"limit2integer:int32R10
JQ
O
200H
F
No response was specified)
'
%#/definitions/DefinitionSearchResultsà
/words.json/search/{query}Á¾
wordsSearches words*searchWordsB+
)'"%pathSearch query"query*stringBF
DB@querySearch case sensitive"caseSensitive2stringR	"true"
B^
\ZXquery2Only include these comma-delimited parts of speech"includePartOfSpeech2stringBY
WUSquery-Exclude these comma-delimited parts of speech"excludePartOfSpeech2stringBW
USQquery"Minimum corpus frequency for terms"minCorpusCount2integer:int32R5
BX
VTRquery"Maximum corpus frequency for terms"maxCorpusCount2integer:int32R-1
Bp
nljquery7Minimum number of dictionary entries for words returned"minDictionaryCount2integer:int32R1
B]
[YWquery#Maximum dictionary definition count"maxDictionaryCount2integer:int32R-1
BC
A?=queryMinimum word length"	minLength2integer:int32R1
BD
B@>queryMaximum word length"	maxLength2integer:int32R-1
B:
864queryResults to skip"skip2integer:int32R0
BP
NLJquery#Maximum number of results to return"limit2integer:int32R10
JK
I
200B
@
No response was specified#
!
#/definitions/WordSearchResultsÝ
/words.json/wordOfTheDayÀ½
wordsReturns a specific WordOfTheDay*getWordOfTheDayB:
864queryFetches by date in yyyy-MM-dd"date2stringJF
D
200=
;
No response was specified

#/definitions/WordOfTheDayJÏ1
à
ApiTokenStatusÍÊÉ
&
expiresInMillisint64²	
integer
%
remainingCallsint64²	
integer
%
resetsInMillisint64²	
integer

token²
string
$
totalRequestsint64²	
integer

valid²	
boolean
Ä
	AudioFile¶šidÊ­

attributionText²
string

attributionUrl²
string

	audioType²
string
#
commentCountint32²	
integer

	createdAtdate²
string

	createdBy²
string

description²
string

durationdouble²
number

fileUrl²
string

idint64²	
integer
!
voteAveragefloat²
number
 
	voteCountint32²	
integer
)
voteWeightedAveragefloat²
number

word²
string
@
	AudioType3Ê0

idint32²	
integer

name²
string
m
AuthenticationTokenVÊS

token²
string

userIdint64²	
integer

userSignature²
string
‘
Bigram†Ê‚

countint64²	
integer

gram1²
string

gram2²
string

midouble²
number

wlmidouble²
number
D
Category8šidÊ0

idint64²	
integer

name²
string
;
Citation/Ê,

cite²
string

source²
string
F
ContentProvider3Ê0

idint32²	
integer

name²
string
å

DefinitionÖÊÒ

attributionText²
string

attributionUrl²
string
4
	citations'²
arrayº

#/definitions/Citation
:
exampleUses+²
arrayº

#/definitions/ExampleUsage

extendedText²
string
.
labels$²
arrayº

#/definitions/Label
,
notes#²
arrayº

#/definitions/Note

partOfSpeech²
string
6
relatedWords&²
arrayº

#/definitions/Related

scorefloat²
number

	seqString²
string

sequence²
string

sourceDictionary²
string

text²
string
4
	textProns'²
arrayº

#/definitions/TextPron

word²
string
y
DefinitionSearchResults^Ê[
4
results)²
arrayº

#/definitions/Definition
#
totalResultsint32²	
integer
÷
ExampleëÊç
!

documentIdint64²	
integer
 
	exampleIdint64²	
integer

idint64²	
integer
+
provider
#/definitions/ContentProvider

ratingfloat²
number
#
score
#/definitions/ScoredWord
$
sentence
#/definitions/Sentence

text²
string

title²
string

url²
string

word²
string

yearint32²	
integer

ExampleSearchResultsgÊd
2
examples&²
arrayº

#/definitions/Example
.
facets$²
arrayº

#/definitions/Facet
(
ExampleUsageÊ

text²
string
[
FacetRÊO
8
facetValues)²
arrayº

#/definitions/FacetValue

name²
string
E

FacetValue7Ê4

countint64²	
integer

value²
string
K
	Frequency>Ê;

countint64²	
integer

yearint32²	
integer
Ñ
FrequencySummary¼Ê¸
5
	frequency(²
arrayº

#/definitions/Frequency

frequencyString²
string
!

totalCountint64²	
integer
'
unknownYearCountint32²	
integer

word²
string
6
Label-Ê*

text²
string

type²
string

NotewÊt
'
	appliesTo²
arrayº
²
string

noteType²
string

posint32²	
integer

value²
string
¨
PartOfSpeech—Ê“
8
allCategories'²
arrayº

#/definitions/Category
,
roots#²
arrayº

#/definitions/Root
)
storageAbbr²
arrayº
²
string
Ç
Related»Ê·

gram²
string

label1²
string

label2²
string

label3²
string

label4²
string

relationshipType²
string
#
words²
arrayº
²
string
w
RootošidÊg
5

categories'²
arrayº

#/definitions/Category

idint64²	
integer

name²
string
Õ

ScoredWordÆÊÂ
$
baseWordScoredouble²
number
#
docTermCountint32²	
integer

idint64²	
integer

lemma²
string

partOfSpeech²
string

positionint32²	
integer

scorefloat²
number
!

sentenceIdint64²	
integer

stopword²	
boolean

word²
string

wordType²
string
è
SentenceÛÊ×

display²
string
)
documentMetadataIdint64²	
integer

hasScoredWords²	
boolean

idint64²	
integer

ratingint32²	
integer
8
scoredWords)²
arrayº

#/definitions/ScoredWord
u
SimpleDefinitionaÊ^

note²
string

partOfSpeech²
string

source²
string

text²
string
n
SimpleExample]ÊZ

idint64²	
integer

text²
string

title²
string

url²
string
'
StringValueÊ

word²
string
U
SyllableIÊF

seqint32²	
integer

text²
string

type²
string
W
TextPronKÊH

raw²
string

rawType²
string

seqint32²	
integer
ß
UserÖÊÒ

displayName²
string

email²
string


faceBookId²
string

idint64²	
integer

password²
string

statusint32²	
integer

userName²
string

username²
string
Ó
WordListÆÊÂ

	createdAtdate²
string

description²
string

idint64²	
integer
#
lastActivityAtdate²
string

name²
string
(
numberWordsInListint64²	
integer

	permalink²
string

type²
string

	updatedAtdate²
string

userIdint64²	
integer

username²
string
ó
WordListWordâšidÊÙ

	createdAtdate²
string

idint64²	
integer
+
numberCommentsOnWordint64²	
integer
"
numberListsint64²	
integer

userIdint64²	
integer

username²
string

word²
string
Å

WordObject¶šidÊ­

canonicalForm²
string

idint64²	
integer

originalWord²
string
)
suggestions²
arrayº
²
string

vulgar²
string

word²
string
µ
WordOfTheDay¤šidÊ›

category²
string
2
contentProvider
#/definitions/ContentProvider

	createdAtdate²
string

	createdBy²
string
>
definitions/²
arrayº"
 
#/definitions/SimpleDefinition
8
examples,²
arrayº

#/definitions/SimpleExample

	htmlExtra²
string

idint64²	
integer

note²
string

parentId²
string
 
publishDatedate²
string

word²
string
m
WordSearchResultYÊV

countint64²	
integer
!

lexicalitydouble²
number

word²
string

WordSearchResultsjÊg
@
searchResults/²
arrayº"
 
#/definitions/WordSearchResult
#
totalResultsint32²	
integerb

api_key j'
%
api_key
apiKey_apikeyqueryr	
accountr
wordr

wordListr
	wordListsr
wordszhttp://developer.wordnik.com/