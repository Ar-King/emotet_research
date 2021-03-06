rule EmotetPayloadCode{
    meta:
        author       = "d00rt - @D00RT_RM"

        version      = "1.0.0"
        maintainer   = "d00rt - @D00RT_RM"
        email        = "d00rt.fake@gmail.com"
        status       = "Testing"

    strings:
        $ip_pattern = {
            40 ?? ?? ?? ?? ?? 83 3C C5 ?? ?? ?? ?? 00 75 ?? ?? E8
        }

        $key = {
            89 ?? ?? ?? ?? ?? B? 01 00 00 00 C7 05 ?? ?? ??
            ?? ?? ?? ?? ?? C7 05 ?? ?? ?? ?? 6A 00 00 00 C3
        }

        $old_version_pattern = { 
            C7 05 ?? ?? ?? ?? 00 00 00 00 C7 05 ?? ?? ?? ??
            ?? ?? ?? ?? C7 05 ?? ?? ?? ?? ?? ?? ?? ?? E8 ??
            ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
            ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??              
        }

    condition:
        ($ip_pattern and $key) or $old_version_pattern
}



 
