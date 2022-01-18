let makeResume = ./dhallResume.dhall

let resume = makeResume.helpers

let socials =
      { github = resume.socialHelpers.github::{ userName = "AryaMoghaddam" }
      , linkedin = resume.socialHelpers.linkedin::{ userName = "aryajm" }
      }

let info =
      resume.PersonalInfo::{
      , name = "Arya Moghaddam"
      , title = "Software Engineer, Product Manager"
      , email = "ajavadim@uwaterloo.ca"
      , phone = "1 (647) 994-2125"
      , site = "https://aryamo.webflow.io/"
      , socials = toMap socials
      }

let workExperience =
      { `Interac` = resume.Job::{
        , company = "Interac"
        , title = resume.sweIntern "API Product Manager"
        , location = "Toronto, Ontario"
        , dates =
          { start = { year = 2022, month = resume.Month.January }
          , end =
              resume.EndDate.Date { year = 2022, month = resume.Month.April }
          }
        , skills = [ "REST API", "Jira", "Data Retention"]
        , bulletPoints =
          [ "Utilized YAML and JSON code following OpenAPI concepts to finalize and publish External/3rd party payment product with the goal of bringing Auto Deposit product to 60% transaction volume from 52%"
          , "Wrote API documentation on Interac e-transfer, Pay by Bank and Digital ID products focusing on Sub-Collections and Data Retention to enable external developers use Interac’s APIs "
          , "Developed Minimum Marketable Features (MMF) Auto Deposit, Auto Reclaim and Fraud APIs to avoid inefficient distribution of resources and decrease time to market"
          , "Created Jira Roadmaps, User Stories, Epics and Spikes on Pay by Bank and e-transfer projects"
          ]
        }
      , `Watolink` = resume.Job::{
        , company = "Watolink"
        , title = "Infrastructure Core Member"
        , location = "Waterloo, Ontario"
        , dates =
          { start = { year = 2021, month = resume.Month.October }
          , end =
              resume.EndDate.Date { year = 2022, month = resume.Month.January }
          }
        , skills = [ "Docker", "Git" ]
        , bulletPoints = 
          [ "Utilized Docker to run server-based applications, to minimize infrastructure delay and manage team operationsn"
          , "Developed a test automation framework to ensure all components of the project are stable"
          , "Embedded a standardized SSH Dev and SYS Integration procedure and toolkit for each sub team"
          ]
        }
 
let chronological_jobs
    : List resume.Job.Type
    = [ workExperience.`Interac`
      , workExperience.`Watolink`
 
      ]


let projects =
      { board-to-latex = resume.Project::{
        , author = "AryaMoghaddam"
        , title = "board-to-latex"
        , skills = [ "Python", "Jupyter Notebook", "Latex" ]
        , blurb = "Favorite music genre predictor"
        }
      , rag-shenanigann = resume.Project::{
        , author = "s-zeng"
        , title = "rag-shenanigann"
        , skills = [ "Python", "Torch", "MIDI" ]
        , blurb = "Generate ragtime music with AI"
        }
      , dhall-python = resume.Project::{
        , author = "s-zeng"
        , title = "dhall-python"
        , skills = [ "Rust", "Python", "Dhall" ]
        , blurb =
            "Python bindings for Dhall, a functional configuration language"
        }
      }

let contribs =
      { dhall-kubernetes = resume.Contrib::{
        , project = resume.Project::{
          , author = "dhall-lang"
          , title = "dhall-kubernetes"
          , skills = [ "Kubernetes", "Dhall" ]
          , blurb = "Dhall bindings to kubernetes"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "3367b683fa6ba3658719d6c1ac0cc043fd82f650"
            , shortHash = "3367b68"
            , blurb = "Remove declaration of deprecated python script"
            }
          ]
        }
      , `telescope.nvim` = resume.Contrib::{
        , project = resume.Project::{
          , author = "nvim-lua"
          , title = "telescope.nvim"
          , skills = [ "Lua", "Vim Script" ]
          , blurb = "Neovim fuzzy finder in pure lua"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "59ef37ded43a77a4c0f35be434f1ea72a407ce84"
            , shortHash = "59ef37d"
            , blurb = "Implement shortcut to dynamically use other telescopes"
            }
          ]
        }
      , parinfer-rust = resume.Contrib::{
        , project = resume.Project::{
          , author = "eraserhd"
          , title = "parinfer-rust"
          , skills = [ "Rust", "Vim" ]
          , blurb = "Infer Lisp parenthesis placement from indentation"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "835541eb3de66d06db2ffd2694375090e1221902"
            , shortHash = "835541e"
            , blurb = "Add support for Dune"
            }
          ]
        }
      , `repl.vim` = resume.Contrib::{
        , project = resume.Project::{
          , author = "ujihisa"
          , title = "repl.vim"
          , skills = [ "Vim Script", "Racket" ]
          , blurb = "Run REPLs right inside vim"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "4910aa7d7b0c7abda92dcfdb4cde030fb839091d"
            , shortHash = "4910aa7"
            , blurb = "Add support for Racket"
            }
          ]
        }
      , dhall-lang = resume.Contrib::{
        , project = resume.Project::{
          , author = "dhall-lang"
          , title = "dhall-lang"
          , skills = [ "Dhall", "Haskell" ]
          , blurb = "Maintainable configuration files"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "b22cce186791bc3f4bd6b6808033adf86f30af6d"
            , shortHash = "b22cce1"
            , blurb = "Add support for Dhall v19"
            }
          ]
        }
      , nvim-tree = resume.Contrib::{
        , project = resume.Project::{
          , author = "kyazdani42"
          , title = "nvim-tree.lua"
          , skills = [ "Lua", "Vim Script" ]
          , blurb = "A fast file explorer tree for neovim"
          }
        , commits =
          [ resume.Commit::{
            , longHash = "9aa8be639d4daad4f80552bc48a412efae7fbe4e"
            , shortHash = "9aa8be6"
            , blurb = "Fix crash from glibc bug"
            }
          ]
        }
      }

let miscExperience =
      { swim = resume.IconHighlight::{
        , icon = "\\faLifeSaver"
        , title = "Swim Instructor"
        , blurb = "Certified by Red Cross and Life Saving Society"
        }
      , accordion = resume.IconHighlight::{
        , icon = "\\faMusic"
        , title = "Accordion Teacher"
        , blurb = "Offering private lessons"
        }
      , counsellor = resume.IconHighlight::{
        , icon = "\\faBinoculars"
        , title = "Camp Counsellor"
        , blurb = "For youth robotics camps"
        }
      , ta = resume.IconHighlight::{
        , icon = "\\faGraduationCap"
        , title = "Teaching Assistant"
        , blurb = "Number theory and algebra"
        }
      , fullstack = resume.IconHighlight::{
        , icon = "\\faCode"
        , title = "Full Stack SWE Intern"
        , blurb = "inBay Technologies (2016)"
        }
      }

let coursework
    : List resume.Education.Type
    = [ resume.Education::{
        , Institude = "Deep Learning AI"
        , Certificate = "Deep Learning Specialization"
      ,"Neural Networks and Deep Learning"
      , "Improving Deep Neural Networks: Hyperparameter Tuning"
      , "Regularization and Optimization"
      , "Structuring Machine Learning Projects"
      , "Convolutional Neural Networks"
      , "Sequence Models"
      ]

let education
    : List resume.Education.Type
    = [ resume.Education::{
        , school = "University of Waterloo"
        , degree = "Bachelor's degree"
        , major = "Systems Design Engineering"
        , gradDate = resume.ResumeDate::{
          , month = resume.Month.May
          , year = 2026
          }
        }
      ]

in  { info
    , workExperience
    , summary
    , projects
    , contribs
    , miscExperience
    , education
    , coursework
    , socials
    , chronological_jobs
    }
