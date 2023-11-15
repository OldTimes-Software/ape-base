// SPDX-License-Identifier: LGPL-3.0-or-later
// Copyright © 2020-2023 OldTimes Software, Mark E Sowden <hogsy@oldtimes-software.com>
// Purpose: Fragment shader for single-channel textures

#include "shared.inc.glsl"

void main()
{
    pl_frag = vec4( vsShared.colour.r,
                    vsShared.colour.g,
                    vsShared.colour.b,
                    texture(diffuseMap, vsShared.uv).r );
}
