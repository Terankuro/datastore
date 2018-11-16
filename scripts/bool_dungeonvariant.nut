function define(script)
{
    script.Name = "bool_dungeonVariant";
    script.Type = "EventCondition";
    return 0;
}

// Check a dungeon's variant type.
// params[0] = A dungeon variant type. Acceptable values are in server_zone.xml
function check(source, cState, dState, zone, value1, value2, params)
{
    local cInstance = zone.GetZoneInstance();
    if(cInstance != null)
    {
        local cVariant = cInstance.GetVariant();
        if(cVariant != null)
        {
            switch(cVariant.InstanceType)
            {
                case ServerZoneInstanceVariant_InstanceType_t.NORMAL:
                    return params[0] == "NORMAL" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.TIME_TRIAL:
                    return params[0] == "TIME_TRIAL" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.PVP:
                    return params[0] == "PVP" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.DEMON_ONLY:
                    return params[0] == "DEMON_ONLY" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.DIASPORA:
                    return params[0] == "DIASPORA" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.MISSION:
                    return params[0] == "MISSION" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.PENTALPHA:
                    return params[0] == "PENTALPHA" ? 0 : -1;
                case ServerZoneInstanceVariant_InstanceType_t.DIGITALIZE:
                    return params[0] == "DIGITALIZE" ? 0 : -1;
            }
        }
    }
    return -1;
}