# Copyright (c) 2010 - 2015 Slim Team
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

TEMPLATE_SOURCE = File.read(File.join(File.dirname(__FILE__), 'view.erb'))

def micro_harness_input
end

def header
  'Colors'
end

def item
  [ { name: 'red',   current: true,  url: '#red'   },
    { name: 'green', current: false, url: '#green' },
    { name: 'blue',  current: false, url: '#blue'  } ]
end

def micro_harness_iterations
  40_000
end

def micro_harness_sample(input)
  _erbout = ''
  _erbout.concat "<!--\n"
  _erbout.concat "~ Copyright (c) 2010 - 2015 Slim Team\n"
  _erbout.concat "~\n"
  _erbout.concat "~ Permission is hereby granted, free of charge, to any person obtaining a copy\n"
  _erbout.concat "~ of this software and associated documentation files (the \"Software\"), to deal\n"
  _erbout.concat "~ in the Software without restriction, including without limitation the rights\n"
  _erbout.concat "~ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n"
  _erbout.concat "~ copies of the Software, and to permit persons to whom the Software is\n"
  _erbout.concat "~ furnished to do so, subject to the following conditions:\n"
  _erbout.concat "~\n"
  _erbout.concat "~ The above copyright notice and this permission notice shall be included in\n"
  _erbout.concat "~ all copies or substantial portions of the Software.\n"
  _erbout.concat "~\n"
  _erbout.concat "~ THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n"
  _erbout.concat "~ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n"
  _erbout.concat "~ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n"
  _erbout.concat "~ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n"
  _erbout.concat "~ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n"
  _erbout.concat "~ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN\n"
  _erbout.concat "~ THE SOFTWARE.\n"
  _erbout.concat "-->\n"
  _erbout.concat "\n"
  _erbout.concat "<!DOCTYPE HTML>\n"
  _erbout.concat "\n"
  _erbout.concat "<html>\n"
  _erbout.concat "<head>\n"
  _erbout.concat "  <title>Simple Benchmark</title>\n"
  _erbout.concat "</head>\n"
  _erbout.concat "<body>\n"
  _erbout.concat "<h1>"; _erbout.concat(( header ).to_s); _erbout.concat "</h1>\n"
   unless item.empty? ; _erbout.concat "\n"
  _erbout.concat "  <ul>\n"
  _erbout.concat "    ";  for i in item ; _erbout.concat "\n"
  _erbout.concat "      ";  if i[:current] ; _erbout.concat "\n"
  _erbout.concat "        <li><strong>"; _erbout.concat(( i[:name] ).to_s); _erbout.concat "</strong></li>\n"
  _erbout.concat "      ";  else ; _erbout.concat "\n"
  _erbout.concat "        <li><a href=\""; _erbout.concat(( i[:url] ).to_s); _erbout.concat "\">"; _erbout.concat(( i[:name] ).to_s); _erbout.concat "</a></li>\n"
  _erbout.concat "      ";  end ; _erbout.concat "\n"
  _erbout.concat "    ";  end ; _erbout.concat "\n"
  _erbout.concat "  </ul>\n"
   else ; _erbout.concat "\n"
  _erbout.concat "  <p>The list is empty.</p>\n"
   end ; _erbout.concat "\n"
  _erbout.concat "</body>\n"
  _erbout.concat "</html>\n"
  _erbout.force_encoding(__ENCODING__)

  _erbout.length
end

def micro_harness_expected
  1420
end

require 'bench9000/micro-harness'
