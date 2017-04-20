import os
import sys

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

language = 'de'

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
  ('index', 'SignavioWorkflowadministratorsguide.tex', u'Signavio Workflow Accelerator Administratorenhandbuch',
   u'Signavio GmbH', 'manual'),
]

prepare(CWD, PROJECT_PATH, language)


def build_search_snippets(app, docname):
    clean_txts(PROJECT_PATH, language)


def setup(app):
    app.connect('build-finished', build_search_snippets)