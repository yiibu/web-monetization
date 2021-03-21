## declare an array variable

cover="cover.png"
filename="Exploring_the_Future_of_Web_Monetization"
files=""
input="docs"
output="published"
stylesheet="epub.css"
declare -a contents=("index.md" \
"the-present/index.md" \
"the-present/what-is-the-interledger-protocol.md" \
"the-present/what-is-web-monetization.md" \
"three-futures/index.md" \
"three-futures/reset-the-open-web.md" \
"three-futures/the-bundled-web.md" \
"three-futures/not-your-parents-web.md" \
"recommendations/index.md" \
"recommendations/balance-privacy-and-functionality.md" \
"recommendations/facilitate-bundling.md" \
"recommendations/mitigate-harm.md" \
"final-words.md" \
"bio-acknowledgements.md"
)

## now loop through the above array
for page in "${contents[@]}"
do
    page=$(printf %q "$page")
    path="./${input}/${page}"
    files="${files} ${path}"
    # or do whatever with individual element of the array
done

mkdir -p ${output}
pandoc -o "${output}/${filename}.epub" metadata.yaml $files --epub-cover-image=$cover --toc --toc-depth=2 --css=$stylesheet