import {message, danger} from "danger"
import { flutterAnalyze } from 'dangerjs-flutter-analyze-plugin'

const modifiedMD = danger.git.modified_files.join("- ")
message("Changed Files in this PR: \n - " + modifiedMD)

flutterAnalyze()