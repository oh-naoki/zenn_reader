import {message, danger} from "danger"

const modifiedMD = danger.git.modified_files.join("- ")
message("Changed Files in this PR: \n - " + modifiedMD)

enum Severity {
    INFO = "info",
    WARNING = "warning",
    IGNORE = "ignor",
    ERROR = "error",
}

class AnalyzeResult {
    severity: Severity
    description: String
    fileName: String
    line: number
    constructor(
        severity: Severity,
        description: String,
        fileName: String,
        line: number,
    ) {
        this.severity = severity
        this.description = description
        this.fileName = fileName
        this.line = line
    }
}

function checkSeverity(value: string): boolean {
    for (let key in Severity) {
        if (value.startsWith(Severity[key as keyof typeof Severity])) {
            return true;
        }
    }
    return false;
}

const report_txt = fs.readFileSync('./flutter_analyze_report.txt', 'utf-8').split('\n').map(line_txt => line_txt.trim());

const reports = report_txt.filter(line => checkSeverity(line)).map(report => {
    const splitReport = report.split(" • ");
    return new AnalyzeResult(
        Severity.INFO,
        splitReport[1] as string,
        splitReport[2].split(":")[0] as string,
        splitReport[2].split(":")[1] as unknown as number,
    )
});
console.log(reports);

reports.forEach(value => {
    switch (value.severity) {
        case Severity.INFO:
            message(value.description, value.fileName, value.line);
            break;
        case Severity.ERROR:
        case Severity.WARNING:
            warn(value.description, value.fileName, value.line);
    }
});