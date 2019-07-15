syn region dockerfileString start=/"/ end=/"/ containedin=dockerfileEnvWithComment

syn match dockerfilePunctuation "&&" containedin=dockerfileEnvWithComment
syn match dockerfilePunctuation "\\$" containedin=dockerfileEnvWithComment
syn match dockerfilePunctuation "=" containedin=dockerfileEnvWithComment
syn match dockerfilePunctuation ">>" containedin=dockerfileEnvWithComment

syn match dockerfileEnvVar "\$\w\+" containedin=dockerfileEnvWithComment

hi link dockerfileString	String
hi link dockerfileUrl	String
hi link dockerfilePunctuation	Conditional
hi link dockerfileEnvVar	Identifier
