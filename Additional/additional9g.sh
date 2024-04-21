#!/bin/bash

# Write a script which will extract the values of color and name of color from the standard input.
# A color is a string which is in the format of "name of color": [r, g, b, a] where r, g, b, a are integers.
# A sample input is:
# <span class="token string">"aliceblue"</span><span class="token operator">:
# </span> <span class="token punctuation">[</span><span class="token number">240</span><span class="token punctuation">,</span> <span# class="token number">248</span><span class="token punctuation">,</span> <span class="token number">255</span><span class="token    # punctuation">,</span> <span class="token number">1</span><span class="token punctuation">]</span>

grep -oE '"[a-z]+"|:|\[|[0-9]+|,|\]' span.txt | tr -d "\n" | grep -oE '"[a-z]+":\[[0-9]+,[0-9]+,[0-9]+,[0-9]+\]'
