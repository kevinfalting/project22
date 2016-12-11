---
layout: page
title: Test
permalink: /test/
---

# Let's test out some of the syntax and styling available in kramdown's markdown.

You can find all of this information and more at [kramdown.gettalong.org](https://kramdown.gettalong.org/quickref.html)

This file is best viewed in conjunction with it's raw markdown file. However, It's essentially an exact copy of [This Quick Reference](https://kramdown.gettalong.org/quickref.html)

## Paragraphs

The first paragraph.

Another paragraph. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

This is a paragraph  
which contains a hard line break.

## Headers

First level header
==================

Second level header
-------------------

# H1 header

## H2 header

### H3 header

#### H4 header

##### H5 header

###### H6 header

{::options auto_ids="false" /}
# A header without an ID

## Blockquotes

> A sample blockquote.
>
> >Nested blockquotes are
> >also possible.
>
> ## Headers work too
> This is the outer quote again.
> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


> This is a blockquote
continued on this
and this line.

But this is a separate paragraph.

## Code Blocks

This is a sample code block.

    Continued here.

~~~~~~
This is also a code block.
~~~
Ending lines must have at least as
many tildes as the starting line.
~~~~~~~~~~~~

~~~ ruby
def what?
  42
end
~~~

## Horizontal Rules

* * *

---

  _  _  _  _

---------------

## Lists

1. This is a list item
2. And another item
2. And the third one
   with additional text


* A list item
with additional text


1.  This is a list item

    > with a blockquote

    # And a header

2.  Followed by another item



1. Item one
   1. sub item one
   2. sub item two
   3. sub item three
2. Item two



This is a paragraph.
1. This is NOT a list.

1. This is a list!


* Item one
+ Item two
- Item three


## Definition List

term
: definition
: another definition

another term
and another term
: and a definition for the term

term

: definition
: definition


This *is* a term

: This will be a para

  > a blockquote

  # A header


## Tables


| A simple | table |
| with multiple | lines|


| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|----
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=====
| Foot1   | Foot2   | Foot3
{: rules="groups"}


## HTML Elements

<div style="float: right">
Something that stays right and is not wrapped in a para.
</div>

{::options parse_block_html="true" /}

<div>
This is wrapped in a para.
</div>
<p>
This can contain only *span* level elements.
</p>


## Block Attributes

> A nice blockquote
{: title="Blockquote title"}

> A nice blockquote
{: .class1 .class2}


> A nice blockquote
{: #with-an-id}



{:refdef: .c1 #id .c2 title="title"}
paragraph
{: refdef}


{:refdef: .c1 #id .c2 title="title"}
paragraph
{: refdef .c3 title="t" #para}


## Extensions

This is a paragraph
{::comment}
This is a comment which is
completely ignored.
{:/comment}
... paragraph continues here.

Extensions can also be used
inline {::nomarkdown}**see**{:/}!

{::options auto_ids="false" /}

# Header without id


## Emphasis

This is *emphasized*,
_this_ too!


This is **strong**,
__this__ too!


This w**ork**s as expected!


## Links and images


A [link](http://kramdown.gettalong.org)
to the kramdown homepage.

A [link](http://kramdown.gettalong.org "hp")
to the homepage.


A [link][kramdown hp]
to the homepage.

[kramdown hp]: http://kramdown.gettalong.org "hp"

An image: ![gras](\{{ site.url | relative_url }}assets/images/image.jpg)


## Inline Code

Use `Kramdown::Document.new(text).to_html`
to convert the `text` in kramdown
syntax to HTML.

Use backticks to markup code,
e.g. `` `code` ``.


## Footnotes

This is a text with a
footnote[^1].

[^1]: And here is the definition.


This is a text with a
footnote[^2].

[^2]:
    And here is the definition.

    > With a quote!


## Abbreviations

This is an HTML
example.

*[HTML]: Hyper Text Markup Language


## More HTML elements

This is <span style="color: red">written in
red</span>.

This is *red*{: style="color: red"}.
