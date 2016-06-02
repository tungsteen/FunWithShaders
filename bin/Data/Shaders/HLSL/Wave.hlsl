#include "Uniforms.hlsl"
#include "Samplers.hlsl"
#include "Transform.hlsl"

void VS(float4 iPos : POSITION,
		float2 iTexCoord : TEXCOORD0, 
	out float2 oTexCoord : TEXCOORD0,
	out float  oTime : TEXCOORD1,
	out float  oColor : TEXCOORD2,
	out float4 oPos : OUTPOSITION)
{
    float4x3 modelMatrix = iModelMatrix;
	float3 worldPos = GetWorldPos(modelMatrix);	

	oTexCoord = GetTexCoord(iTexCoord);
	oTime = cElapsedTime;

	worldPos.z += worldPos.z + 0.1 * sin((iPos.x + oTime) * 5.0);
	
	oPos = GetClipPos(worldPos);
}

void PS(
		float2 iTexCoord : TEXCOORD0,
		float  iTime : TEXCOORD1,
		float  iColor : TEXCOORD2,
    out float4 oColor : OUTCOLOR0)
{
    oColor = float4(0.0, 0.2, 0.3, 0.1);
}
