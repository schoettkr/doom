;;; +misc/rethink-light.el -*- lexical-binding: t; -*-

(setq rethink-light " <style type='text/css'>
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i');

/* Set variables */
:root {
    --font-size-1: 2rem;
    --font-size-2: 1.5rem;
    --font-size-3: 1.15rem;
    --font-size-4: 1rem;

    --font-size-small: 0.8rem;
    --font-size-xsmall: 0.6rem;

}

/* Set padding and margin */

html, body{
    padding: 0;
    margin: 0;
    background-color: #fdfdfd;
}

/* Header margin */
h2{margin-top: 2rem; margin-bottom: 1.5rem;}
h3{margin-top: 1rem; margin-bottom: 1rem;}
h4{margin-top: 1rem; margin-bottom: 1rem;}

/* ------------------------- */

::selection {
    background-color: purple;
    color: white;
}

html, body{
    font-family: 'Source Sans Pro', Helvetica, sans-serif;
		font-weight: 300;
}


h1{font-size: var(--font-size-1);}
h2{font-size: var(--font-size-2);}
h3{font-size: var(--font-size-3);}
h4{font-size: var(--font-size-3);}
h5{font-size: var(--font-size-3);}

h1 > .subtitle{
    font-size: var(--font-size-3);
}

h1, h2, h3, h4, h5, h6 {
		font-weight: 300;
		letter-spacing: -0.03em;
}


.outline-2 > h2, #table-of-contents > h2{
    text-align: center;
}

/* Table of contents */
#table-of-contents ul{
    list-style-type:none;
    margin: 0;
}


#table-of-contents .tag{
    display: none;
}

.outline-3{
    border-bottom: 1px solid #CCC;
}

.outline-2 > h2{
    grid-row-start: 1;
    grid-row-end: 2;
}

.outline-2{
    grid-row-start: 2;
    grid-row-end: 3;
}

img{
    max-width: 100%;
}


/* Code */
pre{
    margin: 1rem;
    background-color: #EEE;
    padding: 0.5rem;
    border-radius: 0.2rem;
    font-size: var(--font-size-small) !important;
}


.outline-3{
    display: grid;
    grid-template-columns: 40fr 60fr;
}

 /* Responsive content positioning */
@media only screen and (min-width: 750px) /* Large screens */
{
    .outline-3{
        margin: 0vh 10vw;
    }

    .outline-text-2, #table-of-contents{
        padding: 0vh 10vw;
    }

}

@media only screen and (max-width: 750px) /* Small screens */
{
    .outline-3{
        margin: 0vh 5vw;
        display: block;
    }

    .outline-text-2, #table-of-contents{
        padding: 0vh 5vw;
    }
}


blockquote{
    border-left: 0.2rem solid purple;
    padding-left: 1rem;
		font-style: italic;
}


p, pre, ol, ul, table, code{
    color: #1A1A1A;
}

table, blockquote, pre, ol, ul, p, #postamble{
    margin-top: 1rem;
    margin-bottom: 1rem;
}

h1, h2, h3, h4, h5, h6{
    color: #0A0A0A;
}

.tag{
    margin-top: 0.5rem;
    display: block;
    color: white;
    font-size: var(--font-size-xsmall);
}

.tag > span{
		font-weight: 400;
    font-size: 0.6rem;
    background-color: purple;
    text-transform: uppercase;
    border-radius: 2px;
    width: fit-content;
    height: auto;
    padding: 1px 5px;
    margin: 1px;
}
/* Stripe table */
tr:nth-child(even) {
  background-color: #EEE;
}

.title{
   padding: 2vh 5vw;
}

pre{
		font-family: 'Courier New', monospace;
    font-size: var(--font-size-4)
    max-width: 100%;
    overflow-x: auto;
}

.org-org-meta-line{
    color: purple;
}

.org-keyword{
    color: purple;
}

a{
    color: purple;
}

.underline{
    text-decoration: underline;
}

.todo{
    color: #7D161A;
		font-weight: 400;
}

.done{
    color: purple;
		font-weight: 400;
}

/* Postamble */

#postamble{
    text-align: center;
    width: 100%;
}

#postamble > p{
    display: inline;
    font-size: var(--font-size-4)
}

.outline-text-2, .outline-text-3, .outline-text-4{
	max-width: 100%;
	overflow-x: auto;
}

</style>")
(setq org-html-head rethink-light)
