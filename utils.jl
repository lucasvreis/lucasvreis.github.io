using Dates
using Franklin: pagevar, fd_date, locvar
using TikzPictures
using Random

function get_date(fpath)
  date = pagevar(fpath, "date")
  (isnothing(date) || date == Date(1)) && return "Sem data"
  return fd_date(DateTime(date))
end

function blog_page_data(dir)
  data = NTuple{2,String}[]
  for (root, _, files) in walkdir(dir)
    for file in files
      if file[end-1:end] == "md"
        fpath = joinpath(root, file)[1:end-3]
        # some filtering here to check the most recent or whatever
        push!(data, (fpath, get_date(fpath)))
      end
    end
  end
  return data
end

function env_cap(com, _)
  option = Franklin.content(com.braces[1])
  content = Franklin.content(com)
  output = replace(content, option => uppercase(option))
  return "~~~<b>~~~$output~~~</b>~~~"
end

function env_latex(e, _)
end

function env_tikzpicture(e, _)
  content = strip(Franklin.content(e))
  opt = strip(Franklin.content(e.braces[1]))
  preamble = open(joinpath(splitext(
                      Franklin.locvar(:fd_rpath))[1],
                      "tikzpreamble.tex")) do file
    strip(read(file,String)) 
  end
  name = randstring(8)
  # save SVG at __site/assets/[path/to/file]/$name.svg
  rpath = joinpath("assets", splitext(Franklin.locvar(:fd_rpath))[1], "$name.svg")
  outpath = joinpath(Franklin.path(:site), rpath)
  # if the directory doesn't exist, create it
  outdir = dirname(outpath)
  isdir(outdir) || mkpath(outdir)
  # save the file and show it
  save(SVG(outpath), TikzPicture(content,adjustboxOptions="scale=1.5",options=opt,preamble=preamble))
  return "\\fig{/$(Franklin.unixify(rpath))}"
end

include("utils/theorems.jl")

tqmf_pages = blog_page_data("blog/cadernos/tqmf")
ism_pages = blog_page_data("blog/cadernos/ism")
ic_pages = blog_page_data("blog/ic")
# feed_pages = blog_page_data("blog/feed")
