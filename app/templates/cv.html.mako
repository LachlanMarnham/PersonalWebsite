<%inherit file="content_base.html.mako" />

<%
    from flask import current_app
    cv_short_path = current_app.config['FILES_FOLDER'] + '/Lachlan_Marnham_CV.pdf'
    cv_long_path = current_app.config['FILES_FOLDER'] + '/Lachlan_Marnham_CV_(long).pdf'
%>

For a downloadable version, click <a href="${cv_long_path}" download>here</a>.
<br />
For a version that conforms to the two-page industry standard, click <a href="${cv_short_path}" download>here</a>.
<br />

<div class="accordion" style="z-index: -999" id="accordion-parent">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          <h4>At a Glance</h4>
        </button>
      </h5>
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion-parent">
      <div class="card-body">
        I am a backend software engineer with a focus on the design and implementation of services in the cloud. My
        background is in theoretical physics and the video-conferencing industry. I aspire to be the kind of specialist
        who is capable of proficiently building technologies outside of my speciality.
        <ul>
            <li>
                <strong>Primary Language: </strong>Python
            </li>

            <li>
                <strong>Other Languages: </strong>SQL, Go, JavaScript, HTML, CSS
            </li>

            <li>
                <strong>Process: </strong>Linux, git, unit testing, system testing, continuous integration, code review
            </li>

            <li>
                <strong>Communication: </strong> Journal publication, LaTeX, magazine writing, university teaching,
                conference presentation
            </li>

            <li>
                <strong>Spoken Language: </strong>English (native proficiency)
            </li>

            <li>
                <strong>Citizenship: </strong>Irish and Australian (dual citizenship)
            </li>
        </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          <h4>Experience</h4>
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion-parent">
      <div class="card-body">
        <table style="width: 100%">
              <tr>
                  <td>
                      <strong>StarLeaf</strong><br />
                      <i>Software Engineer</i>
                  </td>
                  <td style="text-align: right;">
                      <strong>London, UK</strong><br />
                      <i>April 2017-present</i>
                  </td>
              </tr>
          </table>
          <ul>
              <li>
                  <strong>Backend Engineering of a Cloud Videoconferencing Platform</strong>
              </li>

              <li>
                  <strong>Skills Developed: </strong>Python, SQL, JavaScript, HTML, CSS, RESTful API design, distributed
                  systems engineering, service architecture design, unit and system testing, development of a
                  multi–versioned cloud infrastructure, continuous integration, software planning and specification,
                  test plan writing and working with large and complex code bases.
              </li>

              <li>
                  <strong>Achievements: </strong>
                  <ul>
                      <li>
                          Designed and built a bespoke infrastructure system–testing platform. This involved the remote
                          control of virtual StarLeaf video conferencing and instant messaging clients to probe a cloud
                          with dozens of constituent server species.
                      </li>

                      <li>
                          Implemented a distributed, co–located database and database–control infrastructure for the
                          storage and pipelining of customer product–usage data. This system was written in such a way
                          so as to allow for customer data to be stored in a jurisdiction of their choice, while enabling
                          the data to be accessed transiently by credentialed team members. I also worked on a suit of
                          internal tools for the categorization and display of this information.
                      </li>

                      <li>
                          Developed a platform which serves dashboards to customers, allowing them to view product–usage
                          statistics in real time.
                      </li>
                  </ul>
              </li>
          </ul>

          <table style="width: 100%">
              <tr>
                  <td>
                      <strong>University of Exeter</strong><br />
                      <i>Doctoral Researcher</i>
                  </td>
                  <td style="text-align: right;">
                      <strong>Exeter, UK</strong><br />
                      <i>April 2012-December 2016</i>
                  </td>
              </tr>
          </table>

          <ul>
              <li>
                  <strong>Low-dimensional Condensed Matter Field Theory and Applications</strong>
              </li>

              <li>
                  <strong>Skills Developed: </strong>Python, Mathematica, computational mathematics, pair programming,
                  code review, version control, complex analysis, field theory, graph theory, group theory, multivariate
                  calculus, linear algebra, topology and academic communication (conference speaking, publication in
                  journals, teaching, writing textbook reviews and so on).
              </li>

              <li>
                  <strong>Achievements: </strong>
                  <ul>
                      <li>
                          Developed a mathematical and conceptual framework for the formation of particles composed of
                          electron pairs in certain low–dimensional systems.
                      </li>

                      <li>
                          Published in peer–reviewed journals.
                      </li>

                      <li>
                          Taught a variety of problems classes and tutorials in physics and mathematics.
                      </li>

                      <li>
                          Won two research prizes, and was twice nominated for a graduate teaching prize.
                      </li>
                  </ul>
              </li>
          </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          <h4>Education and Research</h4>
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion-parent">
      <div class="card-body">
        <h4>Academic Qualifications . . .</h4>
        <br />
          <table style="width: 100%">
              <tr>
                  <td>
                      <strong>University of Exeter</strong><br />
                      <i>PhD Theoretical Physics</i><br />
                      Graduated December 2016
                  </td>
                  <td style="text-align: right;">
                      <strong>Exeter, UK</strong><br />
                      <i>2012-2016</i>
                  </td>
              </tr>
          </table>

          <br />

          <table style="width: 100%">
              <tr>
                  <td>
                      <strong>University of Wollongong</strong><br />
                      <i>Honours Year (Masters), Physics, 1st Class Honours, Distinction</i><br />
                      Dissertation grade: 96% – Overall Masters Grade: 93%
                  </td>
                  <td style="text-align: right;">
                      <strong>Wollongong, Australia</strong><br />
                      <i>2011–2012</i>
                  </td>
              </tr>
          </table>

          <br />

          <table style="width: 100%">
              <tr>
                  <td>
                      <strong>University of Wollongong</strong><br />
                      <i>BSc Advanced (Physics), 1st Class Honours, Distinction</i><br />
                      Degree Average: 87%
                  </td>
                  <td style="text-align: right;">
                      <strong>Wollongong, Australia</strong><br />
                      <i>2008-2012</i>
                  </td>
              </tr>
          </table>

          <br />

          <table style="width: 100%">
              <tr>
                  <td>
                      <strong>Holy Spirit College Bellambi</strong><br />
                      <i>Higher School Certificate</i><br />
                      University Admission Index: 92
                  </td>
                  <td style="text-align: right;">
                      <strong>Wollongong, Australia</strong><br />
                      <i>2004-2007</i>
                  </td>
              </tr>
          </table>
         <br />

        <h4>Major Research Projects . . .</h4>
          <ul>
              <li>
                  <strong>Doctoral Project: </strong><i>‘Bi-electron bound states in single- and double-layer graphene
                  nanostructures’</i>
                  <ul>
                      <li>
                          Computational work performed mostly in Python (some Mathematica) with NumPy and SciPy, with
                          all coding and algorithm design developed from scratch.
                      </li>

                      <li>
                          Development and application of novel low-dimensional quantum condensed-matter field theories
                          to the study of mesoscopic systems.
                      </li>

                      <li>
                          Lead to the proposal of a new kind of (quasi)particle in graphene.
                      </li>
                  </ul>
              </li>

              <li>
                  <strong>Masters Project: </strong><i>‘Energy relaxation rate of an external electron due to plasma
                  oscillations in a 2DEG with Rashba spin–orbital coupling’</i>, Dissertation grade: 96% – Overall
                  Masters Grade: 93%
                  <ul>
                      <li>
                          All code developed from scratch in C++
                      </li>

                      <li>
                          This work studied electron transport normal to semiconductor heterojunctions with Rashba
                          spin-orbit coupling
                      </li>

                      <li>
                          Applications in the area of energy loss in spintronic nanostructures
                      </li>
                  </ul>
              </li>

          </ul>
        <h4>List of Publications . . .</h4>
        <ul>
            <li>
                <strong>Metastable electron–electron states in double–layer graphene structures</strong>
                <a href="https://arxiv.org/abs/1410.0864" target="_blank">arXiv:1410.0864v2 [cond-mat.mes-hall]</a>
            </li>

            <li>
                <strong>Bielectrons in the Dirac sea in graphene: the role of many–body effects</strong>
                <a href="http://arxiv.org/abs/1512.02953" target="_blank">arXiv:1512.02953 [cond-mat.mes-hall]</a>
            </li>
        </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingFour">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          <h4>Open Source</h4>
        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion-parent">
      <div class="card-body">
        <h4>Major Contributions or Sole Contributor . . .</h4>
          <ul>
              <li>
                  <strong>Anarχiv:</strong> The initial phase of this project, which I am working on with two co–founders,
                  is an interactive feedback platform which sits on top of the Arχiv pre-print repository. Our long–term
                  goal is to build it out into an open source, free-to-publish and free-to-read academic journal.
              </li>

              <li>
                  <strong>Partita:</strong> Musical instrument practice assistant, incorporating progress tracking and
                  spaced repetition, metronome and tuner. Currently for desktop, but will eventually ship as a web app.
              </li>

              <li>
                  <strong>Lethe:</strong> A stateless, deterministic password manager. Generates strong passwords at run
                  time, and doesn’t store them anywhere, but generates the same passwords with every use.
              </li>
          </ul>
        <h4>Just Helping Out . . .</h4>
          <ul>
              <li>
                  <strong>Sucuri:</strong> A HTML templating engine.
              </li>

              <li>
                  <strong>tldr:</strong> Simplified <code>man</code> pages which only list the few use cases the user is most likely
                  to need.
              </li>
          </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingFive">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
          <h4>Teaching</h4>
        </button>
      </h5>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion-parent">
      <div class="card-body">
        <ul>
            <li>
                Tutor (unsupervised; lecture-style teaching):
                <ul>
                    <li>
                        Thermal Physics, University of Exeter, 2014 – 2016
                    </li>

                    <li>
                        Quantum Mechanics, University of Exeter, 2014 – 2016
                    </li>

                    <li>
                        Electromagnetism, University of Exeter, 2014 – 2016
                    </li>

                    <li>
                        Condensed Matter Physics, University of Exeter, 2014 – 2015
                    </li>
                </ul>
            </li>

            <li>
                Demonstrator (problems classes):
                <ul>
                    <li>
                        2nd Year Mathematics Problems, University of Exeter, 2013 – 2017
                    </li>

                    <li>
                        1st Year Mathematics Problems, University of Exeter, 2016 – 2017
                    </li>

                    <li>
                        2nd Year Physics Problems, University of Exeter, 2014 – 2016
                    </li>
                </ul>
            </li>

            <li>
                Demonstrator (laboratory classes):
                <ul>
                    <li>
                        1st Year Physics Labs, University of Wollongong, 2010 – 2012
                    </li>

                    <li>
                        2nd Year Physics Labs, University of Wollongong, 2011 – 2012
                    </li>

                    <li>
                        3rd Year Physics Labs, University of Wollongong, 2011 – 2012
                    </li>
                </ul>
            </li>

            <li>
                I have offered private tuition for the following modules:
                <ul>
                    <li>
                        Fundamentals of Physics A
                    </li>

                    <li>
                        Fundamentals of Physics B
                    </li>

                    <li>
                        Mathematics 1A part 1
                    </li>

                    <li>
                        Mathematics 1A part 2
                    </li>

                    <li>
                        Classical Mechanics
                    </li>

                    <li>
                        Thermodynamics
                    </li>

                    <li>
                        Modern Physics
                    </li>

                    <li>
                        Multivariate and Vector Calculus
                    </li>

                    <li>
                        Linear Algebra
                    </li>
                </ul>
            </li>

        </ul>
      </div>
    </div>
  </div>


    <div class="card">
    <div class="card-header" id="headingSix">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
          <h4>Invited Talks</h4>
        </button>
      </h5>
    </div>
    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion-parent">
      <div class="card-body">
        <ul>
            <li>
                <strong>Invited Talk, University of Bath</strong> (2016) <i>“Like charges attract: an anomalous
                electron-electron pairing effect in graphene”</i>
            </li>

            <li>
                <strong>Quantum Systems and Nanomaterials Seminar, University of Exeter</strong> (2015) <i>“Bielectrons
                in graphene”</i>
            </li>

            <li>
                <strong>INASCON, Basel Switzerland</strong> (2015) <i>“Like charges attract: an anomalous
                electron–electron pairing effect in graphene”</i>
            </li>

            <li>
                <strong>Quantum Systems and Nanomaterials Seminar, University of Exeter</strong> (2014) <i>“Anomalous
                Electron Pairing in Graphene”</i>
            </li>

            <li>
                <strong>GrapheneWeek (8th International Conference on the Fundamental Science of Graphene and
                Applications of Graphene-Based Devices), Gothenburg Sweden</strong> (2014) <i>“Anomalous electron
                pairing in graphene: Cooper–like states and their trajectories”</i>
            </li>

            <li>
                <strong>Quantum Systems and Nanomaterials Seminar, University of Exeter</strong> (2013) <i>“Anomalous
                electron–electron pairs in graphene”</i>
            </li>

            <li>
                <strong>GrapheneWeek (7th International Conference on the Fundamental Science of Graphene and
                Applications of Graphene-Based Devices), Chemnitz Germany</strong> (2013) <i>“Excitons in graphene:
                the two–body problem revisited”</i>
            </li>
        </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingSeven">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
          <h4>Honours and Awards</h4>
        </button>
      </h5>
    </div>
    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion-parent">
      <div class="card-body">
        <ul>
            <li>
                <strong>Exeter Students’ Guild Teaching Awards</strong> (twice nominated) <i>“Category: Best Graduate Teaching
                Assistant”</i>
            </li>

            <li>
                <strong>University of Exeter Early Careers Network Poster Prize</strong> (2015) <i>“1<sup>st</sup>
                place”</i>
            </li>

            <li>
                <strong>Europhysics Letters Prize</strong> (2013) <i>“In recognition of the best presentation at
                GrapheneWeek 2013”</i>
            </li>

            <li>
                <strong>College Research Studentship</strong> (2012-2016) annual stipend, plus fees
            </li>

            <li>
                <strong>Physics Engineering Discipline Prize</strong> (2010, 2011 and 2012) <i>“For best performance in
                physics”</i>
            </li>

            <li>
                <strong>University of Wollongong Dean’s Merit List</strong> (2010, 2011 and 2012)
            </li>

            <li>
                <strong>Kittel–Lewis Prize for Solid State Physics</strong> (2011) <i>“For best performance in Solid
                State Physics”</i>
            </li>
        </ul>
      </div>
    </div>
  </div>


  <div class="card">
    <div class="card-header" id="headingEight">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
          <h4>Miscellaneous</h4>
        </button>
      </h5>
    </div>
    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion-parent">
      <div class="card-body">
        <ul>
            <li>
                <strong>Cosmos Science Magazine (Editorial Intern):</strong> In 2006, at age 16, I completed an editorial
                internship at Cosmos, an Australian popular science magazine. After some time there I began writing
                articles instead, three of which were published. These were:
                <ul>
                    <li>
                        <i>“Coming up trumps; chemistry’s most useful invention started with a game of cards”</i>
                    </li>
                    <li>
                        <i>“A bundle of energy”</i>
                    </li>
                    <li>
                        <i>“A fish called Jaws”</i>
                    </li>
                </ul>
            </li>

            <li>
                <strong>Contemporary Physics (Textbook Reviewer):</strong> In this role I reviewed several textbooks for
                the journal Contemporary Physics. These titles are:
                <ul>
                    <li>
                        <i>“Quantum Information Theory and the Foundations of Quantum Mechanics”</i>, C.G. Timpson (2004).
                    </li>
                    <li>
                        <i>“Conductor-Insulator Quantum Phase Transitions”</i>, by V. Dobrosavljevic, N. Trivedi and J.M. Valles (2012).
                    </li>
                    <li>
                        <i>“Quantum Hall Effects”</i>, Z.F. Ezawa (2013).
                    </li>
                </ul>
            </li>

            <li>
                <strong>Undergraduate Student Representative:</strong> During my time at the University of Wollongong, I
                was elected to the position of undergraduate student representative on the School of Physics Board. In
                this role I liaised with students and staff, bringing the concerns of my peers to the attention of their
                lecturers and vice versa. In particular, I petitioned the board to allocate funds for the introduction to
                the curriculum of a general relativity course, which was taught for the first time in 2012.
            </li>

            <li>
                <strong>University of Wollongong Physics Society (Co–Founder):</strong> I was a co–founder of the
                University of Wollongong Physics Society, which became instantly popular among the small but nevertheless
                passionate and talented student body in the School of Physics. Among our regular activities were invited
                technical talks by lecturers and postgraduates from the department, regular lunchtime screenings of
                documentaries, end of term festivities, a popular liquid nitrogen ice–cream stall on campus and a <em>very</em>
                successful trivia team.
            </li>

            <li>
                <strong>Physics Society Lunchtime Tutorials (Organiser):</strong> During my time at the University of
                Wollongong, the undergraduate curriculum was heavily lecture-based, with no seminars, problems classes
                or tutorials. Through the physics society, I helped to organise and teach informal bi-weekly tutorials.
                Students who were struggling with work could come and ask us whichever questions they needed help with,
                and receive assistance for free.
            </li>
        </ul>
        <h4>Online Profiles . . .</h4>
          <ul>
              <li>
                  <a href="https://github.com/LachlanMarnham" target="_blank">GitHub</a>
              </li>

              <li>
                  <a href="http://linkedin.com/in/lachlan-marnham-a463b190" target="_blank">LinkedIn</a>
              </li>

              <li>
                  <a href="https://twitter.com/LachlanMarnham" target="_blank">Twitter</a>
              </li>

              <li>
                  <a href="https://www.researchgate.net/profile/Lachlan_Marnham" target="_blank">ResearchGate</a>
              </li>

              <li>
                  <a href="https://scholar.google.co.uk/citations?user=5Vi60LYAAAAJ&hl=en" target="_blank">Google Scholar</a>
              </li>

              <li>
                  <a href="http://arxiv.org/a/marnham_l_1.html" target="_blank">Arχiv</a>
              </li>
          </ul>
        <h4>Other Interests . . .</h4>
          <ul>
              <li>
                  Classical guitar, recording and performance
              </li>

              <li>
                  Hiking
              </li>

              <li>
                  Reading
              </li>

              <li>
                  Tech meet-ups
              </li>
          </ul>
      </div>
    </div>
  </div>

</div>

<script>
    $('.collapse').collapse()
</script>