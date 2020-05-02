
2.0�
Wordnik4.0MWordnik is the world's biggest online English dictionary, by number of words
:"
x-apisguru-categories	- text
:?
x-logo53url: https://wordnik.com/img/logo-wordnik-home.png
:�
x-origin��- converter:
    url: https://github.com/lucybot/api-spec-converter
    version: 2.6.2
  format: swagger
  url: http://developer.wordnik.com/v4/resources.json
  version: "1.1"
: 
x-providerNamewordnik.com
api.wordnik.com"/v4*httpB�}�
/account.json/apiTokenStatus��
account-Returns usage statistics for the API account.*getApiTokenStatusB=
;9
7headerWordnik authentication token"api_key*stringJH
F
200?
=
No response was specified 

#/definitions/ApiTokenStatus�
%/account.json/authenticate/{username}��
accountAuthenticates a User*authenticateB>
<:"8pathA confirmed Wordnik username"username*stringB6
420queryThe user's password"password2stringJM
K
200D
B
No response was specified%
#
!#/definitions/AuthenticationToken"�
accountAuthenticates a user*authenticatePostB>
<:"8pathA confirmed Wordnik username"username*stringB4
2
0
The user's passwordbodybody *�
stringJM
K
200D
B
No response was specified%
#
!#/definitions/AuthenticationToken�
/account.json/user��
accountReturns the logged-in User&Requires a valid auth_token to be set.*getLoggedInUserB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ>
<
2005
3
No response was specified

#/definitions/User�
/account.json/wordLists��
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
'�
array�

#/definitions/WordList�
/word.json/{word}��
wordCGiven a word as a string, returns the WordObject that represents it*getWordBB
@>"<path$String value of WordObject to return"word*stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
Bt
rpnquery>Return suggestions (for correct spelling, case variants, etc.)"includeSuggestions2stringR	"true"
JD
B
200;
9
No response was specified

#/definitions/WordObject�
/word.json/{word}/audio��
word"Fetches audio metadata for a word.�The metadata includes a time-expiring fileUrl which allows reading the audio file directly from the API.  Currently only audio pronunciations from the American Heritage Dictionary in mp3 format are supported.*getAudioB4
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
(�
array�

#/definitions/AudioFile�	
/word.json/{word}/definitions�	�	
wordReturn definitions for a word*getDefinitionsB<
:8"6pathWord to return definitions for"word*stringBQ
OMKquery#Maximum number of results to return"limit2integer:int32R200
BE
CA?query CSV list of part-of-speech types"partOfSpeech2stringBX
VTRquery%Return related words with definitions"includeRelated2stringR
"false"
B�
���query�Source dictionary to return definitions from.  If 'all' is received, results are returned from all sources. If multiple values are received (e.g. 'century,wiktionary'), results are returned from the first specified dictionary that has definitions. If left blank, results are returned from the first dictionary that has definitions. By default, dictionaries are searched in this order: ahd, wiktionary, webster, century, wordnet"sourceDictionaries2arrayB
stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B[
YWUquery+Return a closed set of XML tags in response"includeTags2stringR
"false"
JS
Q
200J
H
No response was specified+
)�
array�

#/definitions/Definition�
/word.json/{word}/etymologies��
wordFetches etymology data*getEtymologiesB,
*("&pathWord to return"word*stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringJD
B
200;
9
No response was specified
�
array�
�
string�
/word.json/{word}/examples��
wordReturns examples for a word*getExamplesB9
75"3pathWord to return examples for"word*stringBd
b`^query.Show duplicate examples from different sources"includeDuplicates2stringR
"false"
B�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
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
"#/definitions/ExampleSearchResults�
/word.json/{word}/frequency��
wordReturns word usage over time*getWordFrequencyB,
*("&pathWord to return"word*stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
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
 
#/definitions/FrequencySummary�
/word.json/{word}/hyphenation��
word'Returns syllable information for a word*getHyphenationB7
53"1pathWord to get syllables for"word*stringB�
���querynIf true will try to return a correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B�
��query\Get from a single dictionary. Valid options: ahd, century, wiktionary, webster, and wordnet."sourceDictionary2stringBP
NLJquery#Maximum number of results to return"limit2integer:int32R50
JQ
O
200H
F
No response was specified)
'�
array�

#/definitions/Syllable�
/word.json/{word}/phrases��
word"Fetches bi-gram phrases for a word*
getPhrasesB7
53"1pathWord to fetch phrases for"word*stringBO
MKIquery#Maximum number of results to return"limit2integer:int32R5
BF
DB@queryMinimum WLMI for the phrase"wlmi2integer:int32R0
B�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
JO
M
200F
D
No response was specified'
%�
array�

#/definitions/Bigram�
 /word.json/{word}/pronunciations��
word,Returns text pronunciations for a given word*getTextPronunciationsB<
:8"6pathWord to get pronunciations for"word*stringB�
���querynIf true will try to return a correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
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
'�
array�

#/definitions/TextPron�
/word.json/{word}/relatedWords��
wordCGiven a word as a string, returns relationships from the Word Graph*getRelatedWordsB=
;9"7pathWord to fetch relationships for"word*stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
B`
^\Zquery6Limits the total results per type of relationship type"relationshipTypes2stringBk
igequery+Restrict to the supplied relationship types"limitPerRelationshipType2integer:int32R10
JP
N
200G
E
No response was specified(
&�
array�

#/definitions/Related�
/word.json/{word}/topExample��
word Returns a top example for a word*getTopExampleB8
64"2pathWord to fetch examples for"word*stringB�
���querypIf true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested."useCanonical2stringR
"false"
JA
?
2008
6
No response was specified

#/definitions/Example�
/wordList.json/{permalink}��
wordListFetches a WordList by ID*getWordListByPermalinkBA
?=";pathpermalink of WordList to fetch"	permalink*stringB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJB
@
2009
7
No response was specified

#/definitions/WordList�
wordListUpdates an existing WordList*updateWordListBB
@>"<pathpermalink of WordList to update"	permalink*stringB<
:
8
Updated WordListbodybody*
#/definitions/WordListB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified*�
wordListDeletes an existing WordList*deleteWordListB;
97"5pathID of WordList to delete"	permalink*stringB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified�
&/wordList.json/{permalink}/deleteWords�"�
wordListRemoves words from a WordList*deleteWordsFromWordListB?
=;"9pathpermalink of WordList to use"	permalink*stringB[
Y
W
Words to remove from WordListbodybody**�
array�

#/definitions/StringValueB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified�
 /wordList.json/{permalink}/words��
wordListFetches words in a WordList*getWordListWordsB8
64"2pathID of WordList to use"	permalink*stringB>
<:8queryField to sort by"sortBy2stringRcreateDate
B<
:86queryDirection to sort"	sortOrder2stringRdesc
B:
864queryResults to skip"skip2integer:int32R0
BQ
OMKquery#Maximum number of results to return"limit2integer:int32R100
B�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJU
S
200L
J
No response was specified-
+�
array�

#/definitions/WordListWord"�
wordListAdds words to a WordList*addWordsToWordListB@
><":pathpermalink of WordList to user"	permalink*stringB_
]
[
!Array of words to add to WordListbodybody**�
array�

#/definitions/StringValueB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJ&
$
200

No response was specified�
/wordLists.json�"�
	wordListsCreates a WordList.*createWordListB>
<
:
WordList to createbodybody*
#/definitions/WordListB�
��
�headeruThe auth token of the logged-in user, obtained by calling /account.{format}/authenticate/{username} (described above)"
auth_token*stringJB
@
2009
7
No response was specified

#/definitions/WordList�
/words.json/randomWord��
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
#/definitions/WordObject�
/words.json/randomWords��
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
)�
array�

#/definitions/WordObject�

/words.json/reverseDictionary�
�

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
%#/definitions/DefinitionSearchResults�
/words.json/search/{query}��
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
#/definitions/WordSearchResults�
/words.json/wordOfTheDay��
wordsReturns a specific WordOfTheDay*getWordOfTheDayB:
864queryFetches by date in yyyy-MM-dd"date2stringJF
D
200=
;
No response was specified

#/definitions/WordOfTheDayJ�1
�
ApiTokenStatus���
&
expiresInMillisint64�	
integer
%
remainingCallsint64�	
integer
%
resetsInMillisint64�	
integer

token�
string
$
totalRequestsint64�	
integer

valid�	
boolean
�
	AudioFile��id��

attributionText�
string

attributionUrl�
string

	audioType�
string
#
commentCountint32�	
integer

	createdAtdate�
string

	createdBy�
string

description�
string

durationdouble�
number

fileUrl�
string

idint64�	
integer
!
voteAveragefloat�
number
 
	voteCountint32�	
integer
)
voteWeightedAveragefloat�
number

word�
string
@
	AudioType3�0

idint32�	
integer

name�
string
m
AuthenticationTokenV�S

token�
string

userIdint64�	
integer

userSignature�
string
�
Bigram���

countint64�	
integer

gram1�
string

gram2�
string

midouble�
number

wlmidouble�
number
D
Category8�id�0

idint64�	
integer

name�
string
;
Citation/�,

cite�
string

source�
string
F
ContentProvider3�0

idint32�	
integer

name�
string
�

Definition���

attributionText�
string

attributionUrl�
string
4
	citations'�
array�

#/definitions/Citation
:
exampleUses+�
array�

#/definitions/ExampleUsage

extendedText�
string
.
labels$�
array�

#/definitions/Label
,
notes#�
array�

#/definitions/Note

partOfSpeech�
string
6
relatedWords&�
array�

#/definitions/Related

scorefloat�
number

	seqString�
string

sequence�
string

sourceDictionary�
string

text�
string
4
	textProns'�
array�

#/definitions/TextPron

word�
string
y
DefinitionSearchResults^�[
4
results)�
array�

#/definitions/Definition
#
totalResultsint32�	
integer
�
Example���
!

documentIdint64�	
integer
 
	exampleIdint64�	
integer

idint64�	
integer
+
provider
#/definitions/ContentProvider

ratingfloat�
number
#
score
#/definitions/ScoredWord
$
sentence
#/definitions/Sentence

text�
string

title�
string

url�
string

word�
string

yearint32�	
integer

ExampleSearchResultsg�d
2
examples&�
array�

#/definitions/Example
.
facets$�
array�

#/definitions/Facet
(
ExampleUsage�

text�
string
[
FacetR�O
8
facetValues)�
array�

#/definitions/FacetValue

name�
string
E

FacetValue7�4

countint64�	
integer

value�
string
K
	Frequency>�;

countint64�	
integer

yearint32�	
integer
�
FrequencySummary���
5
	frequency(�
array�

#/definitions/Frequency

frequencyString�
string
!

totalCountint64�	
integer
'
unknownYearCountint32�	
integer

word�
string
6
Label-�*

text�
string

type�
string

Notew�t
'
	appliesTo�
array�
�
string

noteType�
string

posint32�	
integer

value�
string
�
PartOfSpeech���
8
allCategories'�
array�

#/definitions/Category
,
roots#�
array�

#/definitions/Root
)
storageAbbr�
array�
�
string
�
Related���

gram�
string

label1�
string

label2�
string

label3�
string

label4�
string

relationshipType�
string
#
words�
array�
�
string
w
Rooto�id�g
5

categories'�
array�

#/definitions/Category

idint64�	
integer

name�
string
�

ScoredWord���
$
baseWordScoredouble�
number
#
docTermCountint32�	
integer

idint64�	
integer

lemma�
string

partOfSpeech�
string

positionint32�	
integer

scorefloat�
number
!

sentenceIdint64�	
integer

stopword�	
boolean

word�
string

wordType�
string
�
Sentence���

display�
string
)
documentMetadataIdint64�	
integer

hasScoredWords�	
boolean

idint64�	
integer

ratingint32�	
integer
8
scoredWords)�
array�

#/definitions/ScoredWord
u
SimpleDefinitiona�^

note�
string

partOfSpeech�
string

source�
string

text�
string
n
SimpleExample]�Z

idint64�	
integer

text�
string

title�
string

url�
string
'
StringValue�

word�
string
U
SyllableI�F

seqint32�	
integer

text�
string

type�
string
W
TextPronK�H

raw�
string

rawType�
string

seqint32�	
integer
�
User���

displayName�
string

email�
string


faceBookId�
string

idint64�	
integer

password�
string

statusint32�	
integer

userName�
string

username�
string
�
WordList���

	createdAtdate�
string

description�
string

idint64�	
integer
#
lastActivityAtdate�
string

name�
string
(
numberWordsInListint64�	
integer

	permalink�
string

type�
string

	updatedAtdate�
string

userIdint64�	
integer

username�
string
�
WordListWord��id��

	createdAtdate�
string

idint64�	
integer
+
numberCommentsOnWordint64�	
integer
"
numberListsint64�	
integer

userIdint64�	
integer

username�
string

word�
string
�

WordObject��id��

canonicalForm�
string

idint64�	
integer

originalWord�
string
)
suggestions�
array�
�
string

vulgar�
string

word�
string
�
WordOfTheDay��id��

category�
string
2
contentProvider
#/definitions/ContentProvider

	createdAtdate�
string

	createdBy�
string
>
definitions/�
array�"
 
#/definitions/SimpleDefinition
8
examples,�
array�

#/definitions/SimpleExample

	htmlExtra�
string

idint64�	
integer

note�
string

parentId�
string
 
publishDatedate�
string

word�
string
m
WordSearchResultY�V

countint64�	
integer
!

lexicalitydouble�
number

word�
string

WordSearchResultsj�g
@
searchResults/�
array�"
 
#/definitions/WordSearchResult
#
totalResultsint32�	
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