import {readFileSync, writeFileSync} from "fs"


const ESSENCE_SCAR_FUNCTIONS_API_FILE_PATH = "C:\\Program Files\\steam\\steamapps\\common\\Age of Empires IV\\scardocs\\api\\Essence_ScarFunctions.api"
const DUMB_COMMENT_REPLACEMENTS = new Map<string, string>([
    ["(value to be compared against)", ""],
    ["UI_CreateCustomEventCueFrom( sender player. Can be null. Used for retrieving player information. E.g. team color., event type id, visible duration of the event cue., enable repeat filtering if > 0. Make the event cue alive but not visible beyond its lifetime., when repeatTime > 0) how many times a event cue with the same customEventType can be repeated during repeatTime, when repeatTime > 0) filter out a event cue if it's within the range of a existing one with the same customEventType, ui data template of the event cue., event cue visibility flags. ECV_None: not visible ECV_Queue: visible in the queue ECV_Title: visible as title ECV_Queue | ECV_Title : both, event cue visibility flags., Control event cue visibility in action ECAV_Global ECAV_ExecuterIsOwnOrAlly ECAV_ExecuterIsEnemy ECAV_CanSeeExecutor ECAV_CanSeeTarget ECAV_CanEnemySeeExecutor ECAV_TargetIsOwn ECAV_TargetIsAlly ECAV_OwnsTargetAndExecuterIsEnemy ECAV_AlliedToTargetAndExecuterIsEnemy ECAV_ExecuterIsOwn ECAV_ExecuterIsAlly ECAV_CanSeeTargetAndExecutorIsOwnOrAlly ECAV_CanSeeTargetAndExecutorIsOwn ) RETURNS:  =>Create a event cue from a sender.", "UI_CreateCustomEventCueFrom( ) RETURNS =>Docs for this function are too cooked check file:///C:/program%20files/steam/steamapps/common/age%20of%20empires%20iv/scardocs/html/function_list.htm#UI_CreateCustomEventCueFrom"],
    ["1 based player slot index", "Integer oneBasedPlayerSlotIndex"],
    ["event type id", "GameEventID eventID"],
    ["a scar position. Won't accept a position extremely close (std::numeric_limits<float>::min(", "Position position"],
    ["UI_DestroyTagForPosition( same of or extremely close (std::numeric_limits<float>::min()) to an existing position. If there are multiple candidates, delete the closest. ) RETURNS:  =>Destroy a position tag", "UI_DestroyTagForPosition( Position position ) RETURNS:  =>Docs are cooked, check file:///C:/program%20files/steam/steamapps/common/age%20of%20empires%20iv/scardocs/html/function_list.htm#UI_DestroyTagForPosition"],
    ["UI_SetControlGroupSelectedCallback( in the format of function(controlGroupIndex) ) RETURNS:  =>Sets a callback firing when user select a control group either by hotkey or by control group button", "UI_SetControlGroupSelectedCallback( function callback ) RETURNS:  =>Sets a callback firing when user select a control group either by hotkey or by control group button in the format function(controlGroupIndex)"]
])

export class RawFunctionDeserialisationError extends Error {
    constructor(m: string) {
        super(m);
        Object.setPrototypeOf(this, RawFunctionDeserialisationError.prototype);
      }
}

export interface Argument {
    type_: string
    name: string
}

export interface ScarFunction {
    name: string
    arguments: Argument[]
    comment: string
}

function deserialiseRawFunction(raw: String): ScarFunction {
    var rawFunction = raw
    DUMB_COMMENT_REPLACEMENTS.forEach((value, key) => {
        if (rawFunction.includes(key)) {
            rawFunction = rawFunction.replace(key, value)
        }
    })

    const functionName = rawFunction.substring(0, rawFunction.indexOf("("))
    const args = rawFunction.substring(
        rawFunction.indexOf("(") + 1, 
        rawFunction.indexOf(")")
    ).trim().split(",").filter(rawArg => rawArg.length > 0).map(rawArg => {
        const split = rawArg.trim().replace(
            "vector< ", "vector<"
        ).replace(
            " list", "[]"
        ).replace(
            " / ", "|"
        ).replace(
            " = ", " "
        ).split(" ")

        if (split.length != 2) {
            throw new RawFunctionDeserialisationError(`Argument: "${rawArg}" has the wrong number of tokens`)
        }

        return {
            type_: split[0].replace("|", " | "),
            name: split[1]
        }
    })
    const comment = rawFunction.substring(rawFunction.indexOf("=>") + 2)

    const func = {name: functionName, arguments: args, comment: comment}
    return func
}

export function deserialiseRawFunctions(rawFunctions: String[]): ScarFunction[] {
    const deserialised = rawFunctions.map(deserialiseRawFunction)

    return deserialised
}

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

export function generateLuaCats(functions: ScarFunction[]): String[] {
    const luaCats = functions.map(func => {
        var luaCats = `---comment ${func.comment}\n`
        func.arguments.forEach(arg => {
            luaCats = luaCats.concat(`---@param ${arg.name} ${arg.type_}\n`)
        })
        const luaArgs = func.arguments.map(arg => arg.name).join(",")
        luaCats = luaCats.concat(
            `function ${func.name}(${luaArgs})\n`,
            "end\n"
        )
        
        return luaCats
    })

    return luaCats
}

export function writeLuaCats(luaCats: String[]) {
    writeFileSync("ScarFunctions.lua", luaCats.join("\n"), {flag: "w"})
}