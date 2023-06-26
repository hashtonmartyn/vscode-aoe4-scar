import {
    readEssenceScarFunctions, 
    filterInvalidFunctions, 
    deserialiseRawFunctions, 
    generateLuaCats,
    writeLuaCats
} from "./functions"

function main() {
    const rawEssenceFunctions = readEssenceScarFunctions()
    const validRawEssenceFunctions = filterInvalidFunctions(rawEssenceFunctions)
    const scarFunctions = deserialiseRawFunctions(validRawEssenceFunctions)
    const luaCats = generateLuaCats(scarFunctions)
    writeLuaCats(luaCats)
}

main()
