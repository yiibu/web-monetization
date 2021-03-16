## declare an array variable


filename="Rieger, Stephanie - Exploring the Future of Web Monetization"
files=""
input="docs"
output="published"
declare -a contents=("index.md" 
"the-present/index.md" 
"the-present/what-is-the-interledger-protocol.md" 
"the-present/what-is-web-monetization.md" 
"three-futures/index.md" 
"three-futures/reset-the-open-web.md" 
"three-futures/the-bundled-web.md" 
"three-futures/not-your-parents-web.md" 
"recommendations/index.md" 
"recommendations/balance-privacy-and-functionality.md" 
"recommendations/facilitate-bundling.md" 
"recommendations/mitigate-harm.md"
"in-closing/index.md"
"bio-acknowledgements/index.md"
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
pandoc -o "${output}/${filename}.pdf" $files
pandoc -o "${output}/${filename}.epub" metadata.yaml $files