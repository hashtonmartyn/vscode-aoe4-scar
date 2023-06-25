import {readFileSync} from "fs"


const ESSENCE_SCAR_FUNCTIONS_API_FILE_PATH = "C:\\Program Files\\steam\\steamapps\\common\\Age of Empires IV\\scardocs\\api\\Essence_ScarFunctions.api"

export function readEssenceScarFunctions(): String[] {
    const contents = readFileSync(ESSENCE_SCAR_FUNCTIONS_API_FILE_PATH, "utf-8")
    return contents.split(/\r?\n/)
}

export function filterInvalidFunctions(rawFunctions: String[]): String[] {
    const filtered = rawFunctions.filter(func => {
        const trimmed = func.trim()
        return trimmed.length > 0 && !trimmed.startsWith("#")
    })
    return filtered
}
