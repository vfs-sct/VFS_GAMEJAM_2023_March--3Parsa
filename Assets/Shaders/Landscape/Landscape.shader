// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "VFS/Landscape"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HideInInspector]_Control("Control", 2D) = "white" {}
		[HideInInspector]_Splat0_ST("Splat0_ST", Vector) = (0,0,0,0)
		[HideInInspector]_Splat0("Splat0", 2D) = "white" {}
		[HideInInspector]_Splat1("Splat1", 2D) = "white" {}
		[HideInInspector]_Splat2_ST("Splat2_ST", Vector) = (0,0,0,0)
		[HideInInspector]_Splat3("Splat3", 2D) = "white" {}
		[HideInInspector]_Splat1_ST("Splat1_ST", Vector) = (0,0,0,0)
		[HideInInspector]_Splat3_ST("Splat3_ST", Vector) = (0,0,0,0)
		[HideInInspector]_Splat2("Splat2", 2D) = "white" {}
		[HideInInspector][Normal]_Normal0("Normal0", 2D) = "bump" {}
		[HideInInspector][Normal]_Normal1("Normal1", 2D) = "bump" {}
		[HideInInspector][Normal]_Normal2("Normal2", 2D) = "bump" {}
		[HideInInspector][Normal]_Normal3("Normal3", 2D) = "bump" {}
		[HideInInspector][Gamma]_Mask0("Mask0", 2D) = "white" {}
		[HideInInspector][Gamma]_Mask1("Mask1", 2D) = "white" {}
		[HideInInspector][Gamma]_Mask2("Mask2", 2D) = "white" {}
		[HideInInspector][Gamma]_Mask3("Mask3", 2D) = "white" {}
		[HideInInspector]_TerrainHolesTexture("TerrainHolesTexture", 2D) = "white" {}
		[ASEBegin][Enum(Debug,0)]_H_Debug("", Float) = 0
		[Toggle(_PREVIEWSPLATMAP_ON)] _PreviewSplatmap("Preview Splatmap", Float) = 0
		[Enum(Base Color BC1,0,Normal BC5,1,Height Rough AO Metal BC7,2)]_TextureImportSettings("Texture Import Settings", Int) = 0
		[Enum(Macro Variation,0)]_H_Macro("", Float) = 0
		[Toggle(_MACROVARIATIONENABLED_ON)] _MacroVariationEnabled("Macro Variation Enabled", Float) = 1
		[SingleLineTexture]_MacroTexture("Macro Texture", 2D) = "white" {}
		_MacroTiling("Macro Tiling", Float) = 4
		_Contrast("Contrast", Range( 0 , 1)) = 0.5
		[Enum(Detile,0)]_H_Detile("", Float) = 0
		[Toggle(_DETILEENABLED_ON)] _DetileEnabled("Detile Enabled", Float) = 0
		[SingleLineTexture]_DetileNoise("Detile Noise", 2D) = "white" {}
		_DetileOffset("Detile Offset", Float) = 0.5
		_DetileRegionCount("Detile Region Count", Float) = 32
		_DetileBlend("Detile Blend", Range( 0 , 0.5)) = 0.01
		[Enum(Height Blend,0)]_H_HeightBlend("", Float) = 0
		[Toggle(_HEIGHTBLENDENABLED_ON)] _HeightBlendEnabled("Height Blend Enabled", Float) = 1
		_HeightBlendFalloff("Height Blend Falloff", Float) = 4
		_HeightBlendMultiplier("Height Blend Multiplier", Float) = 8
		[Enum(Tessellation,0)]_H_Tessellation("", Float) = 0
		_MaxTessellation("Max Tessellation", Range( 1 , 32)) = 16
		_TessellationMinDistance("Tessellation Min Distance", Float) = 20
		_TessellationMaxDistance("Tessellation Max Distance", Float) = 50
		[Enum(Displacement,0)]_H_Displacement("", Float) = 0
		[Toggle(_DISPLACEMENTENABLED_ON)] _DisplacementEnabled("Displacement Enabled", Float) = 0
		_LayerDisplacement("Layer Displacement", Vector) = (0.1,0.15,0.25,0.4)
		[Enum(Distance Blend,0)]_H_Distance_Blend("", Float) = 0
		[Toggle(_DISTANCEBLENDENABLED_ON)] _DistanceBlendEnabled("Distance Blend Enabled", Float) = 1
		_BlendDistance("Blend Distance", Float) = 100
		_DistanceBlendFalloff("Distance Blend Falloff", Float) = 2
		[ASEEnd]_DistanceTiling("Distance Tiling", Float) = 0.1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

		[HideInInspector]_QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector]_QueueControl("_QueueControl", Float) = -1
        [HideInInspector][NoScaleOffset]unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset]unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		
		
		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "TerrainCompatible"="True" }
		Cull Back
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off
		
		HLSLINCLUDE
		#pragma target 3.0

		#pragma prefer_hlslcc gles
		

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS

		ENDHLSL

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }
			
			Blend One Zero, One Zero
			ColorMask RGBA
			

			HLSLPROGRAM

			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma multi_compile _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS _ADDITIONAL_OFF
			#pragma multi_compile _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK

			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#pragma multi_compile _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			
			#pragma multi_compile _ _LIGHT_COOKIES
			#pragma multi_compile _ _CLUSTERED_RENDERING

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma shader_feature_local _MACROVARIATIONENABLED_ON
			#pragma shader_feature_local _PREVIEWSPLATMAP_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_Splat0);
			TEXTURE2D(_Splat1);
			TEXTURE2D(_Splat2);
			TEXTURE2D(_Splat3);
			TEXTURE2D(_MacroTexture);
			TEXTURE2D(_Sampler1942423);
			TEXTURE2D(_Normal0);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord8 = v.vertex;
				o.ase_texcoord9.xy = v.texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord9.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				#if defined(LIGHTMAP_ON)
				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
				o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag ( VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif
	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27132 = temp_output_411_0_g27124;
				float3 objToWorld238_g27132 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27132 = (objToWorld238_g27132).xz;
				float2 temp_output_10_0_g27138 = ( temp_output_1_0_g27132 * temp_output_135_0_g27132 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27132 = temp_output_393_0_g27124;
				float temp_output_22_0_g27138 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27138 * break209_g27132.z ) ).r * break209_g27132.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27138 = break209_g27132.x;
				float2 temp_output_47_0_g27138 = ddx( temp_output_10_0_g27138 );
				float2 temp_output_45_0_g27138 = ddy( temp_output_10_0_g27138 );
				float4 cola53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( sin( ( floor( ( temp_output_22_0_g27138 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27138 ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float4 colb53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( temp_output_12_0_g27138 * sin( ( _Vector1 * floor( temp_output_22_0_g27138 ) ) ) ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float temp_output_32_0_g27138 = frac( temp_output_22_0_g27138 );
				float f53_g27138 = ( min( temp_output_32_0_g27138 , ( 1.0 - temp_output_32_0_g27138 ) ) * 2.0 );
				float4 localBlend53_g27138 = Blend( cola53_g27138 , colb53_g27138 , f53_g27138 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27138 = localBlend53_g27138;
				#else
				float4 staticSwitch55_g27138 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27138 );
				#endif
				float4 temp_output_308_0_g27132 = staticSwitch55_g27138;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27132 = ( temp_output_1_0_g27132 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27134 = ( temp_output_176_0_g27132 * temp_output_135_0_g27132 );
				float temp_output_22_0_g27134 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27134 * break209_g27132.z ) ).r * break209_g27132.y );
				float temp_output_12_0_g27134 = break209_g27132.x;
				float2 temp_output_47_0_g27134 = ddx( temp_output_10_0_g27134 );
				float2 temp_output_45_0_g27134 = ddy( temp_output_10_0_g27134 );
				float4 cola53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( sin( ( floor( ( temp_output_22_0_g27134 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27134 ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float4 colb53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( temp_output_12_0_g27134 * sin( ( _Vector1 * floor( temp_output_22_0_g27134 ) ) ) ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float temp_output_32_0_g27134 = frac( temp_output_22_0_g27134 );
				float f53_g27134 = ( min( temp_output_32_0_g27134 , ( 1.0 - temp_output_32_0_g27134 ) ) * 2.0 );
				float4 localBlend53_g27134 = Blend( cola53_g27134 , colb53_g27134 , f53_g27134 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27134 = localBlend53_g27134;
				#else
				float4 staticSwitch55_g27134 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27134 );
				#endif
				float DistanceBlend478 = saturate( pow( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27132 = temp_output_81_0_g27124;
				float4 lerpResult178_g27132 = lerp( temp_output_308_0_g27132 , staticSwitch55_g27134 , temp_output_141_0_g27132);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27132 = lerpResult178_g27132;
				#else
				float4 staticSwitch259_g27132 = temp_output_308_0_g27132;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1325 = float4( float3(1,0,0) , 0.0 );
				#else
				float4 staticSwitch1325 = staticSwitch259_g27132;
				#endif
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27110 = temp_output_411_0_g27102;
				float3 objToWorld238_g27110 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27110 = (objToWorld238_g27110).xz;
				float2 temp_output_10_0_g27116 = ( temp_output_1_0_g27110 * temp_output_135_0_g27110 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27110 = temp_output_393_0_g27102;
				float temp_output_22_0_g27116 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27116 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27116 = break209_g27110.x;
				float2 temp_output_47_0_g27116 = ddx( temp_output_10_0_g27116 );
				float2 temp_output_45_0_g27116 = ddy( temp_output_10_0_g27116 );
				float4 cola53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( sin( ( floor( ( temp_output_22_0_g27116 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27116 ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float4 colb53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( temp_output_12_0_g27116 * sin( ( _Vector1 * floor( temp_output_22_0_g27116 ) ) ) ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float temp_output_32_0_g27116 = frac( temp_output_22_0_g27116 );
				float f53_g27116 = ( min( temp_output_32_0_g27116 , ( 1.0 - temp_output_32_0_g27116 ) ) * 2.0 );
				float4 localBlend53_g27116 = Blend( cola53_g27116 , colb53_g27116 , f53_g27116 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27116 = localBlend53_g27116;
				#else
				float4 staticSwitch55_g27116 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27116 );
				#endif
				float4 temp_output_308_0_g27110 = staticSwitch55_g27116;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27110 = ( temp_output_1_0_g27110 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27112 = ( temp_output_176_0_g27110 * temp_output_135_0_g27110 );
				float temp_output_22_0_g27112 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27112 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27112 = break209_g27110.x;
				float2 temp_output_47_0_g27112 = ddx( temp_output_10_0_g27112 );
				float2 temp_output_45_0_g27112 = ddy( temp_output_10_0_g27112 );
				float4 cola53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( sin( ( floor( ( temp_output_22_0_g27112 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27112 ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float4 colb53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( temp_output_12_0_g27112 * sin( ( _Vector1 * floor( temp_output_22_0_g27112 ) ) ) ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float temp_output_32_0_g27112 = frac( temp_output_22_0_g27112 );
				float f53_g27112 = ( min( temp_output_32_0_g27112 , ( 1.0 - temp_output_32_0_g27112 ) ) * 2.0 );
				float4 localBlend53_g27112 = Blend( cola53_g27112 , colb53_g27112 , f53_g27112 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27112 = localBlend53_g27112;
				#else
				float4 staticSwitch55_g27112 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27112 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27110 = temp_output_81_0_g27102;
				float4 lerpResult178_g27110 = lerp( temp_output_308_0_g27110 , staticSwitch55_g27112 , temp_output_141_0_g27110);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27110 = lerpResult178_g27110;
				#else
				float4 staticSwitch259_g27110 = temp_output_308_0_g27110;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1328 = float4( float3(0,1,0) , 0.0 );
				#else
				float4 staticSwitch1328 = staticSwitch259_g27110;
				#endif
				float2 uv_Control = IN.ase_texcoord9.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float2 temp_output_47_0_g27109 = ddx( temp_output_10_0_g27109 );
				float2 temp_output_45_0_g27109 = ddy( temp_output_10_0_g27109 );
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float2 temp_output_47_0_g27105 = ddx( temp_output_10_0_g27105 );
				float2 temp_output_45_0_g27105 = ddy( temp_output_10_0_g27105 );
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105 );
				#endif
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult16_g27190 = lerp( staticSwitch1325 , staticSwitch1328 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27154 = temp_output_411_0_g27146;
				float3 objToWorld238_g27154 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27154 = (objToWorld238_g27154).xz;
				float2 temp_output_10_0_g27160 = ( temp_output_1_0_g27154 * temp_output_135_0_g27154 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27154 = temp_output_393_0_g27146;
				float temp_output_22_0_g27160 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27160 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27160 = break209_g27154.x;
				float2 temp_output_47_0_g27160 = ddx( temp_output_10_0_g27160 );
				float2 temp_output_45_0_g27160 = ddy( temp_output_10_0_g27160 );
				float4 cola53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( sin( ( floor( ( temp_output_22_0_g27160 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27160 ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float4 colb53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( temp_output_12_0_g27160 * sin( ( _Vector1 * floor( temp_output_22_0_g27160 ) ) ) ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float temp_output_32_0_g27160 = frac( temp_output_22_0_g27160 );
				float f53_g27160 = ( min( temp_output_32_0_g27160 , ( 1.0 - temp_output_32_0_g27160 ) ) * 2.0 );
				float4 localBlend53_g27160 = Blend( cola53_g27160 , colb53_g27160 , f53_g27160 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27160 = localBlend53_g27160;
				#else
				float4 staticSwitch55_g27160 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27160 );
				#endif
				float4 temp_output_308_0_g27154 = staticSwitch55_g27160;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27154 = ( temp_output_1_0_g27154 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27156 = ( temp_output_176_0_g27154 * temp_output_135_0_g27154 );
				float temp_output_22_0_g27156 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27156 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27156 = break209_g27154.x;
				float2 temp_output_47_0_g27156 = ddx( temp_output_10_0_g27156 );
				float2 temp_output_45_0_g27156 = ddy( temp_output_10_0_g27156 );
				float4 cola53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( sin( ( floor( ( temp_output_22_0_g27156 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27156 ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float4 colb53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( temp_output_12_0_g27156 * sin( ( _Vector1 * floor( temp_output_22_0_g27156 ) ) ) ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float temp_output_32_0_g27156 = frac( temp_output_22_0_g27156 );
				float f53_g27156 = ( min( temp_output_32_0_g27156 , ( 1.0 - temp_output_32_0_g27156 ) ) * 2.0 );
				float4 localBlend53_g27156 = Blend( cola53_g27156 , colb53_g27156 , f53_g27156 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27156 = localBlend53_g27156;
				#else
				float4 staticSwitch55_g27156 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27156 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27154 = temp_output_81_0_g27146;
				float4 lerpResult178_g27154 = lerp( temp_output_308_0_g27154 , staticSwitch55_g27156 , temp_output_141_0_g27154);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27154 = lerpResult178_g27154;
				#else
				float4 staticSwitch259_g27154 = temp_output_308_0_g27154;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1326 = float4( float3(0,0,1) , 0.0 );
				#else
				float4 staticSwitch1326 = staticSwitch259_g27154;
				#endif
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float2 temp_output_47_0_g27153 = ddx( temp_output_10_0_g27153 );
				float2 temp_output_45_0_g27153 = ddy( temp_output_10_0_g27153 );
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float2 temp_output_47_0_g27149 = ddx( temp_output_10_0_g27149 );
				float2 temp_output_45_0_g27149 = ddy( temp_output_10_0_g27149 );
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149 );
				#endif
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult16_g27192 = lerp( lerpResult16_g27190 , staticSwitch1326 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27176 = temp_output_411_0_g27168;
				float3 objToWorld238_g27176 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27176 = (objToWorld238_g27176).xz;
				float2 temp_output_10_0_g27182 = ( temp_output_1_0_g27176 * temp_output_135_0_g27176 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27176 = temp_output_393_0_g27168;
				float temp_output_22_0_g27182 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27182 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27182 = break209_g27176.x;
				float2 temp_output_47_0_g27182 = ddx( temp_output_10_0_g27182 );
				float2 temp_output_45_0_g27182 = ddy( temp_output_10_0_g27182 );
				float4 cola53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( sin( ( floor( ( temp_output_22_0_g27182 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27182 ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float4 colb53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( temp_output_12_0_g27182 * sin( ( _Vector1 * floor( temp_output_22_0_g27182 ) ) ) ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float temp_output_32_0_g27182 = frac( temp_output_22_0_g27182 );
				float f53_g27182 = ( min( temp_output_32_0_g27182 , ( 1.0 - temp_output_32_0_g27182 ) ) * 2.0 );
				float4 localBlend53_g27182 = Blend( cola53_g27182 , colb53_g27182 , f53_g27182 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27182 = localBlend53_g27182;
				#else
				float4 staticSwitch55_g27182 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27182 );
				#endif
				float4 temp_output_308_0_g27176 = staticSwitch55_g27182;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27176 = ( temp_output_1_0_g27176 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27178 = ( temp_output_176_0_g27176 * temp_output_135_0_g27176 );
				float temp_output_22_0_g27178 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27178 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27178 = break209_g27176.x;
				float2 temp_output_47_0_g27178 = ddx( temp_output_10_0_g27178 );
				float2 temp_output_45_0_g27178 = ddy( temp_output_10_0_g27178 );
				float4 cola53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( sin( ( floor( ( temp_output_22_0_g27178 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27178 ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float4 colb53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( temp_output_12_0_g27178 * sin( ( _Vector1 * floor( temp_output_22_0_g27178 ) ) ) ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float temp_output_32_0_g27178 = frac( temp_output_22_0_g27178 );
				float f53_g27178 = ( min( temp_output_32_0_g27178 , ( 1.0 - temp_output_32_0_g27178 ) ) * 2.0 );
				float4 localBlend53_g27178 = Blend( cola53_g27178 , colb53_g27178 , f53_g27178 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27178 = localBlend53_g27178;
				#else
				float4 staticSwitch55_g27178 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27178 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27176 = temp_output_81_0_g27168;
				float4 lerpResult178_g27176 = lerp( temp_output_308_0_g27176 , staticSwitch55_g27178 , temp_output_141_0_g27176);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27176 = lerpResult178_g27176;
				#else
				float4 staticSwitch259_g27176 = temp_output_308_0_g27176;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1327 = float4( 0,0,0,0 );
				#else
				float4 staticSwitch1327 = staticSwitch259_g27176;
				#endif
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float2 temp_output_47_0_g27175 = ddx( temp_output_10_0_g27175 );
				float2 temp_output_45_0_g27175 = ddy( temp_output_10_0_g27175 );
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float2 temp_output_47_0_g27171 = ddx( temp_output_10_0_g27171 );
				float2 temp_output_45_0_g27171 = ddy( temp_output_10_0_g27171 );
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171 );
				#endif
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult16_g27194 = lerp( lerpResult16_g27192 , staticSwitch1327 , staticSwitch98_g27194);
				float4 temp_output_2258_0 = lerpResult16_g27194;
				float2 temp_cast_49 = (( _MacroTiling * 0.001 )).xx;
				float2 temp_output_1_0_g27196 = temp_cast_49;
				float3 objToWorld238_g27196 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27196 = (objToWorld238_g27196).xz;
				float2 temp_output_10_0_g27202 = ( temp_output_1_0_g27196 * temp_output_135_0_g27196 );
				float3 break209_g27196 = float3( 0.5,32,0.01 );
				float temp_output_22_0_g27202 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27202 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27202 = break209_g27196.x;
				float2 temp_output_47_0_g27202 = ddx( temp_output_10_0_g27202 );
				float2 temp_output_45_0_g27202 = ddy( temp_output_10_0_g27202 );
				float4 cola53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( sin( ( floor( ( temp_output_22_0_g27202 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27202 ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float4 colb53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( temp_output_12_0_g27202 * sin( ( _Vector1 * floor( temp_output_22_0_g27202 ) ) ) ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float temp_output_32_0_g27202 = frac( temp_output_22_0_g27202 );
				float f53_g27202 = ( min( temp_output_32_0_g27202 , ( 1.0 - temp_output_32_0_g27202 ) ) * 2.0 );
				float4 localBlend53_g27202 = Blend( cola53_g27202 , colb53_g27202 , f53_g27202 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27202 = localBlend53_g27202;
				#else
				float4 staticSwitch55_g27202 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27202 );
				#endif
				float4 temp_output_308_0_g27196 = staticSwitch55_g27202;
				float2 temp_output_176_0_g27196 = ( temp_output_1_0_g27196 * DistanceTiling489 );
				float2 temp_output_10_0_g27198 = ( temp_output_176_0_g27196 * temp_output_135_0_g27196 );
				float temp_output_22_0_g27198 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27198 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27198 = break209_g27196.x;
				float2 temp_output_47_0_g27198 = ddx( temp_output_10_0_g27198 );
				float2 temp_output_45_0_g27198 = ddy( temp_output_10_0_g27198 );
				float4 cola53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( sin( ( floor( ( temp_output_22_0_g27198 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27198 ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float4 colb53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( temp_output_12_0_g27198 * sin( ( _Vector1 * floor( temp_output_22_0_g27198 ) ) ) ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float temp_output_32_0_g27198 = frac( temp_output_22_0_g27198 );
				float f53_g27198 = ( min( temp_output_32_0_g27198 , ( 1.0 - temp_output_32_0_g27198 ) ) * 2.0 );
				float4 localBlend53_g27198 = Blend( cola53_g27198 , colb53_g27198 , f53_g27198 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27198 = localBlend53_g27198;
				#else
				float4 staticSwitch55_g27198 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27198 );
				#endif
				float temp_output_141_0_g27196 = DistanceBlend478;
				float4 lerpResult178_g27196 = lerp( temp_output_308_0_g27196 , staticSwitch55_g27198 , temp_output_141_0_g27196);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27196 = lerpResult178_g27196;
				#else
				float4 staticSwitch259_g27196 = temp_output_308_0_g27196;
				#endif
				float4 lerpResult1111 = lerp( float4( 1,1,1,0 ) , staticSwitch259_g27196 , _Contrast);
				#ifdef _MACROVARIATIONENABLED_ON
				float4 staticSwitch2218 = ( lerpResult1111 * temp_output_2258_0 );
				#else
				float4 staticSwitch2218 = temp_output_2258_0;
				#endif
				
				float2 temp_output_1_0_g27139 = temp_output_411_0_g27124;
				float3 objToWorld238_g27139 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27139 = (objToWorld238_g27139).xz;
				float2 temp_output_10_0_g27145 = ( temp_output_1_0_g27139 * temp_output_135_0_g27139 );
				float3 break209_g27139 = temp_output_393_0_g27124;
				float temp_output_22_0_g27145 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27145 * break209_g27139.z ) ).r * break209_g27139.y );
				float temp_output_12_0_g27145 = break209_g27139.x;
				float2 temp_output_47_0_g27145 = ddx( temp_output_10_0_g27145 );
				float2 temp_output_45_0_g27145 = ddy( temp_output_10_0_g27145 );
				float4 cola53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( sin( ( floor( ( temp_output_22_0_g27145 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27145 ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float4 colb53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( temp_output_12_0_g27145 * sin( ( _Vector1 * floor( temp_output_22_0_g27145 ) ) ) ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float temp_output_32_0_g27145 = frac( temp_output_22_0_g27145 );
				float f53_g27145 = ( min( temp_output_32_0_g27145 , ( 1.0 - temp_output_32_0_g27145 ) ) * 2.0 );
				float4 localBlend53_g27145 = Blend( cola53_g27145 , colb53_g27145 , f53_g27145 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27145 = localBlend53_g27145;
				#else
				float4 staticSwitch55_g27145 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27145 );
				#endif
				float4 temp_output_308_0_g27139 = staticSwitch55_g27145;
				float2 temp_output_176_0_g27139 = ( temp_output_1_0_g27139 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27141 = ( temp_output_176_0_g27139 * temp_output_135_0_g27139 );
				float temp_output_22_0_g27141 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27141 * break209_g27139.z ) ).r * break209_g27139.y );
				float temp_output_12_0_g27141 = break209_g27139.x;
				float2 temp_output_47_0_g27141 = ddx( temp_output_10_0_g27141 );
				float2 temp_output_45_0_g27141 = ddy( temp_output_10_0_g27141 );
				float4 cola53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( sin( ( floor( ( temp_output_22_0_g27141 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27141 ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float4 colb53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( temp_output_12_0_g27141 * sin( ( _Vector1 * floor( temp_output_22_0_g27141 ) ) ) ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float temp_output_32_0_g27141 = frac( temp_output_22_0_g27141 );
				float f53_g27141 = ( min( temp_output_32_0_g27141 , ( 1.0 - temp_output_32_0_g27141 ) ) * 2.0 );
				float4 localBlend53_g27141 = Blend( cola53_g27141 , colb53_g27141 , f53_g27141 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27141 = localBlend53_g27141;
				#else
				float4 staticSwitch55_g27141 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27141 );
				#endif
				float temp_output_141_0_g27139 = temp_output_81_0_g27124;
				float4 lerpResult178_g27139 = lerp( temp_output_308_0_g27139 , staticSwitch55_g27141 , temp_output_141_0_g27139);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27139 = lerpResult178_g27139;
				#else
				float4 staticSwitch259_g27139 = temp_output_308_0_g27139;
				#endif
				float2 temp_output_1_0_g27117 = temp_output_411_0_g27102;
				float3 objToWorld238_g27117 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27117 = (objToWorld238_g27117).xz;
				float2 temp_output_10_0_g27123 = ( temp_output_1_0_g27117 * temp_output_135_0_g27117 );
				float3 break209_g27117 = temp_output_393_0_g27102;
				float temp_output_22_0_g27123 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27123 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27123 = break209_g27117.x;
				float2 temp_output_47_0_g27123 = ddx( temp_output_10_0_g27123 );
				float2 temp_output_45_0_g27123 = ddy( temp_output_10_0_g27123 );
				float4 cola53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( sin( ( floor( ( temp_output_22_0_g27123 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27123 ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float4 colb53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( temp_output_12_0_g27123 * sin( ( _Vector1 * floor( temp_output_22_0_g27123 ) ) ) ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float temp_output_32_0_g27123 = frac( temp_output_22_0_g27123 );
				float f53_g27123 = ( min( temp_output_32_0_g27123 , ( 1.0 - temp_output_32_0_g27123 ) ) * 2.0 );
				float4 localBlend53_g27123 = Blend( cola53_g27123 , colb53_g27123 , f53_g27123 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27123 = localBlend53_g27123;
				#else
				float4 staticSwitch55_g27123 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27123 );
				#endif
				float4 temp_output_308_0_g27117 = staticSwitch55_g27123;
				float2 temp_output_176_0_g27117 = ( temp_output_1_0_g27117 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27119 = ( temp_output_176_0_g27117 * temp_output_135_0_g27117 );
				float temp_output_22_0_g27119 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27119 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27119 = break209_g27117.x;
				float2 temp_output_47_0_g27119 = ddx( temp_output_10_0_g27119 );
				float2 temp_output_45_0_g27119 = ddy( temp_output_10_0_g27119 );
				float4 cola53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( sin( ( floor( ( temp_output_22_0_g27119 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27119 ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float4 colb53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( temp_output_12_0_g27119 * sin( ( _Vector1 * floor( temp_output_22_0_g27119 ) ) ) ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float temp_output_32_0_g27119 = frac( temp_output_22_0_g27119 );
				float f53_g27119 = ( min( temp_output_32_0_g27119 , ( 1.0 - temp_output_32_0_g27119 ) ) * 2.0 );
				float4 localBlend53_g27119 = Blend( cola53_g27119 , colb53_g27119 , f53_g27119 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27119 = localBlend53_g27119;
				#else
				float4 staticSwitch55_g27119 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27119 );
				#endif
				float temp_output_141_0_g27117 = temp_output_81_0_g27102;
				float4 lerpResult178_g27117 = lerp( temp_output_308_0_g27117 , staticSwitch55_g27119 , temp_output_141_0_g27117);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27117 = lerpResult178_g27117;
				#else
				float4 staticSwitch259_g27117 = temp_output_308_0_g27117;
				#endif
				float4 lerpResult17_g27190 = lerp( staticSwitch259_g27139 , staticSwitch259_g27117 , staticSwitch98_g27190);
				float2 temp_output_1_0_g27161 = temp_output_411_0_g27146;
				float3 objToWorld238_g27161 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27161 = (objToWorld238_g27161).xz;
				float2 temp_output_10_0_g27167 = ( temp_output_1_0_g27161 * temp_output_135_0_g27161 );
				float3 break209_g27161 = temp_output_393_0_g27146;
				float temp_output_22_0_g27167 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27167 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27167 = break209_g27161.x;
				float2 temp_output_47_0_g27167 = ddx( temp_output_10_0_g27167 );
				float2 temp_output_45_0_g27167 = ddy( temp_output_10_0_g27167 );
				float4 cola53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( sin( ( floor( ( temp_output_22_0_g27167 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27167 ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float4 colb53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( temp_output_12_0_g27167 * sin( ( _Vector1 * floor( temp_output_22_0_g27167 ) ) ) ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float temp_output_32_0_g27167 = frac( temp_output_22_0_g27167 );
				float f53_g27167 = ( min( temp_output_32_0_g27167 , ( 1.0 - temp_output_32_0_g27167 ) ) * 2.0 );
				float4 localBlend53_g27167 = Blend( cola53_g27167 , colb53_g27167 , f53_g27167 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27167 = localBlend53_g27167;
				#else
				float4 staticSwitch55_g27167 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27167 );
				#endif
				float4 temp_output_308_0_g27161 = staticSwitch55_g27167;
				float2 temp_output_176_0_g27161 = ( temp_output_1_0_g27161 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27163 = ( temp_output_176_0_g27161 * temp_output_135_0_g27161 );
				float temp_output_22_0_g27163 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27163 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27163 = break209_g27161.x;
				float2 temp_output_47_0_g27163 = ddx( temp_output_10_0_g27163 );
				float2 temp_output_45_0_g27163 = ddy( temp_output_10_0_g27163 );
				float4 cola53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( sin( ( floor( ( temp_output_22_0_g27163 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27163 ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float4 colb53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( temp_output_12_0_g27163 * sin( ( _Vector1 * floor( temp_output_22_0_g27163 ) ) ) ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float temp_output_32_0_g27163 = frac( temp_output_22_0_g27163 );
				float f53_g27163 = ( min( temp_output_32_0_g27163 , ( 1.0 - temp_output_32_0_g27163 ) ) * 2.0 );
				float4 localBlend53_g27163 = Blend( cola53_g27163 , colb53_g27163 , f53_g27163 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27163 = localBlend53_g27163;
				#else
				float4 staticSwitch55_g27163 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27163 );
				#endif
				float temp_output_141_0_g27161 = temp_output_81_0_g27146;
				float4 lerpResult178_g27161 = lerp( temp_output_308_0_g27161 , staticSwitch55_g27163 , temp_output_141_0_g27161);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27161 = lerpResult178_g27161;
				#else
				float4 staticSwitch259_g27161 = temp_output_308_0_g27161;
				#endif
				float4 lerpResult17_g27192 = lerp( lerpResult17_g27190 , staticSwitch259_g27161 , staticSwitch98_g27192);
				float2 temp_output_1_0_g27183 = temp_output_411_0_g27168;
				float3 objToWorld238_g27183 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27183 = (objToWorld238_g27183).xz;
				float2 temp_output_10_0_g27189 = ( temp_output_1_0_g27183 * temp_output_135_0_g27183 );
				float3 break209_g27183 = temp_output_393_0_g27168;
				float temp_output_22_0_g27189 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27189 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27189 = break209_g27183.x;
				float2 temp_output_47_0_g27189 = ddx( temp_output_10_0_g27189 );
				float2 temp_output_45_0_g27189 = ddy( temp_output_10_0_g27189 );
				float4 cola53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( sin( ( floor( ( temp_output_22_0_g27189 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27189 ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float4 colb53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( temp_output_12_0_g27189 * sin( ( _Vector1 * floor( temp_output_22_0_g27189 ) ) ) ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float temp_output_32_0_g27189 = frac( temp_output_22_0_g27189 );
				float f53_g27189 = ( min( temp_output_32_0_g27189 , ( 1.0 - temp_output_32_0_g27189 ) ) * 2.0 );
				float4 localBlend53_g27189 = Blend( cola53_g27189 , colb53_g27189 , f53_g27189 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27189 = localBlend53_g27189;
				#else
				float4 staticSwitch55_g27189 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27189 );
				#endif
				float4 temp_output_308_0_g27183 = staticSwitch55_g27189;
				float2 temp_output_176_0_g27183 = ( temp_output_1_0_g27183 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27185 = ( temp_output_176_0_g27183 * temp_output_135_0_g27183 );
				float temp_output_22_0_g27185 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27185 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27185 = break209_g27183.x;
				float2 temp_output_47_0_g27185 = ddx( temp_output_10_0_g27185 );
				float2 temp_output_45_0_g27185 = ddy( temp_output_10_0_g27185 );
				float4 cola53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( sin( ( floor( ( temp_output_22_0_g27185 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27185 ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float4 colb53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( temp_output_12_0_g27185 * sin( ( _Vector1 * floor( temp_output_22_0_g27185 ) ) ) ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float temp_output_32_0_g27185 = frac( temp_output_22_0_g27185 );
				float f53_g27185 = ( min( temp_output_32_0_g27185 , ( 1.0 - temp_output_32_0_g27185 ) ) * 2.0 );
				float4 localBlend53_g27185 = Blend( cola53_g27185 , colb53_g27185 , f53_g27185 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27185 = localBlend53_g27185;
				#else
				float4 staticSwitch55_g27185 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27185 );
				#endif
				float temp_output_141_0_g27183 = temp_output_81_0_g27168;
				float4 lerpResult178_g27183 = lerp( temp_output_308_0_g27183 , staticSwitch55_g27185 , temp_output_141_0_g27183);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27183 = lerpResult178_g27183;
				#else
				float4 staticSwitch259_g27183 = temp_output_308_0_g27183;
				#endif
				float4 lerpResult17_g27194 = lerp( lerpResult17_g27192 , staticSwitch259_g27183 , staticSwitch98_g27194);
				
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ) ).r * break209_g27125.y );
				float temp_output_12_0_g27131 = break209_g27125.x;
				float2 temp_output_47_0_g27131 = ddx( temp_output_10_0_g27131 );
				float2 temp_output_45_0_g27131 = ddy( temp_output_10_0_g27131 );
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), temp_output_47_0_g27131, temp_output_45_0_g27131 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), temp_output_47_0_g27131, temp_output_45_0_g27131 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ) ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float2 temp_output_47_0_g27127 = ddx( temp_output_10_0_g27127 );
				float2 temp_output_45_0_g27127 = ddy( temp_output_10_0_g27127 );
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), temp_output_47_0_g27127, temp_output_45_0_g27127 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), temp_output_47_0_g27127, temp_output_45_0_g27127 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127 );
				#endif
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				
				float2 uv_TerrainHolesTexture = IN.ase_texcoord9.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				float3 Albedo = staticSwitch2218.xyz;
				float3 Normal = UnpackNormalScale( lerpResult17_g27194, 1.0 );
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = ( 1.0 - break106.y );
				float Occlusion = break106.z;
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif
				
				#ifdef _CLEARCOAT
				float CoatMask = 0;
				float CoatSmoothness = 0;
				#endif


				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;
				

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif


				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;
				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
				inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
				inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
				#endif

				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif
				
				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif

					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = Albedo;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;


				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.clipPos, surfaceData, inputData);
				#endif

				half4 color = UniversalFragmentPBR( inputData, surfaceData);

				#ifdef _TRANSMISSION_ASE
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += Albedo * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += Albedo * transmission;
						}
					#endif
				}
				#endif

				#ifdef _TRANSLUCENCY_ASE
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += Albedo * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += Albedo * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef _REFRACTION_ASE
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return color;
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#pragma multi_compile _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif
				float3 normalWS = TransformObjectToWorldDir(v.ase_normal);


			#if _CASTING_PUNCTUAL_LIGHT_SHADOW
				float3 lightDirectionWS = normalize(_LightPosition - positionWS);
			#else
				float3 lightDirectionWS = _LightDirection;
			#endif

				float4 clipPos = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));
			
			#if UNITY_REVERSED_Z
				clipPos.z = min(clipPos.z, UNITY_NEAR_CLIP_VALUE);
			#else
				clipPos.z = max(clipPos.z, UNITY_NEAR_CLIP_VALUE);
			#endif


				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = clipPos;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = clipPos;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif

			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );
				
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_TerrainHolesTexture = IN.ase_texcoord2.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				return 0;
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHONLY
        
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 uv_TerrainHolesTexture = IN.ase_texcoord2.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}
		
		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#pragma shader_feature _ EDITOR_VISUALIZATION

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma shader_feature_local _MACROVARIATIONENABLED_ON
			#pragma shader_feature_local _PREVIEWSPLATMAP_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
				float4 VizUV : TEXCOORD2;
				float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_Splat0);
			TEXTURE2D(_Splat1);
			TEXTURE2D(_Splat2);
			TEXTURE2D(_Splat3);
			TEXTURE2D(_MacroTexture);
			TEXTURE2D(_Sampler1942423);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.texcoord0.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.texcoord0.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord4 = v.vertex;
				o.ase_texcoord5.xy = v.texcoord0.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.clipPos = MetaVertexPosition( v.vertex, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

			#ifdef EDITOR_VISUALIZATION
				float2 VizUV = 0;
				float4 LightCoord = 0;
				UnityEditorVizData(v.vertex.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
				o.VizUV = float4(VizUV, 0, 0);
				o.LightCoord = LightCoord;
			#endif

			#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = o.clipPos;
				o.shadowCoord = GetShadowCoord( vertexInput );
			#endif
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27132 = temp_output_411_0_g27124;
				float3 objToWorld238_g27132 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27132 = (objToWorld238_g27132).xz;
				float2 temp_output_10_0_g27138 = ( temp_output_1_0_g27132 * temp_output_135_0_g27132 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27132 = temp_output_393_0_g27124;
				float temp_output_22_0_g27138 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27138 * break209_g27132.z ) ).r * break209_g27132.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27138 = break209_g27132.x;
				float2 temp_output_47_0_g27138 = ddx( temp_output_10_0_g27138 );
				float2 temp_output_45_0_g27138 = ddy( temp_output_10_0_g27138 );
				float4 cola53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( sin( ( floor( ( temp_output_22_0_g27138 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27138 ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float4 colb53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( temp_output_12_0_g27138 * sin( ( _Vector1 * floor( temp_output_22_0_g27138 ) ) ) ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float temp_output_32_0_g27138 = frac( temp_output_22_0_g27138 );
				float f53_g27138 = ( min( temp_output_32_0_g27138 , ( 1.0 - temp_output_32_0_g27138 ) ) * 2.0 );
				float4 localBlend53_g27138 = Blend( cola53_g27138 , colb53_g27138 , f53_g27138 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27138 = localBlend53_g27138;
				#else
				float4 staticSwitch55_g27138 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27138 );
				#endif
				float4 temp_output_308_0_g27132 = staticSwitch55_g27138;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27132 = ( temp_output_1_0_g27132 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27134 = ( temp_output_176_0_g27132 * temp_output_135_0_g27132 );
				float temp_output_22_0_g27134 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27134 * break209_g27132.z ) ).r * break209_g27132.y );
				float temp_output_12_0_g27134 = break209_g27132.x;
				float2 temp_output_47_0_g27134 = ddx( temp_output_10_0_g27134 );
				float2 temp_output_45_0_g27134 = ddy( temp_output_10_0_g27134 );
				float4 cola53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( sin( ( floor( ( temp_output_22_0_g27134 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27134 ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float4 colb53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( temp_output_12_0_g27134 * sin( ( _Vector1 * floor( temp_output_22_0_g27134 ) ) ) ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float temp_output_32_0_g27134 = frac( temp_output_22_0_g27134 );
				float f53_g27134 = ( min( temp_output_32_0_g27134 , ( 1.0 - temp_output_32_0_g27134 ) ) * 2.0 );
				float4 localBlend53_g27134 = Blend( cola53_g27134 , colb53_g27134 , f53_g27134 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27134 = localBlend53_g27134;
				#else
				float4 staticSwitch55_g27134 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27134 );
				#endif
				float DistanceBlend478 = saturate( pow( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27132 = temp_output_81_0_g27124;
				float4 lerpResult178_g27132 = lerp( temp_output_308_0_g27132 , staticSwitch55_g27134 , temp_output_141_0_g27132);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27132 = lerpResult178_g27132;
				#else
				float4 staticSwitch259_g27132 = temp_output_308_0_g27132;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1325 = float4( float3(1,0,0) , 0.0 );
				#else
				float4 staticSwitch1325 = staticSwitch259_g27132;
				#endif
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27110 = temp_output_411_0_g27102;
				float3 objToWorld238_g27110 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27110 = (objToWorld238_g27110).xz;
				float2 temp_output_10_0_g27116 = ( temp_output_1_0_g27110 * temp_output_135_0_g27110 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27110 = temp_output_393_0_g27102;
				float temp_output_22_0_g27116 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27116 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27116 = break209_g27110.x;
				float2 temp_output_47_0_g27116 = ddx( temp_output_10_0_g27116 );
				float2 temp_output_45_0_g27116 = ddy( temp_output_10_0_g27116 );
				float4 cola53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( sin( ( floor( ( temp_output_22_0_g27116 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27116 ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float4 colb53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( temp_output_12_0_g27116 * sin( ( _Vector1 * floor( temp_output_22_0_g27116 ) ) ) ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float temp_output_32_0_g27116 = frac( temp_output_22_0_g27116 );
				float f53_g27116 = ( min( temp_output_32_0_g27116 , ( 1.0 - temp_output_32_0_g27116 ) ) * 2.0 );
				float4 localBlend53_g27116 = Blend( cola53_g27116 , colb53_g27116 , f53_g27116 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27116 = localBlend53_g27116;
				#else
				float4 staticSwitch55_g27116 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27116 );
				#endif
				float4 temp_output_308_0_g27110 = staticSwitch55_g27116;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27110 = ( temp_output_1_0_g27110 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27112 = ( temp_output_176_0_g27110 * temp_output_135_0_g27110 );
				float temp_output_22_0_g27112 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27112 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27112 = break209_g27110.x;
				float2 temp_output_47_0_g27112 = ddx( temp_output_10_0_g27112 );
				float2 temp_output_45_0_g27112 = ddy( temp_output_10_0_g27112 );
				float4 cola53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( sin( ( floor( ( temp_output_22_0_g27112 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27112 ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float4 colb53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( temp_output_12_0_g27112 * sin( ( _Vector1 * floor( temp_output_22_0_g27112 ) ) ) ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float temp_output_32_0_g27112 = frac( temp_output_22_0_g27112 );
				float f53_g27112 = ( min( temp_output_32_0_g27112 , ( 1.0 - temp_output_32_0_g27112 ) ) * 2.0 );
				float4 localBlend53_g27112 = Blend( cola53_g27112 , colb53_g27112 , f53_g27112 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27112 = localBlend53_g27112;
				#else
				float4 staticSwitch55_g27112 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27112 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27110 = temp_output_81_0_g27102;
				float4 lerpResult178_g27110 = lerp( temp_output_308_0_g27110 , staticSwitch55_g27112 , temp_output_141_0_g27110);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27110 = lerpResult178_g27110;
				#else
				float4 staticSwitch259_g27110 = temp_output_308_0_g27110;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1328 = float4( float3(0,1,0) , 0.0 );
				#else
				float4 staticSwitch1328 = staticSwitch259_g27110;
				#endif
				float2 uv_Control = IN.ase_texcoord5.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float2 temp_output_47_0_g27109 = ddx( temp_output_10_0_g27109 );
				float2 temp_output_45_0_g27109 = ddy( temp_output_10_0_g27109 );
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float2 temp_output_47_0_g27105 = ddx( temp_output_10_0_g27105 );
				float2 temp_output_45_0_g27105 = ddy( temp_output_10_0_g27105 );
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105 );
				#endif
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult16_g27190 = lerp( staticSwitch1325 , staticSwitch1328 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27154 = temp_output_411_0_g27146;
				float3 objToWorld238_g27154 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27154 = (objToWorld238_g27154).xz;
				float2 temp_output_10_0_g27160 = ( temp_output_1_0_g27154 * temp_output_135_0_g27154 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27154 = temp_output_393_0_g27146;
				float temp_output_22_0_g27160 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27160 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27160 = break209_g27154.x;
				float2 temp_output_47_0_g27160 = ddx( temp_output_10_0_g27160 );
				float2 temp_output_45_0_g27160 = ddy( temp_output_10_0_g27160 );
				float4 cola53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( sin( ( floor( ( temp_output_22_0_g27160 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27160 ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float4 colb53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( temp_output_12_0_g27160 * sin( ( _Vector1 * floor( temp_output_22_0_g27160 ) ) ) ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float temp_output_32_0_g27160 = frac( temp_output_22_0_g27160 );
				float f53_g27160 = ( min( temp_output_32_0_g27160 , ( 1.0 - temp_output_32_0_g27160 ) ) * 2.0 );
				float4 localBlend53_g27160 = Blend( cola53_g27160 , colb53_g27160 , f53_g27160 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27160 = localBlend53_g27160;
				#else
				float4 staticSwitch55_g27160 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27160 );
				#endif
				float4 temp_output_308_0_g27154 = staticSwitch55_g27160;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27154 = ( temp_output_1_0_g27154 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27156 = ( temp_output_176_0_g27154 * temp_output_135_0_g27154 );
				float temp_output_22_0_g27156 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27156 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27156 = break209_g27154.x;
				float2 temp_output_47_0_g27156 = ddx( temp_output_10_0_g27156 );
				float2 temp_output_45_0_g27156 = ddy( temp_output_10_0_g27156 );
				float4 cola53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( sin( ( floor( ( temp_output_22_0_g27156 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27156 ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float4 colb53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( temp_output_12_0_g27156 * sin( ( _Vector1 * floor( temp_output_22_0_g27156 ) ) ) ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float temp_output_32_0_g27156 = frac( temp_output_22_0_g27156 );
				float f53_g27156 = ( min( temp_output_32_0_g27156 , ( 1.0 - temp_output_32_0_g27156 ) ) * 2.0 );
				float4 localBlend53_g27156 = Blend( cola53_g27156 , colb53_g27156 , f53_g27156 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27156 = localBlend53_g27156;
				#else
				float4 staticSwitch55_g27156 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27156 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27154 = temp_output_81_0_g27146;
				float4 lerpResult178_g27154 = lerp( temp_output_308_0_g27154 , staticSwitch55_g27156 , temp_output_141_0_g27154);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27154 = lerpResult178_g27154;
				#else
				float4 staticSwitch259_g27154 = temp_output_308_0_g27154;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1326 = float4( float3(0,0,1) , 0.0 );
				#else
				float4 staticSwitch1326 = staticSwitch259_g27154;
				#endif
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float2 temp_output_47_0_g27153 = ddx( temp_output_10_0_g27153 );
				float2 temp_output_45_0_g27153 = ddy( temp_output_10_0_g27153 );
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float2 temp_output_47_0_g27149 = ddx( temp_output_10_0_g27149 );
				float2 temp_output_45_0_g27149 = ddy( temp_output_10_0_g27149 );
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149 );
				#endif
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult16_g27192 = lerp( lerpResult16_g27190 , staticSwitch1326 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27176 = temp_output_411_0_g27168;
				float3 objToWorld238_g27176 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27176 = (objToWorld238_g27176).xz;
				float2 temp_output_10_0_g27182 = ( temp_output_1_0_g27176 * temp_output_135_0_g27176 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27176 = temp_output_393_0_g27168;
				float temp_output_22_0_g27182 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27182 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27182 = break209_g27176.x;
				float2 temp_output_47_0_g27182 = ddx( temp_output_10_0_g27182 );
				float2 temp_output_45_0_g27182 = ddy( temp_output_10_0_g27182 );
				float4 cola53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( sin( ( floor( ( temp_output_22_0_g27182 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27182 ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float4 colb53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( temp_output_12_0_g27182 * sin( ( _Vector1 * floor( temp_output_22_0_g27182 ) ) ) ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float temp_output_32_0_g27182 = frac( temp_output_22_0_g27182 );
				float f53_g27182 = ( min( temp_output_32_0_g27182 , ( 1.0 - temp_output_32_0_g27182 ) ) * 2.0 );
				float4 localBlend53_g27182 = Blend( cola53_g27182 , colb53_g27182 , f53_g27182 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27182 = localBlend53_g27182;
				#else
				float4 staticSwitch55_g27182 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27182 );
				#endif
				float4 temp_output_308_0_g27176 = staticSwitch55_g27182;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27176 = ( temp_output_1_0_g27176 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27178 = ( temp_output_176_0_g27176 * temp_output_135_0_g27176 );
				float temp_output_22_0_g27178 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27178 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27178 = break209_g27176.x;
				float2 temp_output_47_0_g27178 = ddx( temp_output_10_0_g27178 );
				float2 temp_output_45_0_g27178 = ddy( temp_output_10_0_g27178 );
				float4 cola53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( sin( ( floor( ( temp_output_22_0_g27178 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27178 ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float4 colb53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( temp_output_12_0_g27178 * sin( ( _Vector1 * floor( temp_output_22_0_g27178 ) ) ) ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float temp_output_32_0_g27178 = frac( temp_output_22_0_g27178 );
				float f53_g27178 = ( min( temp_output_32_0_g27178 , ( 1.0 - temp_output_32_0_g27178 ) ) * 2.0 );
				float4 localBlend53_g27178 = Blend( cola53_g27178 , colb53_g27178 , f53_g27178 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27178 = localBlend53_g27178;
				#else
				float4 staticSwitch55_g27178 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27178 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27176 = temp_output_81_0_g27168;
				float4 lerpResult178_g27176 = lerp( temp_output_308_0_g27176 , staticSwitch55_g27178 , temp_output_141_0_g27176);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27176 = lerpResult178_g27176;
				#else
				float4 staticSwitch259_g27176 = temp_output_308_0_g27176;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1327 = float4( 0,0,0,0 );
				#else
				float4 staticSwitch1327 = staticSwitch259_g27176;
				#endif
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float2 temp_output_47_0_g27175 = ddx( temp_output_10_0_g27175 );
				float2 temp_output_45_0_g27175 = ddy( temp_output_10_0_g27175 );
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float2 temp_output_47_0_g27171 = ddx( temp_output_10_0_g27171 );
				float2 temp_output_45_0_g27171 = ddy( temp_output_10_0_g27171 );
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171 );
				#endif
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult16_g27194 = lerp( lerpResult16_g27192 , staticSwitch1327 , staticSwitch98_g27194);
				float4 temp_output_2258_0 = lerpResult16_g27194;
				float2 temp_cast_49 = (( _MacroTiling * 0.001 )).xx;
				float2 temp_output_1_0_g27196 = temp_cast_49;
				float3 objToWorld238_g27196 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27196 = (objToWorld238_g27196).xz;
				float2 temp_output_10_0_g27202 = ( temp_output_1_0_g27196 * temp_output_135_0_g27196 );
				float3 break209_g27196 = float3( 0.5,32,0.01 );
				float temp_output_22_0_g27202 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27202 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27202 = break209_g27196.x;
				float2 temp_output_47_0_g27202 = ddx( temp_output_10_0_g27202 );
				float2 temp_output_45_0_g27202 = ddy( temp_output_10_0_g27202 );
				float4 cola53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( sin( ( floor( ( temp_output_22_0_g27202 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27202 ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float4 colb53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( temp_output_12_0_g27202 * sin( ( _Vector1 * floor( temp_output_22_0_g27202 ) ) ) ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float temp_output_32_0_g27202 = frac( temp_output_22_0_g27202 );
				float f53_g27202 = ( min( temp_output_32_0_g27202 , ( 1.0 - temp_output_32_0_g27202 ) ) * 2.0 );
				float4 localBlend53_g27202 = Blend( cola53_g27202 , colb53_g27202 , f53_g27202 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27202 = localBlend53_g27202;
				#else
				float4 staticSwitch55_g27202 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27202 );
				#endif
				float4 temp_output_308_0_g27196 = staticSwitch55_g27202;
				float2 temp_output_176_0_g27196 = ( temp_output_1_0_g27196 * DistanceTiling489 );
				float2 temp_output_10_0_g27198 = ( temp_output_176_0_g27196 * temp_output_135_0_g27196 );
				float temp_output_22_0_g27198 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27198 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27198 = break209_g27196.x;
				float2 temp_output_47_0_g27198 = ddx( temp_output_10_0_g27198 );
				float2 temp_output_45_0_g27198 = ddy( temp_output_10_0_g27198 );
				float4 cola53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( sin( ( floor( ( temp_output_22_0_g27198 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27198 ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float4 colb53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( temp_output_12_0_g27198 * sin( ( _Vector1 * floor( temp_output_22_0_g27198 ) ) ) ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float temp_output_32_0_g27198 = frac( temp_output_22_0_g27198 );
				float f53_g27198 = ( min( temp_output_32_0_g27198 , ( 1.0 - temp_output_32_0_g27198 ) ) * 2.0 );
				float4 localBlend53_g27198 = Blend( cola53_g27198 , colb53_g27198 , f53_g27198 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27198 = localBlend53_g27198;
				#else
				float4 staticSwitch55_g27198 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27198 );
				#endif
				float temp_output_141_0_g27196 = DistanceBlend478;
				float4 lerpResult178_g27196 = lerp( temp_output_308_0_g27196 , staticSwitch55_g27198 , temp_output_141_0_g27196);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27196 = lerpResult178_g27196;
				#else
				float4 staticSwitch259_g27196 = temp_output_308_0_g27196;
				#endif
				float4 lerpResult1111 = lerp( float4( 1,1,1,0 ) , staticSwitch259_g27196 , _Contrast);
				#ifdef _MACROVARIATIONENABLED_ON
				float4 staticSwitch2218 = ( lerpResult1111 * temp_output_2258_0 );
				#else
				float4 staticSwitch2218 = temp_output_2258_0;
				#endif
				
				float2 uv_TerrainHolesTexture = IN.ase_texcoord5.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				
				float3 Albedo = staticSwitch2218.xyz;
				float3 Emission = 0;
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = Albedo;
				metaInput.Emission = Emission;
			#ifdef EDITOR_VISUALIZATION
				metaInput.VizUV = IN.VizUV.xy;
				metaInput.LightCoord = IN.LightCoord;
			#endif
				
				return MetaFragment(metaInput);
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ColorMask RGBA

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_2D
        
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
			
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma shader_feature_local _MACROVARIATIONENABLED_ON
			#pragma shader_feature_local _PREVIEWSPLATMAP_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_Splat0);
			TEXTURE2D(_Splat1);
			TEXTURE2D(_Splat2);
			TEXTURE2D(_Splat3);
			TEXTURE2D(_MacroTexture);
			TEXTURE2D(_Sampler1942423);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord2 = v.vertex;
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27132 = temp_output_411_0_g27124;
				float3 objToWorld238_g27132 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27132 = (objToWorld238_g27132).xz;
				float2 temp_output_10_0_g27138 = ( temp_output_1_0_g27132 * temp_output_135_0_g27132 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27132 = temp_output_393_0_g27124;
				float temp_output_22_0_g27138 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27138 * break209_g27132.z ) ).r * break209_g27132.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27138 = break209_g27132.x;
				float2 temp_output_47_0_g27138 = ddx( temp_output_10_0_g27138 );
				float2 temp_output_45_0_g27138 = ddy( temp_output_10_0_g27138 );
				float4 cola53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( sin( ( floor( ( temp_output_22_0_g27138 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27138 ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float4 colb53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( temp_output_12_0_g27138 * sin( ( _Vector1 * floor( temp_output_22_0_g27138 ) ) ) ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float temp_output_32_0_g27138 = frac( temp_output_22_0_g27138 );
				float f53_g27138 = ( min( temp_output_32_0_g27138 , ( 1.0 - temp_output_32_0_g27138 ) ) * 2.0 );
				float4 localBlend53_g27138 = Blend( cola53_g27138 , colb53_g27138 , f53_g27138 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27138 = localBlend53_g27138;
				#else
				float4 staticSwitch55_g27138 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27138 );
				#endif
				float4 temp_output_308_0_g27132 = staticSwitch55_g27138;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27132 = ( temp_output_1_0_g27132 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27134 = ( temp_output_176_0_g27132 * temp_output_135_0_g27132 );
				float temp_output_22_0_g27134 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27134 * break209_g27132.z ) ).r * break209_g27132.y );
				float temp_output_12_0_g27134 = break209_g27132.x;
				float2 temp_output_47_0_g27134 = ddx( temp_output_10_0_g27134 );
				float2 temp_output_45_0_g27134 = ddy( temp_output_10_0_g27134 );
				float4 cola53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( sin( ( floor( ( temp_output_22_0_g27134 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27134 ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float4 colb53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( temp_output_12_0_g27134 * sin( ( _Vector1 * floor( temp_output_22_0_g27134 ) ) ) ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float temp_output_32_0_g27134 = frac( temp_output_22_0_g27134 );
				float f53_g27134 = ( min( temp_output_32_0_g27134 , ( 1.0 - temp_output_32_0_g27134 ) ) * 2.0 );
				float4 localBlend53_g27134 = Blend( cola53_g27134 , colb53_g27134 , f53_g27134 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27134 = localBlend53_g27134;
				#else
				float4 staticSwitch55_g27134 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27134 );
				#endif
				float DistanceBlend478 = saturate( pow( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27132 = temp_output_81_0_g27124;
				float4 lerpResult178_g27132 = lerp( temp_output_308_0_g27132 , staticSwitch55_g27134 , temp_output_141_0_g27132);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27132 = lerpResult178_g27132;
				#else
				float4 staticSwitch259_g27132 = temp_output_308_0_g27132;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1325 = float4( float3(1,0,0) , 0.0 );
				#else
				float4 staticSwitch1325 = staticSwitch259_g27132;
				#endif
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27110 = temp_output_411_0_g27102;
				float3 objToWorld238_g27110 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27110 = (objToWorld238_g27110).xz;
				float2 temp_output_10_0_g27116 = ( temp_output_1_0_g27110 * temp_output_135_0_g27110 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27110 = temp_output_393_0_g27102;
				float temp_output_22_0_g27116 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27116 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27116 = break209_g27110.x;
				float2 temp_output_47_0_g27116 = ddx( temp_output_10_0_g27116 );
				float2 temp_output_45_0_g27116 = ddy( temp_output_10_0_g27116 );
				float4 cola53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( sin( ( floor( ( temp_output_22_0_g27116 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27116 ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float4 colb53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( temp_output_12_0_g27116 * sin( ( _Vector1 * floor( temp_output_22_0_g27116 ) ) ) ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float temp_output_32_0_g27116 = frac( temp_output_22_0_g27116 );
				float f53_g27116 = ( min( temp_output_32_0_g27116 , ( 1.0 - temp_output_32_0_g27116 ) ) * 2.0 );
				float4 localBlend53_g27116 = Blend( cola53_g27116 , colb53_g27116 , f53_g27116 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27116 = localBlend53_g27116;
				#else
				float4 staticSwitch55_g27116 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27116 );
				#endif
				float4 temp_output_308_0_g27110 = staticSwitch55_g27116;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27110 = ( temp_output_1_0_g27110 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27112 = ( temp_output_176_0_g27110 * temp_output_135_0_g27110 );
				float temp_output_22_0_g27112 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27112 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27112 = break209_g27110.x;
				float2 temp_output_47_0_g27112 = ddx( temp_output_10_0_g27112 );
				float2 temp_output_45_0_g27112 = ddy( temp_output_10_0_g27112 );
				float4 cola53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( sin( ( floor( ( temp_output_22_0_g27112 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27112 ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float4 colb53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( temp_output_12_0_g27112 * sin( ( _Vector1 * floor( temp_output_22_0_g27112 ) ) ) ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float temp_output_32_0_g27112 = frac( temp_output_22_0_g27112 );
				float f53_g27112 = ( min( temp_output_32_0_g27112 , ( 1.0 - temp_output_32_0_g27112 ) ) * 2.0 );
				float4 localBlend53_g27112 = Blend( cola53_g27112 , colb53_g27112 , f53_g27112 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27112 = localBlend53_g27112;
				#else
				float4 staticSwitch55_g27112 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27112 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27110 = temp_output_81_0_g27102;
				float4 lerpResult178_g27110 = lerp( temp_output_308_0_g27110 , staticSwitch55_g27112 , temp_output_141_0_g27110);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27110 = lerpResult178_g27110;
				#else
				float4 staticSwitch259_g27110 = temp_output_308_0_g27110;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1328 = float4( float3(0,1,0) , 0.0 );
				#else
				float4 staticSwitch1328 = staticSwitch259_g27110;
				#endif
				float2 uv_Control = IN.ase_texcoord3.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float2 temp_output_47_0_g27109 = ddx( temp_output_10_0_g27109 );
				float2 temp_output_45_0_g27109 = ddy( temp_output_10_0_g27109 );
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float2 temp_output_47_0_g27105 = ddx( temp_output_10_0_g27105 );
				float2 temp_output_45_0_g27105 = ddy( temp_output_10_0_g27105 );
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105 );
				#endif
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult16_g27190 = lerp( staticSwitch1325 , staticSwitch1328 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27154 = temp_output_411_0_g27146;
				float3 objToWorld238_g27154 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27154 = (objToWorld238_g27154).xz;
				float2 temp_output_10_0_g27160 = ( temp_output_1_0_g27154 * temp_output_135_0_g27154 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27154 = temp_output_393_0_g27146;
				float temp_output_22_0_g27160 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27160 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27160 = break209_g27154.x;
				float2 temp_output_47_0_g27160 = ddx( temp_output_10_0_g27160 );
				float2 temp_output_45_0_g27160 = ddy( temp_output_10_0_g27160 );
				float4 cola53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( sin( ( floor( ( temp_output_22_0_g27160 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27160 ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float4 colb53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( temp_output_12_0_g27160 * sin( ( _Vector1 * floor( temp_output_22_0_g27160 ) ) ) ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float temp_output_32_0_g27160 = frac( temp_output_22_0_g27160 );
				float f53_g27160 = ( min( temp_output_32_0_g27160 , ( 1.0 - temp_output_32_0_g27160 ) ) * 2.0 );
				float4 localBlend53_g27160 = Blend( cola53_g27160 , colb53_g27160 , f53_g27160 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27160 = localBlend53_g27160;
				#else
				float4 staticSwitch55_g27160 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27160 );
				#endif
				float4 temp_output_308_0_g27154 = staticSwitch55_g27160;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27154 = ( temp_output_1_0_g27154 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27156 = ( temp_output_176_0_g27154 * temp_output_135_0_g27154 );
				float temp_output_22_0_g27156 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27156 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27156 = break209_g27154.x;
				float2 temp_output_47_0_g27156 = ddx( temp_output_10_0_g27156 );
				float2 temp_output_45_0_g27156 = ddy( temp_output_10_0_g27156 );
				float4 cola53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( sin( ( floor( ( temp_output_22_0_g27156 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27156 ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float4 colb53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( temp_output_12_0_g27156 * sin( ( _Vector1 * floor( temp_output_22_0_g27156 ) ) ) ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float temp_output_32_0_g27156 = frac( temp_output_22_0_g27156 );
				float f53_g27156 = ( min( temp_output_32_0_g27156 , ( 1.0 - temp_output_32_0_g27156 ) ) * 2.0 );
				float4 localBlend53_g27156 = Blend( cola53_g27156 , colb53_g27156 , f53_g27156 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27156 = localBlend53_g27156;
				#else
				float4 staticSwitch55_g27156 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27156 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27154 = temp_output_81_0_g27146;
				float4 lerpResult178_g27154 = lerp( temp_output_308_0_g27154 , staticSwitch55_g27156 , temp_output_141_0_g27154);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27154 = lerpResult178_g27154;
				#else
				float4 staticSwitch259_g27154 = temp_output_308_0_g27154;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1326 = float4( float3(0,0,1) , 0.0 );
				#else
				float4 staticSwitch1326 = staticSwitch259_g27154;
				#endif
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float2 temp_output_47_0_g27153 = ddx( temp_output_10_0_g27153 );
				float2 temp_output_45_0_g27153 = ddy( temp_output_10_0_g27153 );
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float2 temp_output_47_0_g27149 = ddx( temp_output_10_0_g27149 );
				float2 temp_output_45_0_g27149 = ddy( temp_output_10_0_g27149 );
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149 );
				#endif
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult16_g27192 = lerp( lerpResult16_g27190 , staticSwitch1326 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27176 = temp_output_411_0_g27168;
				float3 objToWorld238_g27176 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27176 = (objToWorld238_g27176).xz;
				float2 temp_output_10_0_g27182 = ( temp_output_1_0_g27176 * temp_output_135_0_g27176 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27176 = temp_output_393_0_g27168;
				float temp_output_22_0_g27182 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27182 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27182 = break209_g27176.x;
				float2 temp_output_47_0_g27182 = ddx( temp_output_10_0_g27182 );
				float2 temp_output_45_0_g27182 = ddy( temp_output_10_0_g27182 );
				float4 cola53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( sin( ( floor( ( temp_output_22_0_g27182 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27182 ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float4 colb53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( temp_output_12_0_g27182 * sin( ( _Vector1 * floor( temp_output_22_0_g27182 ) ) ) ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float temp_output_32_0_g27182 = frac( temp_output_22_0_g27182 );
				float f53_g27182 = ( min( temp_output_32_0_g27182 , ( 1.0 - temp_output_32_0_g27182 ) ) * 2.0 );
				float4 localBlend53_g27182 = Blend( cola53_g27182 , colb53_g27182 , f53_g27182 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27182 = localBlend53_g27182;
				#else
				float4 staticSwitch55_g27182 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27182 );
				#endif
				float4 temp_output_308_0_g27176 = staticSwitch55_g27182;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27176 = ( temp_output_1_0_g27176 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27178 = ( temp_output_176_0_g27176 * temp_output_135_0_g27176 );
				float temp_output_22_0_g27178 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27178 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27178 = break209_g27176.x;
				float2 temp_output_47_0_g27178 = ddx( temp_output_10_0_g27178 );
				float2 temp_output_45_0_g27178 = ddy( temp_output_10_0_g27178 );
				float4 cola53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( sin( ( floor( ( temp_output_22_0_g27178 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27178 ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float4 colb53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( temp_output_12_0_g27178 * sin( ( _Vector1 * floor( temp_output_22_0_g27178 ) ) ) ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float temp_output_32_0_g27178 = frac( temp_output_22_0_g27178 );
				float f53_g27178 = ( min( temp_output_32_0_g27178 , ( 1.0 - temp_output_32_0_g27178 ) ) * 2.0 );
				float4 localBlend53_g27178 = Blend( cola53_g27178 , colb53_g27178 , f53_g27178 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27178 = localBlend53_g27178;
				#else
				float4 staticSwitch55_g27178 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27178 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27176 = temp_output_81_0_g27168;
				float4 lerpResult178_g27176 = lerp( temp_output_308_0_g27176 , staticSwitch55_g27178 , temp_output_141_0_g27176);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27176 = lerpResult178_g27176;
				#else
				float4 staticSwitch259_g27176 = temp_output_308_0_g27176;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1327 = float4( 0,0,0,0 );
				#else
				float4 staticSwitch1327 = staticSwitch259_g27176;
				#endif
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float2 temp_output_47_0_g27175 = ddx( temp_output_10_0_g27175 );
				float2 temp_output_45_0_g27175 = ddy( temp_output_10_0_g27175 );
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float2 temp_output_47_0_g27171 = ddx( temp_output_10_0_g27171 );
				float2 temp_output_45_0_g27171 = ddy( temp_output_10_0_g27171 );
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171 );
				#endif
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult16_g27194 = lerp( lerpResult16_g27192 , staticSwitch1327 , staticSwitch98_g27194);
				float4 temp_output_2258_0 = lerpResult16_g27194;
				float2 temp_cast_49 = (( _MacroTiling * 0.001 )).xx;
				float2 temp_output_1_0_g27196 = temp_cast_49;
				float3 objToWorld238_g27196 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord2.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27196 = (objToWorld238_g27196).xz;
				float2 temp_output_10_0_g27202 = ( temp_output_1_0_g27196 * temp_output_135_0_g27196 );
				float3 break209_g27196 = float3( 0.5,32,0.01 );
				float temp_output_22_0_g27202 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27202 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27202 = break209_g27196.x;
				float2 temp_output_47_0_g27202 = ddx( temp_output_10_0_g27202 );
				float2 temp_output_45_0_g27202 = ddy( temp_output_10_0_g27202 );
				float4 cola53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( sin( ( floor( ( temp_output_22_0_g27202 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27202 ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float4 colb53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( temp_output_12_0_g27202 * sin( ( _Vector1 * floor( temp_output_22_0_g27202 ) ) ) ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float temp_output_32_0_g27202 = frac( temp_output_22_0_g27202 );
				float f53_g27202 = ( min( temp_output_32_0_g27202 , ( 1.0 - temp_output_32_0_g27202 ) ) * 2.0 );
				float4 localBlend53_g27202 = Blend( cola53_g27202 , colb53_g27202 , f53_g27202 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27202 = localBlend53_g27202;
				#else
				float4 staticSwitch55_g27202 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27202 );
				#endif
				float4 temp_output_308_0_g27196 = staticSwitch55_g27202;
				float2 temp_output_176_0_g27196 = ( temp_output_1_0_g27196 * DistanceTiling489 );
				float2 temp_output_10_0_g27198 = ( temp_output_176_0_g27196 * temp_output_135_0_g27196 );
				float temp_output_22_0_g27198 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27198 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27198 = break209_g27196.x;
				float2 temp_output_47_0_g27198 = ddx( temp_output_10_0_g27198 );
				float2 temp_output_45_0_g27198 = ddy( temp_output_10_0_g27198 );
				float4 cola53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( sin( ( floor( ( temp_output_22_0_g27198 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27198 ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float4 colb53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( temp_output_12_0_g27198 * sin( ( _Vector1 * floor( temp_output_22_0_g27198 ) ) ) ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float temp_output_32_0_g27198 = frac( temp_output_22_0_g27198 );
				float f53_g27198 = ( min( temp_output_32_0_g27198 , ( 1.0 - temp_output_32_0_g27198 ) ) * 2.0 );
				float4 localBlend53_g27198 = Blend( cola53_g27198 , colb53_g27198 , f53_g27198 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27198 = localBlend53_g27198;
				#else
				float4 staticSwitch55_g27198 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27198 );
				#endif
				float temp_output_141_0_g27196 = DistanceBlend478;
				float4 lerpResult178_g27196 = lerp( temp_output_308_0_g27196 , staticSwitch55_g27198 , temp_output_141_0_g27196);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27196 = lerpResult178_g27196;
				#else
				float4 staticSwitch259_g27196 = temp_output_308_0_g27196;
				#endif
				float4 lerpResult1111 = lerp( float4( 1,1,1,0 ) , staticSwitch259_g27196 , _Contrast);
				#ifdef _MACROVARIATIONENABLED_ON
				float4 staticSwitch2218 = ( lerpResult1111 * temp_output_2258_0 );
				#else
				float4 staticSwitch2218 = temp_output_2258_0;
				#endif
				
				float2 uv_TerrainHolesTexture = IN.ase_texcoord3.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				
				float3 Albedo = staticSwitch2218.xyz;
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;

				half4 color = half4( Albedo, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
            ZTest LEqual
            ZWrite On

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 worldPos : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD1;
				#endif
				float3 worldNormal : TEXCOORD2;
				float4 worldTangent : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_Normal0);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord4 = v.vertex;
				o.ase_texcoord5.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif

				v.ase_normal = v.ase_normal;
				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 normalWS = TransformObjectToWorldNormal( v.ase_normal );
				float4 tangentWS = float4(TransformObjectToWorldDir( v.ase_tangent.xyz), v.ase_tangent.w);
				float4 positionCS = TransformWorldToHClip( positionWS );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				o.worldPos = positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				o.clipPos = positionCS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			half4 frag(	VertexOutput IN 
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.worldPos;
				#endif
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27139 = temp_output_411_0_g27124;
				float3 objToWorld238_g27139 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27139 = (objToWorld238_g27139).xz;
				float2 temp_output_10_0_g27145 = ( temp_output_1_0_g27139 * temp_output_135_0_g27139 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27139 = temp_output_393_0_g27124;
				float temp_output_22_0_g27145 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27145 * break209_g27139.z ) ).r * break209_g27139.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27145 = break209_g27139.x;
				float2 temp_output_47_0_g27145 = ddx( temp_output_10_0_g27145 );
				float2 temp_output_45_0_g27145 = ddy( temp_output_10_0_g27145 );
				float4 cola53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( sin( ( floor( ( temp_output_22_0_g27145 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27145 ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float4 colb53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( temp_output_12_0_g27145 * sin( ( _Vector1 * floor( temp_output_22_0_g27145 ) ) ) ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float temp_output_32_0_g27145 = frac( temp_output_22_0_g27145 );
				float f53_g27145 = ( min( temp_output_32_0_g27145 , ( 1.0 - temp_output_32_0_g27145 ) ) * 2.0 );
				float4 localBlend53_g27145 = Blend( cola53_g27145 , colb53_g27145 , f53_g27145 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27145 = localBlend53_g27145;
				#else
				float4 staticSwitch55_g27145 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27145 );
				#endif
				float4 temp_output_308_0_g27139 = staticSwitch55_g27145;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27139 = ( temp_output_1_0_g27139 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27141 = ( temp_output_176_0_g27139 * temp_output_135_0_g27139 );
				float temp_output_22_0_g27141 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27141 * break209_g27139.z ) ).r * break209_g27139.y );
				float temp_output_12_0_g27141 = break209_g27139.x;
				float2 temp_output_47_0_g27141 = ddx( temp_output_10_0_g27141 );
				float2 temp_output_45_0_g27141 = ddy( temp_output_10_0_g27141 );
				float4 cola53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( sin( ( floor( ( temp_output_22_0_g27141 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27141 ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float4 colb53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( temp_output_12_0_g27141 * sin( ( _Vector1 * floor( temp_output_22_0_g27141 ) ) ) ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float temp_output_32_0_g27141 = frac( temp_output_22_0_g27141 );
				float f53_g27141 = ( min( temp_output_32_0_g27141 , ( 1.0 - temp_output_32_0_g27141 ) ) * 2.0 );
				float4 localBlend53_g27141 = Blend( cola53_g27141 , colb53_g27141 , f53_g27141 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27141 = localBlend53_g27141;
				#else
				float4 staticSwitch55_g27141 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27141 );
				#endif
				float DistanceBlend478 = saturate( pow( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27139 = temp_output_81_0_g27124;
				float4 lerpResult178_g27139 = lerp( temp_output_308_0_g27139 , staticSwitch55_g27141 , temp_output_141_0_g27139);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27139 = lerpResult178_g27139;
				#else
				float4 staticSwitch259_g27139 = temp_output_308_0_g27139;
				#endif
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27117 = temp_output_411_0_g27102;
				float3 objToWorld238_g27117 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27117 = (objToWorld238_g27117).xz;
				float2 temp_output_10_0_g27123 = ( temp_output_1_0_g27117 * temp_output_135_0_g27117 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27117 = temp_output_393_0_g27102;
				float temp_output_22_0_g27123 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27123 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27123 = break209_g27117.x;
				float2 temp_output_47_0_g27123 = ddx( temp_output_10_0_g27123 );
				float2 temp_output_45_0_g27123 = ddy( temp_output_10_0_g27123 );
				float4 cola53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( sin( ( floor( ( temp_output_22_0_g27123 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27123 ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float4 colb53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( temp_output_12_0_g27123 * sin( ( _Vector1 * floor( temp_output_22_0_g27123 ) ) ) ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float temp_output_32_0_g27123 = frac( temp_output_22_0_g27123 );
				float f53_g27123 = ( min( temp_output_32_0_g27123 , ( 1.0 - temp_output_32_0_g27123 ) ) * 2.0 );
				float4 localBlend53_g27123 = Blend( cola53_g27123 , colb53_g27123 , f53_g27123 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27123 = localBlend53_g27123;
				#else
				float4 staticSwitch55_g27123 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27123 );
				#endif
				float4 temp_output_308_0_g27117 = staticSwitch55_g27123;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27117 = ( temp_output_1_0_g27117 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27119 = ( temp_output_176_0_g27117 * temp_output_135_0_g27117 );
				float temp_output_22_0_g27119 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27119 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27119 = break209_g27117.x;
				float2 temp_output_47_0_g27119 = ddx( temp_output_10_0_g27119 );
				float2 temp_output_45_0_g27119 = ddy( temp_output_10_0_g27119 );
				float4 cola53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( sin( ( floor( ( temp_output_22_0_g27119 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27119 ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float4 colb53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( temp_output_12_0_g27119 * sin( ( _Vector1 * floor( temp_output_22_0_g27119 ) ) ) ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float temp_output_32_0_g27119 = frac( temp_output_22_0_g27119 );
				float f53_g27119 = ( min( temp_output_32_0_g27119 , ( 1.0 - temp_output_32_0_g27119 ) ) * 2.0 );
				float4 localBlend53_g27119 = Blend( cola53_g27119 , colb53_g27119 , f53_g27119 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27119 = localBlend53_g27119;
				#else
				float4 staticSwitch55_g27119 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27119 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27117 = temp_output_81_0_g27102;
				float4 lerpResult178_g27117 = lerp( temp_output_308_0_g27117 , staticSwitch55_g27119 , temp_output_141_0_g27117);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27117 = lerpResult178_g27117;
				#else
				float4 staticSwitch259_g27117 = temp_output_308_0_g27117;
				#endif
				float2 uv_Control = IN.ase_texcoord5.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float2 temp_output_47_0_g27109 = ddx( temp_output_10_0_g27109 );
				float2 temp_output_45_0_g27109 = ddy( temp_output_10_0_g27109 );
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float2 temp_output_47_0_g27105 = ddx( temp_output_10_0_g27105 );
				float2 temp_output_45_0_g27105 = ddy( temp_output_10_0_g27105 );
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105 );
				#endif
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult17_g27190 = lerp( staticSwitch259_g27139 , staticSwitch259_g27117 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27161 = temp_output_411_0_g27146;
				float3 objToWorld238_g27161 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27161 = (objToWorld238_g27161).xz;
				float2 temp_output_10_0_g27167 = ( temp_output_1_0_g27161 * temp_output_135_0_g27161 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27161 = temp_output_393_0_g27146;
				float temp_output_22_0_g27167 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27167 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27167 = break209_g27161.x;
				float2 temp_output_47_0_g27167 = ddx( temp_output_10_0_g27167 );
				float2 temp_output_45_0_g27167 = ddy( temp_output_10_0_g27167 );
				float4 cola53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( sin( ( floor( ( temp_output_22_0_g27167 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27167 ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float4 colb53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( temp_output_12_0_g27167 * sin( ( _Vector1 * floor( temp_output_22_0_g27167 ) ) ) ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float temp_output_32_0_g27167 = frac( temp_output_22_0_g27167 );
				float f53_g27167 = ( min( temp_output_32_0_g27167 , ( 1.0 - temp_output_32_0_g27167 ) ) * 2.0 );
				float4 localBlend53_g27167 = Blend( cola53_g27167 , colb53_g27167 , f53_g27167 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27167 = localBlend53_g27167;
				#else
				float4 staticSwitch55_g27167 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27167 );
				#endif
				float4 temp_output_308_0_g27161 = staticSwitch55_g27167;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27161 = ( temp_output_1_0_g27161 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27163 = ( temp_output_176_0_g27161 * temp_output_135_0_g27161 );
				float temp_output_22_0_g27163 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27163 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27163 = break209_g27161.x;
				float2 temp_output_47_0_g27163 = ddx( temp_output_10_0_g27163 );
				float2 temp_output_45_0_g27163 = ddy( temp_output_10_0_g27163 );
				float4 cola53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( sin( ( floor( ( temp_output_22_0_g27163 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27163 ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float4 colb53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( temp_output_12_0_g27163 * sin( ( _Vector1 * floor( temp_output_22_0_g27163 ) ) ) ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float temp_output_32_0_g27163 = frac( temp_output_22_0_g27163 );
				float f53_g27163 = ( min( temp_output_32_0_g27163 , ( 1.0 - temp_output_32_0_g27163 ) ) * 2.0 );
				float4 localBlend53_g27163 = Blend( cola53_g27163 , colb53_g27163 , f53_g27163 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27163 = localBlend53_g27163;
				#else
				float4 staticSwitch55_g27163 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27163 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27161 = temp_output_81_0_g27146;
				float4 lerpResult178_g27161 = lerp( temp_output_308_0_g27161 , staticSwitch55_g27163 , temp_output_141_0_g27161);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27161 = lerpResult178_g27161;
				#else
				float4 staticSwitch259_g27161 = temp_output_308_0_g27161;
				#endif
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float2 temp_output_47_0_g27153 = ddx( temp_output_10_0_g27153 );
				float2 temp_output_45_0_g27153 = ddy( temp_output_10_0_g27153 );
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float2 temp_output_47_0_g27149 = ddx( temp_output_10_0_g27149 );
				float2 temp_output_45_0_g27149 = ddy( temp_output_10_0_g27149 );
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149 );
				#endif
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult17_g27192 = lerp( lerpResult17_g27190 , staticSwitch259_g27161 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27183 = temp_output_411_0_g27168;
				float3 objToWorld238_g27183 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27183 = (objToWorld238_g27183).xz;
				float2 temp_output_10_0_g27189 = ( temp_output_1_0_g27183 * temp_output_135_0_g27183 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27183 = temp_output_393_0_g27168;
				float temp_output_22_0_g27189 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27189 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27189 = break209_g27183.x;
				float2 temp_output_47_0_g27189 = ddx( temp_output_10_0_g27189 );
				float2 temp_output_45_0_g27189 = ddy( temp_output_10_0_g27189 );
				float4 cola53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( sin( ( floor( ( temp_output_22_0_g27189 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27189 ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float4 colb53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( temp_output_12_0_g27189 * sin( ( _Vector1 * floor( temp_output_22_0_g27189 ) ) ) ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float temp_output_32_0_g27189 = frac( temp_output_22_0_g27189 );
				float f53_g27189 = ( min( temp_output_32_0_g27189 , ( 1.0 - temp_output_32_0_g27189 ) ) * 2.0 );
				float4 localBlend53_g27189 = Blend( cola53_g27189 , colb53_g27189 , f53_g27189 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27189 = localBlend53_g27189;
				#else
				float4 staticSwitch55_g27189 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27189 );
				#endif
				float4 temp_output_308_0_g27183 = staticSwitch55_g27189;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27183 = ( temp_output_1_0_g27183 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27185 = ( temp_output_176_0_g27183 * temp_output_135_0_g27183 );
				float temp_output_22_0_g27185 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27185 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27185 = break209_g27183.x;
				float2 temp_output_47_0_g27185 = ddx( temp_output_10_0_g27185 );
				float2 temp_output_45_0_g27185 = ddy( temp_output_10_0_g27185 );
				float4 cola53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( sin( ( floor( ( temp_output_22_0_g27185 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27185 ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float4 colb53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( temp_output_12_0_g27185 * sin( ( _Vector1 * floor( temp_output_22_0_g27185 ) ) ) ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float temp_output_32_0_g27185 = frac( temp_output_22_0_g27185 );
				float f53_g27185 = ( min( temp_output_32_0_g27185 , ( 1.0 - temp_output_32_0_g27185 ) ) * 2.0 );
				float4 localBlend53_g27185 = Blend( cola53_g27185 , colb53_g27185 , f53_g27185 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27185 = localBlend53_g27185;
				#else
				float4 staticSwitch55_g27185 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27185 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27183 = temp_output_81_0_g27168;
				float4 lerpResult178_g27183 = lerp( temp_output_308_0_g27183 , staticSwitch55_g27185 , temp_output_141_0_g27183);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27183 = lerpResult178_g27183;
				#else
				float4 staticSwitch259_g27183 = temp_output_308_0_g27183;
				#endif
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord4.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float2 temp_output_47_0_g27175 = ddx( temp_output_10_0_g27175 );
				float2 temp_output_45_0_g27175 = ddy( temp_output_10_0_g27175 );
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float2 temp_output_47_0_g27171 = ddx( temp_output_10_0_g27171 );
				float2 temp_output_45_0_g27171 = ddy( temp_output_10_0_g27171 );
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171 );
				#endif
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult17_g27194 = lerp( lerpResult17_g27192 , staticSwitch259_g27183 , staticSwitch98_g27194);
				
				float2 uv_TerrainHolesTexture = IN.ase_texcoord5.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				float3 Normal = UnpackNormalScale( lerpResult17_g27194, 1.0 );
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
				outputDepth = DepthValue;
				#endif
				
				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					return half4(packedNormalWS, 0.0);
				#else
					
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif

					return half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif
			}
			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }
			
			Blend One Zero, One Zero
			ColorMask RGBA
			

			HLSLPROGRAM
			
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

			
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			
			#pragma multi_compile _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile _ _REFLECTION_PROBE_BOX_PROJECTION

			#pragma multi_compile _ _SHADOWS_SOFT
			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile _ _RENDER_PASS_ENABLED

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/UnityInstancing.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"


			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
			    #define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma shader_feature_local _MACROVARIATIONENABLED_ON
			#pragma shader_feature_local _PREVIEWSPLATMAP_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 lightmapUVOrVertexSH : TEXCOORD0;
				half4 fogFactorAndVertexLight : TEXCOORD1;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef _TRANSMISSION_ASE
				float _TransmissionShadow;
			#endif
			#ifdef _TRANSLUCENCY_ASE
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_Splat0);
			TEXTURE2D(_Splat1);
			TEXTURE2D(_Splat2);
			TEXTURE2D(_Splat3);
			TEXTURE2D(_MacroTexture);
			TEXTURE2D(_Sampler1942423);
			TEXTURE2D(_Normal0);
			TEXTURE2D(_Normal1);
			TEXTURE2D(_Normal2);
			TEXTURE2D(_Normal3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord8 = v.vertex;
				o.ase_texcoord9.xy = v.texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord9.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				float3 positionVS = TransformWorldToView( positionWS );
				float4 positionCS = TransformWorldToHClip( positionWS );

				VertexNormalInputs normalInput = GetVertexNormalInputs( v.ase_normal, v.ase_tangent );

				o.tSpace0 = float4( normalInput.normalWS, positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, positionWS.z);

				OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#if defined(DYNAMICLIGHTMAP_ON)
				o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord;
					o.lightmapUVOrVertexSH.xy = v.texcoord * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( positionWS, normalInput.normalWS );
				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( positionCS.z );
				#else
					half fogFactor = 0;
				#endif
				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);
				
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				VertexPositionInputs vertexInput = (VertexPositionInputs)0;
				vertexInput.positionWS = positionWS;
				vertexInput.positionCS = positionCS;
				o.shadowCoord = GetShadowCoord( vertexInput );
				#endif
				
				o.clipPos = positionCS;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				o.screenPos = ComputeScreenPos(positionCS);
				#endif
				return o;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE)
				#define ASE_SV_DEPTH SV_DepthLessEqual  
			#else
				#define ASE_SV_DEPTH SV_Depth
			#endif
			FragmentOutput frag ( VertexOutput IN 
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.clipPos.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif
				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif


	
				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27132 = temp_output_411_0_g27124;
				float3 objToWorld238_g27132 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27132 = (objToWorld238_g27132).xz;
				float2 temp_output_10_0_g27138 = ( temp_output_1_0_g27132 * temp_output_135_0_g27132 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27132 = temp_output_393_0_g27124;
				float temp_output_22_0_g27138 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27138 * break209_g27132.z ) ).r * break209_g27132.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27138 = break209_g27132.x;
				float2 temp_output_47_0_g27138 = ddx( temp_output_10_0_g27138 );
				float2 temp_output_45_0_g27138 = ddy( temp_output_10_0_g27138 );
				float4 cola53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( sin( ( floor( ( temp_output_22_0_g27138 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27138 ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float4 colb53_g27138 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27138 + ( temp_output_12_0_g27138 * sin( ( _Vector1 * floor( temp_output_22_0_g27138 ) ) ) ) ), temp_output_47_0_g27138, temp_output_45_0_g27138 );
				float temp_output_32_0_g27138 = frac( temp_output_22_0_g27138 );
				float f53_g27138 = ( min( temp_output_32_0_g27138 , ( 1.0 - temp_output_32_0_g27138 ) ) * 2.0 );
				float4 localBlend53_g27138 = Blend( cola53_g27138 , colb53_g27138 , f53_g27138 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27138 = localBlend53_g27138;
				#else
				float4 staticSwitch55_g27138 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27138 );
				#endif
				float4 temp_output_308_0_g27132 = staticSwitch55_g27138;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27132 = ( temp_output_1_0_g27132 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27134 = ( temp_output_176_0_g27132 * temp_output_135_0_g27132 );
				float temp_output_22_0_g27134 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27134 * break209_g27132.z ) ).r * break209_g27132.y );
				float temp_output_12_0_g27134 = break209_g27132.x;
				float2 temp_output_47_0_g27134 = ddx( temp_output_10_0_g27134 );
				float2 temp_output_45_0_g27134 = ddy( temp_output_10_0_g27134 );
				float4 cola53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( sin( ( floor( ( temp_output_22_0_g27134 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27134 ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float4 colb53_g27134 = SAMPLE_TEXTURE2D_GRAD( _Splat0, sampler_linear_repeat, ( temp_output_10_0_g27134 + ( temp_output_12_0_g27134 * sin( ( _Vector1 * floor( temp_output_22_0_g27134 ) ) ) ) ), temp_output_47_0_g27134, temp_output_45_0_g27134 );
				float temp_output_32_0_g27134 = frac( temp_output_22_0_g27134 );
				float f53_g27134 = ( min( temp_output_32_0_g27134 , ( 1.0 - temp_output_32_0_g27134 ) ) * 2.0 );
				float4 localBlend53_g27134 = Blend( cola53_g27134 , colb53_g27134 , f53_g27134 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27134 = localBlend53_g27134;
				#else
				float4 staticSwitch55_g27134 = SAMPLE_TEXTURE2D( _Splat0, sampler_linear_repeat, temp_output_10_0_g27134 );
				#endif
				float DistanceBlend478 = saturate( pow( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27132 = temp_output_81_0_g27124;
				float4 lerpResult178_g27132 = lerp( temp_output_308_0_g27132 , staticSwitch55_g27134 , temp_output_141_0_g27132);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27132 = lerpResult178_g27132;
				#else
				float4 staticSwitch259_g27132 = temp_output_308_0_g27132;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1325 = float4( float3(1,0,0) , 0.0 );
				#else
				float4 staticSwitch1325 = staticSwitch259_g27132;
				#endif
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27110 = temp_output_411_0_g27102;
				float3 objToWorld238_g27110 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27110 = (objToWorld238_g27110).xz;
				float2 temp_output_10_0_g27116 = ( temp_output_1_0_g27110 * temp_output_135_0_g27110 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27110 = temp_output_393_0_g27102;
				float temp_output_22_0_g27116 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27116 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27116 = break209_g27110.x;
				float2 temp_output_47_0_g27116 = ddx( temp_output_10_0_g27116 );
				float2 temp_output_45_0_g27116 = ddy( temp_output_10_0_g27116 );
				float4 cola53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( sin( ( floor( ( temp_output_22_0_g27116 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27116 ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float4 colb53_g27116 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27116 + ( temp_output_12_0_g27116 * sin( ( _Vector1 * floor( temp_output_22_0_g27116 ) ) ) ) ), temp_output_47_0_g27116, temp_output_45_0_g27116 );
				float temp_output_32_0_g27116 = frac( temp_output_22_0_g27116 );
				float f53_g27116 = ( min( temp_output_32_0_g27116 , ( 1.0 - temp_output_32_0_g27116 ) ) * 2.0 );
				float4 localBlend53_g27116 = Blend( cola53_g27116 , colb53_g27116 , f53_g27116 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27116 = localBlend53_g27116;
				#else
				float4 staticSwitch55_g27116 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27116 );
				#endif
				float4 temp_output_308_0_g27110 = staticSwitch55_g27116;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27110 = ( temp_output_1_0_g27110 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27112 = ( temp_output_176_0_g27110 * temp_output_135_0_g27110 );
				float temp_output_22_0_g27112 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27112 * break209_g27110.z ) ).r * break209_g27110.y );
				float temp_output_12_0_g27112 = break209_g27110.x;
				float2 temp_output_47_0_g27112 = ddx( temp_output_10_0_g27112 );
				float2 temp_output_45_0_g27112 = ddy( temp_output_10_0_g27112 );
				float4 cola53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( sin( ( floor( ( temp_output_22_0_g27112 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27112 ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float4 colb53_g27112 = SAMPLE_TEXTURE2D_GRAD( _Splat1, sampler_linear_repeat, ( temp_output_10_0_g27112 + ( temp_output_12_0_g27112 * sin( ( _Vector1 * floor( temp_output_22_0_g27112 ) ) ) ) ), temp_output_47_0_g27112, temp_output_45_0_g27112 );
				float temp_output_32_0_g27112 = frac( temp_output_22_0_g27112 );
				float f53_g27112 = ( min( temp_output_32_0_g27112 , ( 1.0 - temp_output_32_0_g27112 ) ) * 2.0 );
				float4 localBlend53_g27112 = Blend( cola53_g27112 , colb53_g27112 , f53_g27112 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27112 = localBlend53_g27112;
				#else
				float4 staticSwitch55_g27112 = SAMPLE_TEXTURE2D( _Splat1, sampler_linear_repeat, temp_output_10_0_g27112 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27110 = temp_output_81_0_g27102;
				float4 lerpResult178_g27110 = lerp( temp_output_308_0_g27110 , staticSwitch55_g27112 , temp_output_141_0_g27110);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27110 = lerpResult178_g27110;
				#else
				float4 staticSwitch259_g27110 = temp_output_308_0_g27110;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1328 = float4( float3(0,1,0) , 0.0 );
				#else
				float4 staticSwitch1328 = staticSwitch259_g27110;
				#endif
				float2 uv_Control = IN.ase_texcoord9.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D( _Control, sampler_Control, uv_Control );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float2 temp_output_47_0_g27109 = ddx( temp_output_10_0_g27109 );
				float2 temp_output_45_0_g27109 = ddy( temp_output_10_0_g27109 );
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), temp_output_47_0_g27109, temp_output_45_0_g27109 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ) ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float2 temp_output_47_0_g27105 = ddx( temp_output_10_0_g27105 );
				float2 temp_output_45_0_g27105 = ddy( temp_output_10_0_g27105 );
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_GRAD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), temp_output_47_0_g27105, temp_output_45_0_g27105 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105 );
				#endif
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult16_g27190 = lerp( staticSwitch1325 , staticSwitch1328 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27154 = temp_output_411_0_g27146;
				float3 objToWorld238_g27154 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27154 = (objToWorld238_g27154).xz;
				float2 temp_output_10_0_g27160 = ( temp_output_1_0_g27154 * temp_output_135_0_g27154 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27154 = temp_output_393_0_g27146;
				float temp_output_22_0_g27160 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27160 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27160 = break209_g27154.x;
				float2 temp_output_47_0_g27160 = ddx( temp_output_10_0_g27160 );
				float2 temp_output_45_0_g27160 = ddy( temp_output_10_0_g27160 );
				float4 cola53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( sin( ( floor( ( temp_output_22_0_g27160 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27160 ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float4 colb53_g27160 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27160 + ( temp_output_12_0_g27160 * sin( ( _Vector1 * floor( temp_output_22_0_g27160 ) ) ) ) ), temp_output_47_0_g27160, temp_output_45_0_g27160 );
				float temp_output_32_0_g27160 = frac( temp_output_22_0_g27160 );
				float f53_g27160 = ( min( temp_output_32_0_g27160 , ( 1.0 - temp_output_32_0_g27160 ) ) * 2.0 );
				float4 localBlend53_g27160 = Blend( cola53_g27160 , colb53_g27160 , f53_g27160 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27160 = localBlend53_g27160;
				#else
				float4 staticSwitch55_g27160 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27160 );
				#endif
				float4 temp_output_308_0_g27154 = staticSwitch55_g27160;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27154 = ( temp_output_1_0_g27154 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27156 = ( temp_output_176_0_g27154 * temp_output_135_0_g27154 );
				float temp_output_22_0_g27156 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27156 * break209_g27154.z ) ).r * break209_g27154.y );
				float temp_output_12_0_g27156 = break209_g27154.x;
				float2 temp_output_47_0_g27156 = ddx( temp_output_10_0_g27156 );
				float2 temp_output_45_0_g27156 = ddy( temp_output_10_0_g27156 );
				float4 cola53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( sin( ( floor( ( temp_output_22_0_g27156 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27156 ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float4 colb53_g27156 = SAMPLE_TEXTURE2D_GRAD( _Splat2, sampler_linear_repeat, ( temp_output_10_0_g27156 + ( temp_output_12_0_g27156 * sin( ( _Vector1 * floor( temp_output_22_0_g27156 ) ) ) ) ), temp_output_47_0_g27156, temp_output_45_0_g27156 );
				float temp_output_32_0_g27156 = frac( temp_output_22_0_g27156 );
				float f53_g27156 = ( min( temp_output_32_0_g27156 , ( 1.0 - temp_output_32_0_g27156 ) ) * 2.0 );
				float4 localBlend53_g27156 = Blend( cola53_g27156 , colb53_g27156 , f53_g27156 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27156 = localBlend53_g27156;
				#else
				float4 staticSwitch55_g27156 = SAMPLE_TEXTURE2D( _Splat2, sampler_linear_repeat, temp_output_10_0_g27156 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27154 = temp_output_81_0_g27146;
				float4 lerpResult178_g27154 = lerp( temp_output_308_0_g27154 , staticSwitch55_g27156 , temp_output_141_0_g27154);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27154 = lerpResult178_g27154;
				#else
				float4 staticSwitch259_g27154 = temp_output_308_0_g27154;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1326 = float4( float3(0,0,1) , 0.0 );
				#else
				float4 staticSwitch1326 = staticSwitch259_g27154;
				#endif
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float2 temp_output_47_0_g27153 = ddx( temp_output_10_0_g27153 );
				float2 temp_output_45_0_g27153 = ddy( temp_output_10_0_g27153 );
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), temp_output_47_0_g27153, temp_output_45_0_g27153 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ) ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float2 temp_output_47_0_g27149 = ddx( temp_output_10_0_g27149 );
				float2 temp_output_45_0_g27149 = ddy( temp_output_10_0_g27149 );
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_GRAD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), temp_output_47_0_g27149, temp_output_45_0_g27149 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149 );
				#endif
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult16_g27192 = lerp( lerpResult16_g27190 , staticSwitch1326 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27176 = temp_output_411_0_g27168;
				float3 objToWorld238_g27176 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27176 = (objToWorld238_g27176).xz;
				float2 temp_output_10_0_g27182 = ( temp_output_1_0_g27176 * temp_output_135_0_g27176 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27176 = temp_output_393_0_g27168;
				float temp_output_22_0_g27182 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27182 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27182 = break209_g27176.x;
				float2 temp_output_47_0_g27182 = ddx( temp_output_10_0_g27182 );
				float2 temp_output_45_0_g27182 = ddy( temp_output_10_0_g27182 );
				float4 cola53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( sin( ( floor( ( temp_output_22_0_g27182 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27182 ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float4 colb53_g27182 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27182 + ( temp_output_12_0_g27182 * sin( ( _Vector1 * floor( temp_output_22_0_g27182 ) ) ) ) ), temp_output_47_0_g27182, temp_output_45_0_g27182 );
				float temp_output_32_0_g27182 = frac( temp_output_22_0_g27182 );
				float f53_g27182 = ( min( temp_output_32_0_g27182 , ( 1.0 - temp_output_32_0_g27182 ) ) * 2.0 );
				float4 localBlend53_g27182 = Blend( cola53_g27182 , colb53_g27182 , f53_g27182 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27182 = localBlend53_g27182;
				#else
				float4 staticSwitch55_g27182 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27182 );
				#endif
				float4 temp_output_308_0_g27176 = staticSwitch55_g27182;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27176 = ( temp_output_1_0_g27176 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27178 = ( temp_output_176_0_g27176 * temp_output_135_0_g27176 );
				float temp_output_22_0_g27178 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27178 * break209_g27176.z ) ).r * break209_g27176.y );
				float temp_output_12_0_g27178 = break209_g27176.x;
				float2 temp_output_47_0_g27178 = ddx( temp_output_10_0_g27178 );
				float2 temp_output_45_0_g27178 = ddy( temp_output_10_0_g27178 );
				float4 cola53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( sin( ( floor( ( temp_output_22_0_g27178 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27178 ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float4 colb53_g27178 = SAMPLE_TEXTURE2D_GRAD( _Splat3, sampler_linear_repeat, ( temp_output_10_0_g27178 + ( temp_output_12_0_g27178 * sin( ( _Vector1 * floor( temp_output_22_0_g27178 ) ) ) ) ), temp_output_47_0_g27178, temp_output_45_0_g27178 );
				float temp_output_32_0_g27178 = frac( temp_output_22_0_g27178 );
				float f53_g27178 = ( min( temp_output_32_0_g27178 , ( 1.0 - temp_output_32_0_g27178 ) ) * 2.0 );
				float4 localBlend53_g27178 = Blend( cola53_g27178 , colb53_g27178 , f53_g27178 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27178 = localBlend53_g27178;
				#else
				float4 staticSwitch55_g27178 = SAMPLE_TEXTURE2D( _Splat3, sampler_linear_repeat, temp_output_10_0_g27178 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27176 = temp_output_81_0_g27168;
				float4 lerpResult178_g27176 = lerp( temp_output_308_0_g27176 , staticSwitch55_g27178 , temp_output_141_0_g27176);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27176 = lerpResult178_g27176;
				#else
				float4 staticSwitch259_g27176 = temp_output_308_0_g27176;
				#endif
				#ifdef _PREVIEWSPLATMAP_ON
				float4 staticSwitch1327 = float4( 0,0,0,0 );
				#else
				float4 staticSwitch1327 = staticSwitch259_g27176;
				#endif
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float2 temp_output_47_0_g27175 = ddx( temp_output_10_0_g27175 );
				float2 temp_output_45_0_g27175 = ddy( temp_output_10_0_g27175 );
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), temp_output_47_0_g27175, temp_output_45_0_g27175 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ) ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float2 temp_output_47_0_g27171 = ddx( temp_output_10_0_g27171 );
				float2 temp_output_45_0_g27171 = ddy( temp_output_10_0_g27171 );
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_GRAD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), temp_output_47_0_g27171, temp_output_45_0_g27171 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171 );
				#endif
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult16_g27194 = lerp( lerpResult16_g27192 , staticSwitch1327 , staticSwitch98_g27194);
				float4 temp_output_2258_0 = lerpResult16_g27194;
				float2 temp_cast_49 = (( _MacroTiling * 0.001 )).xx;
				float2 temp_output_1_0_g27196 = temp_cast_49;
				float3 objToWorld238_g27196 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27196 = (objToWorld238_g27196).xz;
				float2 temp_output_10_0_g27202 = ( temp_output_1_0_g27196 * temp_output_135_0_g27196 );
				float3 break209_g27196 = float3( 0.5,32,0.01 );
				float temp_output_22_0_g27202 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27202 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27202 = break209_g27196.x;
				float2 temp_output_47_0_g27202 = ddx( temp_output_10_0_g27202 );
				float2 temp_output_45_0_g27202 = ddy( temp_output_10_0_g27202 );
				float4 cola53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( sin( ( floor( ( temp_output_22_0_g27202 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27202 ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float4 colb53_g27202 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27202 + ( temp_output_12_0_g27202 * sin( ( _Vector1 * floor( temp_output_22_0_g27202 ) ) ) ) ), temp_output_47_0_g27202, temp_output_45_0_g27202 );
				float temp_output_32_0_g27202 = frac( temp_output_22_0_g27202 );
				float f53_g27202 = ( min( temp_output_32_0_g27202 , ( 1.0 - temp_output_32_0_g27202 ) ) * 2.0 );
				float4 localBlend53_g27202 = Blend( cola53_g27202 , colb53_g27202 , f53_g27202 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27202 = localBlend53_g27202;
				#else
				float4 staticSwitch55_g27202 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27202 );
				#endif
				float4 temp_output_308_0_g27196 = staticSwitch55_g27202;
				float2 temp_output_176_0_g27196 = ( temp_output_1_0_g27196 * DistanceTiling489 );
				float2 temp_output_10_0_g27198 = ( temp_output_176_0_g27196 * temp_output_135_0_g27196 );
				float temp_output_22_0_g27198 = ( SAMPLE_TEXTURE2D( _Sampler1942423, sampler_linear_repeat, ( temp_output_10_0_g27198 * break209_g27196.z ) ).r * break209_g27196.y );
				float temp_output_12_0_g27198 = break209_g27196.x;
				float2 temp_output_47_0_g27198 = ddx( temp_output_10_0_g27198 );
				float2 temp_output_45_0_g27198 = ddy( temp_output_10_0_g27198 );
				float4 cola53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( sin( ( floor( ( temp_output_22_0_g27198 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27198 ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float4 colb53_g27198 = SAMPLE_TEXTURE2D_GRAD( _MacroTexture, sampler_linear_repeat, ( temp_output_10_0_g27198 + ( temp_output_12_0_g27198 * sin( ( _Vector1 * floor( temp_output_22_0_g27198 ) ) ) ) ), temp_output_47_0_g27198, temp_output_45_0_g27198 );
				float temp_output_32_0_g27198 = frac( temp_output_22_0_g27198 );
				float f53_g27198 = ( min( temp_output_32_0_g27198 , ( 1.0 - temp_output_32_0_g27198 ) ) * 2.0 );
				float4 localBlend53_g27198 = Blend( cola53_g27198 , colb53_g27198 , f53_g27198 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27198 = localBlend53_g27198;
				#else
				float4 staticSwitch55_g27198 = SAMPLE_TEXTURE2D( _MacroTexture, sampler_linear_repeat, temp_output_10_0_g27198 );
				#endif
				float temp_output_141_0_g27196 = DistanceBlend478;
				float4 lerpResult178_g27196 = lerp( temp_output_308_0_g27196 , staticSwitch55_g27198 , temp_output_141_0_g27196);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27196 = lerpResult178_g27196;
				#else
				float4 staticSwitch259_g27196 = temp_output_308_0_g27196;
				#endif
				float4 lerpResult1111 = lerp( float4( 1,1,1,0 ) , staticSwitch259_g27196 , _Contrast);
				#ifdef _MACROVARIATIONENABLED_ON
				float4 staticSwitch2218 = ( lerpResult1111 * temp_output_2258_0 );
				#else
				float4 staticSwitch2218 = temp_output_2258_0;
				#endif
				
				float2 temp_output_1_0_g27139 = temp_output_411_0_g27124;
				float3 objToWorld238_g27139 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27139 = (objToWorld238_g27139).xz;
				float2 temp_output_10_0_g27145 = ( temp_output_1_0_g27139 * temp_output_135_0_g27139 );
				float3 break209_g27139 = temp_output_393_0_g27124;
				float temp_output_22_0_g27145 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27145 * break209_g27139.z ) ).r * break209_g27139.y );
				float temp_output_12_0_g27145 = break209_g27139.x;
				float2 temp_output_47_0_g27145 = ddx( temp_output_10_0_g27145 );
				float2 temp_output_45_0_g27145 = ddy( temp_output_10_0_g27145 );
				float4 cola53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( sin( ( floor( ( temp_output_22_0_g27145 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27145 ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float4 colb53_g27145 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27145 + ( temp_output_12_0_g27145 * sin( ( _Vector1 * floor( temp_output_22_0_g27145 ) ) ) ) ), temp_output_47_0_g27145, temp_output_45_0_g27145 );
				float temp_output_32_0_g27145 = frac( temp_output_22_0_g27145 );
				float f53_g27145 = ( min( temp_output_32_0_g27145 , ( 1.0 - temp_output_32_0_g27145 ) ) * 2.0 );
				float4 localBlend53_g27145 = Blend( cola53_g27145 , colb53_g27145 , f53_g27145 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27145 = localBlend53_g27145;
				#else
				float4 staticSwitch55_g27145 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27145 );
				#endif
				float4 temp_output_308_0_g27139 = staticSwitch55_g27145;
				float2 temp_output_176_0_g27139 = ( temp_output_1_0_g27139 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27141 = ( temp_output_176_0_g27139 * temp_output_135_0_g27139 );
				float temp_output_22_0_g27141 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27141 * break209_g27139.z ) ).r * break209_g27139.y );
				float temp_output_12_0_g27141 = break209_g27139.x;
				float2 temp_output_47_0_g27141 = ddx( temp_output_10_0_g27141 );
				float2 temp_output_45_0_g27141 = ddy( temp_output_10_0_g27141 );
				float4 cola53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( sin( ( floor( ( temp_output_22_0_g27141 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27141 ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float4 colb53_g27141 = SAMPLE_TEXTURE2D_GRAD( _Normal0, sampler_linear_repeat, ( temp_output_10_0_g27141 + ( temp_output_12_0_g27141 * sin( ( _Vector1 * floor( temp_output_22_0_g27141 ) ) ) ) ), temp_output_47_0_g27141, temp_output_45_0_g27141 );
				float temp_output_32_0_g27141 = frac( temp_output_22_0_g27141 );
				float f53_g27141 = ( min( temp_output_32_0_g27141 , ( 1.0 - temp_output_32_0_g27141 ) ) * 2.0 );
				float4 localBlend53_g27141 = Blend( cola53_g27141 , colb53_g27141 , f53_g27141 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27141 = localBlend53_g27141;
				#else
				float4 staticSwitch55_g27141 = SAMPLE_TEXTURE2D( _Normal0, sampler_linear_repeat, temp_output_10_0_g27141 );
				#endif
				float temp_output_141_0_g27139 = temp_output_81_0_g27124;
				float4 lerpResult178_g27139 = lerp( temp_output_308_0_g27139 , staticSwitch55_g27141 , temp_output_141_0_g27139);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27139 = lerpResult178_g27139;
				#else
				float4 staticSwitch259_g27139 = temp_output_308_0_g27139;
				#endif
				float2 temp_output_1_0_g27117 = temp_output_411_0_g27102;
				float3 objToWorld238_g27117 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27117 = (objToWorld238_g27117).xz;
				float2 temp_output_10_0_g27123 = ( temp_output_1_0_g27117 * temp_output_135_0_g27117 );
				float3 break209_g27117 = temp_output_393_0_g27102;
				float temp_output_22_0_g27123 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27123 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27123 = break209_g27117.x;
				float2 temp_output_47_0_g27123 = ddx( temp_output_10_0_g27123 );
				float2 temp_output_45_0_g27123 = ddy( temp_output_10_0_g27123 );
				float4 cola53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( sin( ( floor( ( temp_output_22_0_g27123 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27123 ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float4 colb53_g27123 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27123 + ( temp_output_12_0_g27123 * sin( ( _Vector1 * floor( temp_output_22_0_g27123 ) ) ) ) ), temp_output_47_0_g27123, temp_output_45_0_g27123 );
				float temp_output_32_0_g27123 = frac( temp_output_22_0_g27123 );
				float f53_g27123 = ( min( temp_output_32_0_g27123 , ( 1.0 - temp_output_32_0_g27123 ) ) * 2.0 );
				float4 localBlend53_g27123 = Blend( cola53_g27123 , colb53_g27123 , f53_g27123 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27123 = localBlend53_g27123;
				#else
				float4 staticSwitch55_g27123 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27123 );
				#endif
				float4 temp_output_308_0_g27117 = staticSwitch55_g27123;
				float2 temp_output_176_0_g27117 = ( temp_output_1_0_g27117 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27119 = ( temp_output_176_0_g27117 * temp_output_135_0_g27117 );
				float temp_output_22_0_g27119 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27119 * break209_g27117.z ) ).r * break209_g27117.y );
				float temp_output_12_0_g27119 = break209_g27117.x;
				float2 temp_output_47_0_g27119 = ddx( temp_output_10_0_g27119 );
				float2 temp_output_45_0_g27119 = ddy( temp_output_10_0_g27119 );
				float4 cola53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( sin( ( floor( ( temp_output_22_0_g27119 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27119 ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float4 colb53_g27119 = SAMPLE_TEXTURE2D_GRAD( _Normal1, sampler_linear_repeat, ( temp_output_10_0_g27119 + ( temp_output_12_0_g27119 * sin( ( _Vector1 * floor( temp_output_22_0_g27119 ) ) ) ) ), temp_output_47_0_g27119, temp_output_45_0_g27119 );
				float temp_output_32_0_g27119 = frac( temp_output_22_0_g27119 );
				float f53_g27119 = ( min( temp_output_32_0_g27119 , ( 1.0 - temp_output_32_0_g27119 ) ) * 2.0 );
				float4 localBlend53_g27119 = Blend( cola53_g27119 , colb53_g27119 , f53_g27119 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27119 = localBlend53_g27119;
				#else
				float4 staticSwitch55_g27119 = SAMPLE_TEXTURE2D( _Normal1, sampler_linear_repeat, temp_output_10_0_g27119 );
				#endif
				float temp_output_141_0_g27117 = temp_output_81_0_g27102;
				float4 lerpResult178_g27117 = lerp( temp_output_308_0_g27117 , staticSwitch55_g27119 , temp_output_141_0_g27117);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27117 = lerpResult178_g27117;
				#else
				float4 staticSwitch259_g27117 = temp_output_308_0_g27117;
				#endif
				float4 lerpResult17_g27190 = lerp( staticSwitch259_g27139 , staticSwitch259_g27117 , staticSwitch98_g27190);
				float2 temp_output_1_0_g27161 = temp_output_411_0_g27146;
				float3 objToWorld238_g27161 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27161 = (objToWorld238_g27161).xz;
				float2 temp_output_10_0_g27167 = ( temp_output_1_0_g27161 * temp_output_135_0_g27161 );
				float3 break209_g27161 = temp_output_393_0_g27146;
				float temp_output_22_0_g27167 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27167 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27167 = break209_g27161.x;
				float2 temp_output_47_0_g27167 = ddx( temp_output_10_0_g27167 );
				float2 temp_output_45_0_g27167 = ddy( temp_output_10_0_g27167 );
				float4 cola53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( sin( ( floor( ( temp_output_22_0_g27167 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27167 ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float4 colb53_g27167 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27167 + ( temp_output_12_0_g27167 * sin( ( _Vector1 * floor( temp_output_22_0_g27167 ) ) ) ) ), temp_output_47_0_g27167, temp_output_45_0_g27167 );
				float temp_output_32_0_g27167 = frac( temp_output_22_0_g27167 );
				float f53_g27167 = ( min( temp_output_32_0_g27167 , ( 1.0 - temp_output_32_0_g27167 ) ) * 2.0 );
				float4 localBlend53_g27167 = Blend( cola53_g27167 , colb53_g27167 , f53_g27167 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27167 = localBlend53_g27167;
				#else
				float4 staticSwitch55_g27167 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27167 );
				#endif
				float4 temp_output_308_0_g27161 = staticSwitch55_g27167;
				float2 temp_output_176_0_g27161 = ( temp_output_1_0_g27161 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27163 = ( temp_output_176_0_g27161 * temp_output_135_0_g27161 );
				float temp_output_22_0_g27163 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27163 * break209_g27161.z ) ).r * break209_g27161.y );
				float temp_output_12_0_g27163 = break209_g27161.x;
				float2 temp_output_47_0_g27163 = ddx( temp_output_10_0_g27163 );
				float2 temp_output_45_0_g27163 = ddy( temp_output_10_0_g27163 );
				float4 cola53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( sin( ( floor( ( temp_output_22_0_g27163 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27163 ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float4 colb53_g27163 = SAMPLE_TEXTURE2D_GRAD( _Normal2, sampler_linear_repeat, ( temp_output_10_0_g27163 + ( temp_output_12_0_g27163 * sin( ( _Vector1 * floor( temp_output_22_0_g27163 ) ) ) ) ), temp_output_47_0_g27163, temp_output_45_0_g27163 );
				float temp_output_32_0_g27163 = frac( temp_output_22_0_g27163 );
				float f53_g27163 = ( min( temp_output_32_0_g27163 , ( 1.0 - temp_output_32_0_g27163 ) ) * 2.0 );
				float4 localBlend53_g27163 = Blend( cola53_g27163 , colb53_g27163 , f53_g27163 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27163 = localBlend53_g27163;
				#else
				float4 staticSwitch55_g27163 = SAMPLE_TEXTURE2D( _Normal2, sampler_linear_repeat, temp_output_10_0_g27163 );
				#endif
				float temp_output_141_0_g27161 = temp_output_81_0_g27146;
				float4 lerpResult178_g27161 = lerp( temp_output_308_0_g27161 , staticSwitch55_g27163 , temp_output_141_0_g27161);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27161 = lerpResult178_g27161;
				#else
				float4 staticSwitch259_g27161 = temp_output_308_0_g27161;
				#endif
				float4 lerpResult17_g27192 = lerp( lerpResult17_g27190 , staticSwitch259_g27161 , staticSwitch98_g27192);
				float2 temp_output_1_0_g27183 = temp_output_411_0_g27168;
				float3 objToWorld238_g27183 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27183 = (objToWorld238_g27183).xz;
				float2 temp_output_10_0_g27189 = ( temp_output_1_0_g27183 * temp_output_135_0_g27183 );
				float3 break209_g27183 = temp_output_393_0_g27168;
				float temp_output_22_0_g27189 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27189 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27189 = break209_g27183.x;
				float2 temp_output_47_0_g27189 = ddx( temp_output_10_0_g27189 );
				float2 temp_output_45_0_g27189 = ddy( temp_output_10_0_g27189 );
				float4 cola53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( sin( ( floor( ( temp_output_22_0_g27189 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27189 ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float4 colb53_g27189 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27189 + ( temp_output_12_0_g27189 * sin( ( _Vector1 * floor( temp_output_22_0_g27189 ) ) ) ) ), temp_output_47_0_g27189, temp_output_45_0_g27189 );
				float temp_output_32_0_g27189 = frac( temp_output_22_0_g27189 );
				float f53_g27189 = ( min( temp_output_32_0_g27189 , ( 1.0 - temp_output_32_0_g27189 ) ) * 2.0 );
				float4 localBlend53_g27189 = Blend( cola53_g27189 , colb53_g27189 , f53_g27189 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27189 = localBlend53_g27189;
				#else
				float4 staticSwitch55_g27189 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27189 );
				#endif
				float4 temp_output_308_0_g27183 = staticSwitch55_g27189;
				float2 temp_output_176_0_g27183 = ( temp_output_1_0_g27183 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27185 = ( temp_output_176_0_g27183 * temp_output_135_0_g27183 );
				float temp_output_22_0_g27185 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27185 * break209_g27183.z ) ).r * break209_g27183.y );
				float temp_output_12_0_g27185 = break209_g27183.x;
				float2 temp_output_47_0_g27185 = ddx( temp_output_10_0_g27185 );
				float2 temp_output_45_0_g27185 = ddy( temp_output_10_0_g27185 );
				float4 cola53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( sin( ( floor( ( temp_output_22_0_g27185 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27185 ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float4 colb53_g27185 = SAMPLE_TEXTURE2D_GRAD( _Normal3, sampler_linear_repeat, ( temp_output_10_0_g27185 + ( temp_output_12_0_g27185 * sin( ( _Vector1 * floor( temp_output_22_0_g27185 ) ) ) ) ), temp_output_47_0_g27185, temp_output_45_0_g27185 );
				float temp_output_32_0_g27185 = frac( temp_output_22_0_g27185 );
				float f53_g27185 = ( min( temp_output_32_0_g27185 , ( 1.0 - temp_output_32_0_g27185 ) ) * 2.0 );
				float4 localBlend53_g27185 = Blend( cola53_g27185 , colb53_g27185 , f53_g27185 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27185 = localBlend53_g27185;
				#else
				float4 staticSwitch55_g27185 = SAMPLE_TEXTURE2D( _Normal3, sampler_linear_repeat, temp_output_10_0_g27185 );
				#endif
				float temp_output_141_0_g27183 = temp_output_81_0_g27168;
				float4 lerpResult178_g27183 = lerp( temp_output_308_0_g27183 , staticSwitch55_g27185 , temp_output_141_0_g27183);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27183 = lerpResult178_g27183;
				#else
				float4 staticSwitch259_g27183 = temp_output_308_0_g27183;
				#endif
				float4 lerpResult17_g27194 = lerp( lerpResult17_g27192 , staticSwitch259_g27183 , staticSwitch98_g27194);
				
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( IN.ase_texcoord8.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ) ).r * break209_g27125.y );
				float temp_output_12_0_g27131 = break209_g27125.x;
				float2 temp_output_47_0_g27131 = ddx( temp_output_10_0_g27131 );
				float2 temp_output_45_0_g27131 = ddy( temp_output_10_0_g27131 );
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), temp_output_47_0_g27131, temp_output_45_0_g27131 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), temp_output_47_0_g27131, temp_output_45_0_g27131 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ) ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float2 temp_output_47_0_g27127 = ddx( temp_output_10_0_g27127 );
				float2 temp_output_45_0_g27127 = ddy( temp_output_10_0_g27127 );
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), temp_output_47_0_g27127, temp_output_45_0_g27127 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_GRAD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), temp_output_47_0_g27127, temp_output_45_0_g27127 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127 );
				#endif
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				
				float2 uv_TerrainHolesTexture = IN.ase_texcoord9.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				float3 Albedo = staticSwitch2218.xyz;
				float3 Normal = UnpackNormalScale( lerpResult17_g27194, 1.0 );
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = ( 1.0 - break106.y );
				float Occlusion = break106.z;
				float Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;
				#ifdef ASE_DEPTH_WRITE_ON
				float DepthValue = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = IN.clipPos;
				inputData.shadowCoord = ShadowCoords;



				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
					inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
					inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
					inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif
					
				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );



				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(WorldPosition, 1.0),  IN.fogFactorAndVertexLight.x);
				#endif

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				

				#ifdef _ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.clipPos);
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(IN.clipPos,
						Albedo,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(Albedo, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;
				
				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif
				
				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif
				
				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif
				
				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb);
			}

			ENDHLSL
		}

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

        Pass
        {
			
            Name "SceneSelectionPass"
            Tags { "LightMode"="SceneSelectionPass" }
        
			Cull Off

			HLSLPROGRAM
        
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1

        
			#pragma only_renderers d3d11 glcore gles gles3 
			#pragma vertex vert
			#pragma fragment frag

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
        
			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

			int _ObjectId;
			int _PassValue;

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};
        
			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				o.clipPos = TransformWorldToHClip(positionWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif
			
			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_TerrainHolesTexture = IN.ase_texcoord.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				surfaceDescription.Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				surfaceDescription.AlphaClipThreshold = 0.5;


				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				return outColor;
			}

			ENDHLSL
        }

		UsePass "Hidden/Nature/Terrain/Utilities/PICKING"
	UsePass "Hidden/Nature/Terrain/Utilities/SELECTION"

        Pass
        {
			
            Name "ScenePickingPass"
            Tags { "LightMode"="Picking" }
        
			HLSLPROGRAM

			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define TESSELLATION_ON 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_DISTANCE_TESSELLATION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 999999
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma only_renderers d3d11 glcore gles gles3 
			#pragma vertex vert
			#pragma fragment frag

        
			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY
			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"
        
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _DETILEENABLED_ON
			#pragma shader_feature_local _DISTANCEBLENDENABLED_ON
			#pragma shader_feature_local _HEIGHTBLENDENABLED_ON
			#pragma shader_feature_local _DISPLACEMENTENABLED_ON
			#pragma multi_compile_instancing
			#pragma instancing_options assumeuniformscaling nomatrices nolightprobe nolightmap forwardadd


			struct VertexInput
			{
				float4 vertex : POSITION;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 clipPos : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
        
			CBUFFER_START(UnityPerMaterial)
			float4 _TerrainHolesTexture_ST;
			float4 _Splat3_ST;
			float4 _Splat2_ST;
			float4 _Control_ST;
			float4 _Splat1_ST;
			float4 _LayerDisplacement;
			float4 _Splat0_ST;
			float _MacroTiling;
			float _HeightBlendFalloff;
			float _HeightBlendMultiplier;
			float _DistanceBlendFalloff;
			float _BlendDistance;
			float _DistanceTiling;
			float _DetileBlend;
			float _DetileRegionCount;
			float _DetileOffset;
			float _TessellationMaxDistance;
			float _H_Macro;
			float _H_Debug;
			float _H_Tessellation;
			float _TessellationMinDistance;
			int _TextureImportSettings;
			float _H_Detile;
			float _MaxTessellation;
			float _H_Distance_Blend;
			float _H_HeightBlend;
			float _Contrast;
			float _H_Displacement;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_Mask0);
			SAMPLER(sampler_linear_repeat);
			TEXTURE2D(_DetileNoise);
			TEXTURE2D(_Mask1);
			TEXTURE2D(_Control);
			SAMPLER(sampler_Control);
			TEXTURE2D(_Mask2);
			TEXTURE2D(_Mask3);
			TEXTURE2D(_TerrainHolesTexture);
			SAMPLER(sampler_TerrainHolesTexture);
			#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
				TEXTURE2D(_TerrainHeightmapTexture);//ASE Terrain Instancing
				TEXTURE2D( _TerrainNormalmapTexture);//ASE Terrain Instancing
				SAMPLER(sampler_TerrainNormalmapTexture);//ASE Terrain Instancing
			#endif//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_START( Terrain )//ASE Terrain Instancing
				UNITY_DEFINE_INSTANCED_PROP( float4, _TerrainPatchInstanceData )//ASE Terrain Instancing
			UNITY_INSTANCING_BUFFER_END( Terrain)//ASE Terrain Instancing
			CBUFFER_START( UnityTerrain)//ASE Terrain Instancing
				#ifdef UNITY_INSTANCING_ENABLED//ASE Terrain Instancing
					float4 _TerrainHeightmapRecipSize;//ASE Terrain Instancing
					float4 _TerrainHeightmapScale;//ASE Terrain Instancing
				#endif//ASE Terrain Instancing
			CBUFFER_END//ASE Terrain Instancing


			float4 Blend( float4 cola, float4 colb, float f )
			{
				float4 sub = cola - colb;
				float sum = sub.x + sub.y + sub.z;
				float t = smoothstep(0.2, 0.8, f-0.1*sum);
				float4 blend = lerp(cola, colb, t);
				return blend;
			}
			
			VertexInput ApplyMeshModification( VertexInput v )
			{
			#ifdef UNITY_INSTANCING_ENABLED
				float2 patchVertex = v.vertex.xy;
				float4 instanceData = UNITY_ACCESS_INSTANCED_PROP( Terrain, _TerrainPatchInstanceData );
				float2 sampleCoords = ( patchVertex.xy + instanceData.xy ) * instanceData.z;
				float height = UnpackHeightmap( _TerrainHeightmapTexture.Load( int3( sampleCoords, 0 ) ) );
				v.vertex.xz = sampleCoords* _TerrainHeightmapScale.xz;
				v.vertex.y = height* _TerrainHeightmapScale.y;
				#ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
					v.ase_normal = float3(0, 1, 0);
				#else
					v.ase_normal = _TerrainNormalmapTexture.Load(int3(sampleCoords, 0)).rgb* 2 - 1;
				#endif
				v.ase_texcoord.xy = sampleCoords* _TerrainHeightmapRecipSize.zw;
			#endif
				return v;
			}
			

        
			float4 _SelectionID;

        
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};
        
			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);


				v = ApplyMeshModification(v);
				float4 break18_g27124 = _Splat0_ST;
				float2 appendResult16_g27124 = (float2(break18_g27124.x , break18_g27124.y));
				float2 temp_output_411_0_g27124 = ( appendResult16_g27124 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27125 = temp_output_411_0_g27124;
				float3 objToWorld238_g27125 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27125 = (objToWorld238_g27125).xz;
				float2 temp_output_10_0_g27131 = ( temp_output_1_0_g27125 * temp_output_135_0_g27125 );
				float3 appendResult1698 = (float3(_DetileOffset , _DetileRegionCount , _DetileBlend));
				float3 temp_output_393_0_g27124 = appendResult1698;
				float3 break209_g27125 = temp_output_393_0_g27124;
				float temp_output_22_0_g27131 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27131 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float2 _Vector1 = float2(3,7);
				float temp_output_12_0_g27131 = break209_g27125.x;
				float4 cola53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( sin( ( floor( ( temp_output_22_0_g27131 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27131 ) ), 0.0 );
				float4 colb53_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27131 + ( temp_output_12_0_g27131 * sin( ( _Vector1 * floor( temp_output_22_0_g27131 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27131 = frac( temp_output_22_0_g27131 );
				float f53_g27131 = ( min( temp_output_32_0_g27131 , ( 1.0 - temp_output_32_0_g27131 ) ) * 2.0 );
				float4 localBlend53_g27131 = Blend( cola53_g27131 , colb53_g27131 , f53_g27131 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27131 = localBlend53_g27131;
				#else
				float4 staticSwitch55_g27131 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27131, 0.0 );
				#endif
				float4 temp_output_308_0_g27125 = staticSwitch55_g27131;
				float DistanceTiling489 = _DistanceTiling;
				float temp_output_85_0_g27124 = DistanceTiling489;
				float2 temp_output_176_0_g27125 = ( temp_output_1_0_g27125 * temp_output_85_0_g27124 );
				float2 temp_output_10_0_g27127 = ( temp_output_176_0_g27125 * temp_output_135_0_g27125 );
				float temp_output_22_0_g27127 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27127 * break209_g27125.z ), 0.0 ).r * break209_g27125.y );
				float temp_output_12_0_g27127 = break209_g27125.x;
				float4 cola53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( sin( ( floor( ( temp_output_22_0_g27127 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27127 ) ), 0.0 );
				float4 colb53_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, ( temp_output_10_0_g27127 + ( temp_output_12_0_g27127 * sin( ( _Vector1 * floor( temp_output_22_0_g27127 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27127 = frac( temp_output_22_0_g27127 );
				float f53_g27127 = ( min( temp_output_32_0_g27127 , ( 1.0 - temp_output_32_0_g27127 ) ) * 2.0 );
				float4 localBlend53_g27127 = Blend( cola53_g27127 , colb53_g27127 , f53_g27127 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27127 = localBlend53_g27127;
				#else
				float4 staticSwitch55_g27127 = SAMPLE_TEXTURE2D_LOD( _Mask0, sampler_linear_repeat, temp_output_10_0_g27127, 0.0 );
				#endif
				float3 ase_worldPos = mul(GetObjectToWorldMatrix(), v.vertex).xyz;
				float DistanceBlend478 = saturate( pow( ( distance( ase_worldPos , _WorldSpaceCameraPos ) / _BlendDistance ) , _DistanceBlendFalloff ) );
				float temp_output_81_0_g27124 = DistanceBlend478;
				float temp_output_141_0_g27125 = temp_output_81_0_g27124;
				float4 lerpResult178_g27125 = lerp( temp_output_308_0_g27125 , staticSwitch55_g27127 , temp_output_141_0_g27125);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27125 = lerpResult178_g27125;
				#else
				float4 staticSwitch259_g27125 = temp_output_308_0_g27125;
				#endif
				float4 temp_output_461_0_g27124 = staticSwitch259_g27125;
				float4 appendResult142_g27124 = (float4((temp_output_461_0_g27124).rgb , ( (temp_output_461_0_g27124).r * _LayerDisplacement.x )));
				float4 break18_g27102 = _Splat1_ST;
				float2 appendResult16_g27102 = (float2(break18_g27102.x , break18_g27102.y));
				float2 temp_output_411_0_g27102 = ( appendResult16_g27102 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27103 = temp_output_411_0_g27102;
				float3 objToWorld238_g27103 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27103 = (objToWorld238_g27103).xz;
				float2 temp_output_10_0_g27109 = ( temp_output_1_0_g27103 * temp_output_135_0_g27103 );
				float3 temp_output_393_0_g27102 = appendResult1698;
				float3 break209_g27103 = temp_output_393_0_g27102;
				float temp_output_22_0_g27109 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27109 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27109 = break209_g27103.x;
				float4 cola53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( sin( ( floor( ( temp_output_22_0_g27109 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27109 ) ), 0.0 );
				float4 colb53_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27109 + ( temp_output_12_0_g27109 * sin( ( _Vector1 * floor( temp_output_22_0_g27109 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27109 = frac( temp_output_22_0_g27109 );
				float f53_g27109 = ( min( temp_output_32_0_g27109 , ( 1.0 - temp_output_32_0_g27109 ) ) * 2.0 );
				float4 localBlend53_g27109 = Blend( cola53_g27109 , colb53_g27109 , f53_g27109 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27109 = localBlend53_g27109;
				#else
				float4 staticSwitch55_g27109 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27109, 0.0 );
				#endif
				float4 temp_output_308_0_g27103 = staticSwitch55_g27109;
				float temp_output_85_0_g27102 = DistanceTiling489;
				float2 temp_output_176_0_g27103 = ( temp_output_1_0_g27103 * temp_output_85_0_g27102 );
				float2 temp_output_10_0_g27105 = ( temp_output_176_0_g27103 * temp_output_135_0_g27103 );
				float temp_output_22_0_g27105 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27105 * break209_g27103.z ), 0.0 ).r * break209_g27103.y );
				float temp_output_12_0_g27105 = break209_g27103.x;
				float4 cola53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( sin( ( floor( ( temp_output_22_0_g27105 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27105 ) ), 0.0 );
				float4 colb53_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, ( temp_output_10_0_g27105 + ( temp_output_12_0_g27105 * sin( ( _Vector1 * floor( temp_output_22_0_g27105 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27105 = frac( temp_output_22_0_g27105 );
				float f53_g27105 = ( min( temp_output_32_0_g27105 , ( 1.0 - temp_output_32_0_g27105 ) ) * 2.0 );
				float4 localBlend53_g27105 = Blend( cola53_g27105 , colb53_g27105 , f53_g27105 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27105 = localBlend53_g27105;
				#else
				float4 staticSwitch55_g27105 = SAMPLE_TEXTURE2D_LOD( _Mask1, sampler_linear_repeat, temp_output_10_0_g27105, 0.0 );
				#endif
				float temp_output_81_0_g27102 = DistanceBlend478;
				float temp_output_141_0_g27103 = temp_output_81_0_g27102;
				float4 lerpResult178_g27103 = lerp( temp_output_308_0_g27103 , staticSwitch55_g27105 , temp_output_141_0_g27103);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27103 = lerpResult178_g27103;
				#else
				float4 staticSwitch259_g27103 = temp_output_308_0_g27103;
				#endif
				float4 temp_output_461_0_g27102 = staticSwitch259_g27103;
				float4 appendResult142_g27102 = (float4((temp_output_461_0_g27102).rgb , ( (temp_output_461_0_g27102).r * _LayerDisplacement.y )));
				float4 temp_output_15_0_g27190 = appendResult142_g27102;
				float2 uv_Control = v.ase_texcoord.xy * _Control_ST.xy + _Control_ST.zw;
				float4 break1310 = SAMPLE_TEXTURE2D_LOD( _Control, sampler_Control, uv_Control, 0.0 );
				float SplatWeight161 = break1310.g;
				float temp_output_9_0_g27190 = SplatWeight161;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27190 = saturate( pow( ( ( temp_output_9_0_g27190 * temp_output_15_0_g27190.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27190 = temp_output_9_0_g27190;
				#endif
				float4 lerpResult18_g27190 = lerp( appendResult142_g27124 , temp_output_15_0_g27190 , staticSwitch98_g27190);
				float4 break18_g27146 = _Splat2_ST;
				float2 appendResult16_g27146 = (float2(break18_g27146.x , break18_g27146.y));
				float2 temp_output_411_0_g27146 = ( appendResult16_g27146 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27147 = temp_output_411_0_g27146;
				float3 objToWorld238_g27147 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27147 = (objToWorld238_g27147).xz;
				float2 temp_output_10_0_g27153 = ( temp_output_1_0_g27147 * temp_output_135_0_g27147 );
				float3 temp_output_393_0_g27146 = appendResult1698;
				float3 break209_g27147 = temp_output_393_0_g27146;
				float temp_output_22_0_g27153 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27153 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27153 = break209_g27147.x;
				float4 cola53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( sin( ( floor( ( temp_output_22_0_g27153 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27153 ) ), 0.0 );
				float4 colb53_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27153 + ( temp_output_12_0_g27153 * sin( ( _Vector1 * floor( temp_output_22_0_g27153 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27153 = frac( temp_output_22_0_g27153 );
				float f53_g27153 = ( min( temp_output_32_0_g27153 , ( 1.0 - temp_output_32_0_g27153 ) ) * 2.0 );
				float4 localBlend53_g27153 = Blend( cola53_g27153 , colb53_g27153 , f53_g27153 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27153 = localBlend53_g27153;
				#else
				float4 staticSwitch55_g27153 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27153, 0.0 );
				#endif
				float4 temp_output_308_0_g27147 = staticSwitch55_g27153;
				float temp_output_85_0_g27146 = DistanceTiling489;
				float2 temp_output_176_0_g27147 = ( temp_output_1_0_g27147 * temp_output_85_0_g27146 );
				float2 temp_output_10_0_g27149 = ( temp_output_176_0_g27147 * temp_output_135_0_g27147 );
				float temp_output_22_0_g27149 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27149 * break209_g27147.z ), 0.0 ).r * break209_g27147.y );
				float temp_output_12_0_g27149 = break209_g27147.x;
				float4 cola53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( sin( ( floor( ( temp_output_22_0_g27149 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27149 ) ), 0.0 );
				float4 colb53_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, ( temp_output_10_0_g27149 + ( temp_output_12_0_g27149 * sin( ( _Vector1 * floor( temp_output_22_0_g27149 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27149 = frac( temp_output_22_0_g27149 );
				float f53_g27149 = ( min( temp_output_32_0_g27149 , ( 1.0 - temp_output_32_0_g27149 ) ) * 2.0 );
				float4 localBlend53_g27149 = Blend( cola53_g27149 , colb53_g27149 , f53_g27149 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27149 = localBlend53_g27149;
				#else
				float4 staticSwitch55_g27149 = SAMPLE_TEXTURE2D_LOD( _Mask2, sampler_linear_repeat, temp_output_10_0_g27149, 0.0 );
				#endif
				float temp_output_81_0_g27146 = DistanceBlend478;
				float temp_output_141_0_g27147 = temp_output_81_0_g27146;
				float4 lerpResult178_g27147 = lerp( temp_output_308_0_g27147 , staticSwitch55_g27149 , temp_output_141_0_g27147);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27147 = lerpResult178_g27147;
				#else
				float4 staticSwitch259_g27147 = temp_output_308_0_g27147;
				#endif
				float4 temp_output_461_0_g27146 = staticSwitch259_g27147;
				float4 appendResult142_g27146 = (float4((temp_output_461_0_g27146).rgb , ( (temp_output_461_0_g27146).r * _LayerDisplacement.z )));
				float4 temp_output_15_0_g27192 = appendResult142_g27146;
				float SplatWeight262 = break1310.b;
				float temp_output_9_0_g27192 = SplatWeight262;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27192 = saturate( pow( ( ( temp_output_9_0_g27192 * temp_output_15_0_g27192.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27192 = temp_output_9_0_g27192;
				#endif
				float4 lerpResult18_g27192 = lerp( lerpResult18_g27190 , temp_output_15_0_g27192 , staticSwitch98_g27192);
				float4 break18_g27168 = _Splat3_ST;
				float2 appendResult16_g27168 = (float2(break18_g27168.x , break18_g27168.y));
				float2 temp_output_411_0_g27168 = ( appendResult16_g27168 * float2( 0.001,0.001 ) );
				float2 temp_output_1_0_g27169 = temp_output_411_0_g27168;
				float3 objToWorld238_g27169 = mul( GetObjectToWorldMatrix(), float4( v.vertex.xyz, 1 ) ).xyz;
				float2 temp_output_135_0_g27169 = (objToWorld238_g27169).xz;
				float2 temp_output_10_0_g27175 = ( temp_output_1_0_g27169 * temp_output_135_0_g27169 );
				float3 temp_output_393_0_g27168 = appendResult1698;
				float3 break209_g27169 = temp_output_393_0_g27168;
				float temp_output_22_0_g27175 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27175 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27175 = break209_g27169.x;
				float4 cola53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( sin( ( floor( ( temp_output_22_0_g27175 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27175 ) ), 0.0 );
				float4 colb53_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27175 + ( temp_output_12_0_g27175 * sin( ( _Vector1 * floor( temp_output_22_0_g27175 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27175 = frac( temp_output_22_0_g27175 );
				float f53_g27175 = ( min( temp_output_32_0_g27175 , ( 1.0 - temp_output_32_0_g27175 ) ) * 2.0 );
				float4 localBlend53_g27175 = Blend( cola53_g27175 , colb53_g27175 , f53_g27175 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27175 = localBlend53_g27175;
				#else
				float4 staticSwitch55_g27175 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27175, 0.0 );
				#endif
				float4 temp_output_308_0_g27169 = staticSwitch55_g27175;
				float temp_output_85_0_g27168 = DistanceTiling489;
				float2 temp_output_176_0_g27169 = ( temp_output_1_0_g27169 * temp_output_85_0_g27168 );
				float2 temp_output_10_0_g27171 = ( temp_output_176_0_g27169 * temp_output_135_0_g27169 );
				float temp_output_22_0_g27171 = ( SAMPLE_TEXTURE2D_LOD( _DetileNoise, sampler_linear_repeat, ( temp_output_10_0_g27171 * break209_g27169.z ), 0.0 ).r * break209_g27169.y );
				float temp_output_12_0_g27171 = break209_g27169.x;
				float4 cola53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( sin( ( floor( ( temp_output_22_0_g27171 + 0.5 ) ) * _Vector1 ) ) * temp_output_12_0_g27171 ) ), 0.0 );
				float4 colb53_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, ( temp_output_10_0_g27171 + ( temp_output_12_0_g27171 * sin( ( _Vector1 * floor( temp_output_22_0_g27171 ) ) ) ) ), 0.0 );
				float temp_output_32_0_g27171 = frac( temp_output_22_0_g27171 );
				float f53_g27171 = ( min( temp_output_32_0_g27171 , ( 1.0 - temp_output_32_0_g27171 ) ) * 2.0 );
				float4 localBlend53_g27171 = Blend( cola53_g27171 , colb53_g27171 , f53_g27171 );
				#ifdef _DETILEENABLED_ON
				float4 staticSwitch55_g27171 = localBlend53_g27171;
				#else
				float4 staticSwitch55_g27171 = SAMPLE_TEXTURE2D_LOD( _Mask3, sampler_linear_repeat, temp_output_10_0_g27171, 0.0 );
				#endif
				float temp_output_81_0_g27168 = DistanceBlend478;
				float temp_output_141_0_g27169 = temp_output_81_0_g27168;
				float4 lerpResult178_g27169 = lerp( temp_output_308_0_g27169 , staticSwitch55_g27171 , temp_output_141_0_g27169);
				#ifdef _DISTANCEBLENDENABLED_ON
				float4 staticSwitch259_g27169 = lerpResult178_g27169;
				#else
				float4 staticSwitch259_g27169 = temp_output_308_0_g27169;
				#endif
				float4 temp_output_461_0_g27168 = staticSwitch259_g27169;
				float4 appendResult142_g27168 = (float4((temp_output_461_0_g27168).rgb , ( (temp_output_461_0_g27168).r * _LayerDisplacement.w )));
				float4 temp_output_15_0_g27194 = appendResult142_g27168;
				float SplatWeight31315 = break1310.a;
				float temp_output_9_0_g27194 = SplatWeight31315;
				#ifdef _HEIGHTBLENDENABLED_ON
				float staticSwitch98_g27194 = saturate( pow( ( ( temp_output_9_0_g27194 * temp_output_15_0_g27194.x ) * _HeightBlendMultiplier ) , _HeightBlendFalloff ) );
				#else
				float staticSwitch98_g27194 = temp_output_9_0_g27194;
				#endif
				float4 lerpResult18_g27194 = lerp( lerpResult18_g27192 , temp_output_15_0_g27194 , staticSwitch98_g27194);
				float4 break106 = lerpResult18_g27194;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.ase_normal);
				#ifdef _DISPLACEMENTENABLED_ON
				float3 staticSwitch2259 = ( break106.w * ase_worldNormal );
				#else
				float3 staticSwitch2259 = float3( 0,0,0 );
				#endif
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = staticSwitch2259;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.ase_normal = v.ase_normal;

				float3 positionWS = TransformObjectToWorld( v.vertex.xyz );
				o.clipPos = TransformWorldToHClip(positionWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.ase_normal = v.ase_normal;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _MaxTessellation; float tessMin = _TessellationMinDistance; float tessMax = _TessellationMaxDistance;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.ase_normal = patch[0].ase_normal * bary.x + patch[1].ase_normal * bary.y + patch[2].ase_normal * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].ase_normal * (dot(o.vertex.xyz, patch[i].ase_normal) - dot(patch[i].vertex.xyz, patch[i].ase_normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_TerrainHolesTexture = IN.ase_texcoord.xy * _TerrainHolesTexture_ST.xy + _TerrainHolesTexture_ST.zw;
				
				surfaceDescription.Alpha = SAMPLE_TEXTURE2D( _TerrainHolesTexture, sampler_TerrainHolesTexture, uv_TerrainHolesTexture ).r;
				surfaceDescription.AlphaClipThreshold = 0.5;


				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;
				outColor = _SelectionID;
				
				return outColor;
			}
        
			ENDHLSL
        }
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	Fallback "Universal Render Pipeline/Terrain/Lit"
	
	Dependency "BaseMapShader"="LandscapeBasePass"

}
/*ASEBEGIN
Version=18935
2048;166.4;1920;1029;2391.491;-4049.168;1;True;False
Node;AmplifyShaderEditor.CommentaryNode;479;-2896.423,4527.818;Inherit;False;1203.282;466.3325;Distance Blend;12;488;489;462;460;478;465;461;458;459;464;463;2244;;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldPosInputsNode;458;-2777.931,4577.818;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;459;-2846.423,4733.829;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;462;-2563.578,4730.291;Inherit;False;Property;_BlendDistance;Blend Distance;117;0;Create;True;1;Distance Tiling;0;0;False;0;False;100;100;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DistanceOpNode;460;-2571.188,4580.355;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;463;-2512.253,4827.151;Inherit;False;Property;_DistanceBlendFalloff;Distance Blend Falloff;118;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;461;-2406.301,4580.355;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;464;-2243.949,4770.611;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;371;-2622.302,3538.022;Inherit;False;951.9534;381.001;Split Terrain Splatmap;6;1310;62;61;54;7;1315;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1699;-1611.061,3590.737;Inherit;False;476.3213;425.866;Detile Params;5;2245;1698;1696;1695;1697;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;488;-2096.458,4892.743;Inherit;False;Property;_DistanceTiling;Distance Tiling;119;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;465;-2070.182,4768.075;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-1561.061,3722.378;Inherit;False;Property;_DetileRegionCount;Detile Region Count;102;0;Create;True;0;0;0;False;0;False;32;24;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1695;-1561.906,3808.603;Inherit;False;Property;_DetileBlend;Detile Blend;103;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0.5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;489;-1901.458,4892.743;Inherit;False;DistanceTiling;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1696;-1562.377,3641.737;Inherit;False;Property;_DetileOffset;Detile Offset;101;0;Create;True;0;0;0;False;0;False;0.5;0.632511;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;478;-1904.14,4759.65;Inherit;False;DistanceBlend;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;7;-2391.302,3615.513;Inherit;True;Property;_Control;Control;71;1;[HideInInspector];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;367;-2608.143,1544.265;Inherit;False;939.078;1956.547;Terrain + Layer Data;16;11;49;47;45;48;50;44;73;76;74;75;78;79;80;81;43;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;373;-1564.943,1545.731;Inherit;False;702.8053;1988.248;Sample Layers;9;504;505;503;502;501;500;499;498;1332;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;48;-2387.633,2123.202;Inherit;True;Property;_Splat1;Splat1;74;1;[HideInInspector];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;500;-1428.901,2361.312;Inherit;False;478;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;11;-2544.269,1594.265;Inherit;False;Property;_Splat0_ST;Splat0_ST;72;1;[HideInInspector];Create;True;0;0;0;False;0;False;0,0,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1474;-1513.951,1443.698;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1310;-2050.377,3622.586;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.Vector4Node;50;-2558.143,2058.576;Inherit;False;Property;_Splat1_ST;Splat1_ST;77;1;[HideInInspector];Create;True;0;0;0;False;0;False;0,0,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;45;-1933.754,1829.181;Inherit;True;Property;_Mask0;Mask0;84;2;[HideInInspector];[Gamma];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;47;-2164.48,2202.154;Inherit;True;Property;_Normal1;Normal1;81;2;[HideInInspector];[Normal];Create;True;0;0;0;False;0;False;None;None;False;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;44;-2154.063,1749.343;Inherit;True;Property;_Normal0;Normal0;80;2;[HideInInspector];[Normal];Create;True;0;0;0;False;0;False;None;None;False;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;43;-2379.687,1671.12;Inherit;True;Property;_Splat0;Splat0;73;1;[HideInInspector];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;1622;-1702.06,2365.131;Inherit;True;Property;_DetileNoise;Detile Noise;100;1;[SingleLineTexture];Create;True;1;Detiling;0;0;False;0;False;None;c5d7973bb84a122479e0e4a03b1315a8;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;501;-1424.46,2445.222;Inherit;False;489;DistanceTiling;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;498;-1430.121,1906.357;Inherit;False;478;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;-1425.68,1990.267;Inherit;False;489;DistanceTiling;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;49;-1941.626,2273.166;Inherit;True;Property;_Mask1;Mask1;85;2;[HideInInspector];[Gamma];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.DynamicAppendNode;1698;-1301.739,3643.615;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;2413;-1697.198,2077.213;Inherit;False;Property;_LayerDisplacement;Layer Displacement;114;0;Create;True;0;0;0;False;0;False;0.1,0.15,0.25,0.4;0.1,0.15,0.25,0.4;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;503;-1420.46,2915.222;Inherit;False;489;DistanceTiling;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;74;-2150.464,2647.594;Inherit;True;Property;_Normal2;Normal2;82;2;[HideInInspector];[Normal];Create;True;0;0;0;False;0;False;None;None;False;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.Vector3Node;1331;-914.0562,2044.561;Inherit;False;Constant;_Vector0;Vector 0;44;0;Create;True;0;0;0;False;0;False;0,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;61;-1883.349,3689.023;Inherit;False;SplatWeight1;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;374;-739.101,1925.214;Inherit;False;617.9043;1491.259;Blend Layers;7;88;91;231;1327;1326;1713;2256;;1,1,1,1;0;0
Node;AmplifyShaderEditor.Vector3Node;1330;-860.6677,1677.842;Inherit;False;Constant;_Vector3;Vector 3;44;0;Create;True;0;0;0;False;0;False;1,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TexturePropertyNode;75;-2373.619,2568.641;Inherit;True;Property;_Splat2;Splat2;79;1;[HideInInspector];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;73;-1927.61,2718.606;Inherit;True;Property;_Mask2;Mask2;86;2;[HideInInspector];[Gamma];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.FunctionNode;2419;-1203.067,1595.731;Inherit;False;SampleSplat;19;;27124;228b21ae142af414892d5b093a5814a6;0;10;377;SAMPLER2D;0;False;323;SAMPLERSTATE;0;False;11;FLOAT4;0,0,0,0;False;8;SAMPLER2D;0,0,0,0;False;9;SAMPLER2D;0,0,0,0;False;10;SAMPLER2D;0,0,0,0;False;62;FLOAT;0;False;81;FLOAT;0;False;85;FLOAT;0;False;393;FLOAT3;0.5,32,0.01;False;3;COLOR;0;COLOR;1;FLOAT4;2
Node;AmplifyShaderEditor.FunctionNode;2420;-1200.7,2056.806;Inherit;False;SampleSplat;19;;27102;228b21ae142af414892d5b093a5814a6;0;10;377;SAMPLER2D;0;False;323;SAMPLERSTATE;0;False;11;FLOAT4;0,0,0,0;False;8;SAMPLER2D;0,0,0,0;False;9;SAMPLER2D;0,0,0,0;False;10;SAMPLER2D;0,0,0,0;False;62;FLOAT;0;False;81;FLOAT;0;False;85;FLOAT;0;False;393;FLOAT3;0.5,32,0.01;False;3;COLOR;0;COLOR;1;FLOAT4;2
Node;AmplifyShaderEditor.GetLocalVarNode;502;-1424.901,2831.312;Inherit;False;478;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;76;-2544.128,2504.013;Inherit;False;Property;_Splat2_ST;Splat2_ST;75;1;[HideInInspector];Create;True;0;0;0;False;0;False;0,0,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1713;-879.6467,2261.529;Inherit;False;Property;_HeightBlendFalloff;Height Blend Falloff;106;0;Create;True;1;Height Blend;0;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;78;-1921.065,3270.812;Inherit;True;Property;_Mask3;Mask3;87;2;[HideInInspector];[Gamma];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;80;-2367.072,3117.791;Inherit;True;Property;_Splat3;Splat3;76;1;[HideInInspector];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;504;-1434.901,3348.312;Inherit;False;478;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2421;-1186.684,2502.243;Inherit;False;SampleSplat;19;;27146;228b21ae142af414892d5b093a5814a6;0;10;377;SAMPLER2D;0;False;323;SAMPLERSTATE;0;False;11;FLOAT4;0,0,0,0;False;8;SAMPLER2D;0,0,0,0;False;9;SAMPLER2D;0,0,0,0;False;10;SAMPLER2D;0,0,0,0;False;62;FLOAT;0;False;81;FLOAT;0;False;85;FLOAT;0;False;393;FLOAT3;0.5,32,0.01;False;3;COLOR;0;COLOR;1;FLOAT4;2
Node;AmplifyShaderEditor.GetLocalVarNode;88;-605.2178,2212.882;Inherit;False;61;SplatWeight1;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1328;-738.4963,2003.642;Inherit;False;Property;_PreviewSplatmap;Preview Splatmap;90;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector3Node;1332;-900.353,2500.751;Inherit;False;Constant;_Vector1;Vector 1;44;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;505;-1412.46,3447.222;Inherit;False;489;DistanceTiling;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;62;-1882.349,3762.023;Inherit;False;SplatWeight2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;79;-2143.919,3199.802;Inherit;True;Property;_Normal3;Normal3;83;2;[HideInInspector];[Normal];Create;True;0;0;0;False;0;False;None;None;False;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.StaticSwitch;1325;-689.0054,1630.368;Inherit;False;Property;_PreviewSplatmap;Preview Splatmap;90;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector4Node;81;-2537.58,3054.694;Inherit;False;Property;_Splat3_ST;Splat3_ST;78;1;[HideInInspector];Create;True;0;0;0;False;0;False;0,0,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1895;-899.2469,2351.791;Inherit;False;Property;_HeightBlendMultiplier;Height Blend Multiplier;107;0;Create;True;0;0;0;False;0;False;8;6;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1326;-729.9509,2457.735;Inherit;False;Property;_PreviewSplatmap;Preview Splatmap;38;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;2256;-381.2735,1975.214;Inherit;False;LerpSplat;17;;27190;cf8b2d7ae0d1955478ae0c0ec406d6d0;0;9;3;FLOAT4;0,0,0,0;False;10;FLOAT4;0,0,0,0;False;11;FLOAT4;0,0,0,0;False;13;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT4;0,0,0,0;False;9;FLOAT;0;False;57;FLOAT;4;False;66;FLOAT;8;False;4;FLOAT4;0;FLOAT4;1;FLOAT4;2;FLOAT;97
Node;AmplifyShaderEditor.RegisterLocalVarNode;1315;-1883.903,3840.33;Inherit;False;SplatWeight3;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;91;-589.101,2684.092;Inherit;False;62;SplatWeight2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2422;-1180.138,3052.924;Inherit;False;SampleSplat;19;;27168;228b21ae142af414892d5b093a5814a6;0;10;377;SAMPLER2D;0;False;323;SAMPLERSTATE;0;False;11;FLOAT4;0,0,0,0;False;8;SAMPLER2D;0,0,0,0;False;9;SAMPLER2D;0,0,0,0;False;10;SAMPLER2D;0,0,0,0;False;62;FLOAT;0;False;81;FLOAT;0;False;85;FLOAT;0;False;393;FLOAT3;0.5,32,0.01;False;3;COLOR;0;COLOR;1;FLOAT4;2
Node;AmplifyShaderEditor.GetLocalVarNode;231;-605.2225,3200.51;Inherit;False;1315;SplatWeight3;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1327;-722.3511,2991.535;Inherit;False;Property;_PreviewSplatmap;Preview Splatmap;38;0;Create;False;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;2257;-370.1772,2424.27;Inherit;False;LerpSplat;17;;27192;cf8b2d7ae0d1955478ae0c0ec406d6d0;0;9;3;FLOAT4;0,0,0,0;False;10;FLOAT4;0,0,0,0;False;11;FLOAT4;0,0,0,0;False;13;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT4;0,0,0,0;False;9;FLOAT;0;False;57;FLOAT;4;False;66;FLOAT;8;False;4;FLOAT4;0;FLOAT4;1;FLOAT4;2;FLOAT;97
Node;AmplifyShaderEditor.CommentaryNode;339;282.274,3643.862;Inherit;False;358.9;280;Heightmap Displacement;2;336;1238;;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;2258;-367.1967,2975.955;Inherit;False;LerpSplat;17;;27194;cf8b2d7ae0d1955478ae0c0ec406d6d0;0;9;3;FLOAT4;0,0,0,0;False;10;FLOAT4;0,0,0,0;False;11;FLOAT4;0,0,0,0;False;13;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT4;0,0,0,0;False;9;FLOAT;0;False;57;FLOAT;4;False;66;FLOAT;8;False;4;FLOAT4;0;FLOAT4;1;FLOAT4;2;FLOAT;97
Node;AmplifyShaderEditor.CommentaryNode;370;37.02581,3410.682;Inherit;False;250.2001;225.2002;Mask - Height, Rough, AO, Displacement;1;106;;1,1,1,1;0;0
Node;AmplifyShaderEditor.BreakToComponentsNode;106;87.0259,3460.682;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.WorldNormalVector;1238;319.9451,3768.325;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;337;397.6899,3449.051;Inherit;False;229;161;Rough => Smooth;1;321;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2426;-1615.13,4347.583;Inherit;False;221.6;662.5073;Headers;7;2429;2428;2427;2424;2425;2430;2431;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;372;670.8879,4431.008;Inherit;False;225;166;Alpha clip for terrain holes;1;142;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;336;495.9451,3688.325;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;362;-2030.497,3952.306;Inherit;False;357.3247;325.6575;Tessellation Inputs;3;361;358;360;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;369;-22.24686,2441.566;Inherit;False;1427.306;652.7458;Macro Texture Variation;14;1101;1092;347;296;298;299;297;1098;1104;1097;1111;1552;1553;2218;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;368;518.1045,4102.474;Inherit;False;370;280;Holes from terrain;1;150;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;449;-2013.989,4344.478;Inherit;False;326;166;Notes;1;448;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;360;-1954.172,4090.963;Inherit;False;Property;_TessellationMinDistance;Tessellation Min Distance;110;0;Create;True;0;0;0;True;0;False;20;20;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1111;1024.861,2547.882;Inherit;False;3;0;COLOR;1,1,1,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;54;-1883.349,3615.022;Inherit;False;SplatWeight0;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2244;-2024.082,4604.44;Inherit;False;Property;_DistanceBlendEnabled;Distance Blend Enabled;116;0;Create;False;0;0;0;True;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1552;63.9898,2865.254;Inherit;False;Constant;_Float1;Float 1;41;0;Create;True;0;0;0;False;0;False;0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2249;-1611.508,4043.56;Inherit;False;Property;_HeightBlendEnabled;Height Blend Enabled;105;0;Create;True;0;0;0;True;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1553;428.9574,2652.968;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;361;-1952.172,4173.962;Inherit;False;Property;_TessellationMaxDistance;Tessellation Max Distance;111;0;Create;True;0;0;0;True;0;False;50;30;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2429;-1558.949,4745.053;Inherit;False;Property;_H_Tessellation;;108;1;[Enum];Create;False;0;1;Tessellation;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2218;930.3448,2955.2;Inherit;False;Property;_MacroVariationEnabled;Macro Variation Enabled;94;0;Create;True;0;0;0;False;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;2424;-1566.13,4396.583;Inherit;False;Property;_H_Debug;;89;1;[Enum];Create;False;0;1;Debug;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;321;449.7162,3501.023;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2425;-1564.96,4487.791;Inherit;False;Property;_H_Macro;;93;1;[Enum];Create;False;0;1;Macro Variation;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2423;636.8772,2538.433;Inherit;False;DistanceBlendTriplanarSample;0;;27196;cbda2383816f9d445b8797892b34d5fe;0;7;10;SAMPLER2D;;False;194;SAMPLER2D;_Sampler1942423;False;1;FLOAT2;4,4;False;116;SAMPLERSTATE;0;False;141;FLOAT;0;False;143;FLOAT;0.2;False;208;FLOAT3;0.5,32,0.01;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1098;379.3902,2858.618;Inherit;False;489;DistanceTiling;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1104;62.85099,2783.122;Inherit;False;Property;_MacroTiling;Macro Tiling;96;0;Create;True;0;0;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2428;-1559.949,4659.053;Inherit;False;Property;_H_HeightBlend;;104;1;[Enum];Create;False;0;1;Height Blend;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;448;-1963.989,4394.478;Inherit;False;Property;_TextureImportSettings;Texture Import Settings;91;1;[Enum];Create;True;0;3;Base Color BC1;0;Normal BC5;1;Height Rough AO Metal BC7;2;0;True;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.SamplerNode;150;568.1045,4152.474;Inherit;True;Property;_TerrainHolesTexture;TerrainHolesTexture;88;1;[HideInInspector];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1097;380.1937,2767.58;Inherit;False;478;DistanceBlend;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2245;-1561.71,3894.975;Inherit;False;Property;_DetileEnabled;Detile Enabled;99;0;Create;True;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.UnpackScaleNormalNode;1076;94.59321,3206.292;Inherit;False;Tangent;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;142;720.8876,4481.009;Inherit;False;Constant;_Float0;Float 0;18;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1092;748.848,2948.854;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;2430;-1555.949,4835.053;Inherit;False;Property;_H_Displacement;;112;1;[Enum];Create;False;0;1;Displacement;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2278;-1610.589,4163.554;Inherit;False;Property;_TriplanarBlendingEnabled;Triplanar Blending Enabled;92;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2259;696.6252,3658.941;Inherit;False;Property;_DisplacementEnabled;Displacement Enabled;113;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;347;646.89,2767.208;Inherit;False;Property;_Contrast;Contrast;97;0;Create;True;1;Macro Tiling;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-1980.497,4002.306;Inherit;False;Property;_MaxTessellation;Max Tessellation;109;0;Create;True;1;Tessellation;0;0;True;0;False;16;16;1;32;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1101;57.64032,2540.399;Inherit;True;Property;_MacroTexture;Macro Texture;95;1;[SingleLineTexture];Create;True;1;Macro Variation;0;0;False;0;False;b2f7d40c463032b428272dd030f99477;b2f7d40c463032b428272dd030f99477;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;2427;-1559.698,4576.284;Inherit;False;Property;_H_Detile;;98;1;[Enum];Create;False;0;1;Detile;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2431;-1552.949,4918.053;Inherit;False;Property;_H_Distance_Blend;;115;1;[Enum];Create;False;0;1;Distance Blend;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;296;13.53281,3063.57;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;298;13.53281,3063.57;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;0;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;1258.38,3181.087;Float;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;VFS/Landscape;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;19;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;TerrainCompatible=True;True;2;True;18;all;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalForward;False;False;0;Universal Render Pipeline/Terrain/Lit;1;BaseMapShader=LandscapeBasePass;0;Standard;40;Workflow;1;0;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;637948065361963737;Transmission;0;0;  Transmission Shadow;0.5,False,-1;0;Translucency;0;0;  Translucency Strength;1,False,-1;0;  Normal Distortion;0.5,False,-1;0;  Scattering;2,False,-1;0;  Direct;0.9,False,-1;0;  Ambient;0.1,False,-1;0;  Shadow;0.5,False,-1;0;Cast Shadows;1;0;  Use Shadow Threshold;0;637939561179554897;Receive Shadows;1;0;GPU Instancing;1;637961075912650625;LOD CrossFade;1;637961075926925555;Built-in Fog;1;0;_FinalColorxAlpha;0;637939511141847185;Meta Pass;1;637961074685697297;Override Baked GI;0;0;Extra Pre Pass;0;637961075998241274;DOTS Instancing;0;0;Tessellation;1;637939374481899558;  Phong;0;637967915135103935;  Strength;0.5,False,-1;637967897970633546;  Type;1;637961975279515386;  Tess;16,True,358;637973123253538195;  Min;20,True,360;637973123321056560;  Max;50,True,361;637973123351176548;  Edge Length;16,False,-1;0;  Max Displacement;25,False,-1;0;Write Depth;0;637973227659615027;  Early Z;0;637939514771465932;Vertex Position,InvertActionOnDeselection;1;637951585174669366;Debug Display;0;637951585360588188;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;True;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;297;13.53281,3063.57;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;False;False;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;299;13.53281,3063.57;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;True;4;d3d11;glcore;gles;gles3;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;2;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;False;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;3;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;True;17;d3d9;d3d11;glcore;gles;gles3;metal;vulkan;xbox360;xboxone;xboxseries;ps4;playstation;psp2;n3ds;wiiu;switch;nomrt;0;False;True;1;1;False;-1;0;False;-1;1;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Universal2D;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
WireConnection;460;0;458;0
WireConnection;460;1;459;0
WireConnection;461;0;460;0
WireConnection;461;1;462;0
WireConnection;464;0;461;0
WireConnection;464;1;463;0
WireConnection;465;0;464;0
WireConnection;489;0;488;0
WireConnection;478;0;465;0
WireConnection;1310;0;7;0
WireConnection;1698;0;1696;0
WireConnection;1698;1;1697;0
WireConnection;1698;2;1695;0
WireConnection;61;0;1310;1
WireConnection;2419;377;1622;0
WireConnection;2419;323;1474;0
WireConnection;2419;11;11;0
WireConnection;2419;8;43;0
WireConnection;2419;9;44;0
WireConnection;2419;10;45;0
WireConnection;2419;62;2413;1
WireConnection;2419;81;498;0
WireConnection;2419;85;499;0
WireConnection;2419;393;1698;0
WireConnection;2420;377;1622;0
WireConnection;2420;323;1474;0
WireConnection;2420;11;50;0
WireConnection;2420;8;48;0
WireConnection;2420;9;47;0
WireConnection;2420;10;49;0
WireConnection;2420;62;2413;2
WireConnection;2420;81;500;0
WireConnection;2420;85;501;0
WireConnection;2420;393;1698;0
WireConnection;2421;377;1622;0
WireConnection;2421;323;1474;0
WireConnection;2421;11;76;0
WireConnection;2421;8;75;0
WireConnection;2421;9;74;0
WireConnection;2421;10;73;0
WireConnection;2421;62;2413;3
WireConnection;2421;81;502;0
WireConnection;2421;85;503;0
WireConnection;2421;393;1698;0
WireConnection;1328;1;2420;0
WireConnection;1328;0;1331;0
WireConnection;62;0;1310;2
WireConnection;1325;1;2419;0
WireConnection;1325;0;1330;0
WireConnection;1326;1;2421;0
WireConnection;1326;0;1332;0
WireConnection;2256;3;1325;0
WireConnection;2256;10;2419;1
WireConnection;2256;11;2419;2
WireConnection;2256;13;1328;0
WireConnection;2256;14;2420;1
WireConnection;2256;15;2420;2
WireConnection;2256;9;88;0
WireConnection;2256;57;1713;0
WireConnection;2256;66;1895;0
WireConnection;1315;0;1310;3
WireConnection;2422;377;1622;0
WireConnection;2422;323;1474;0
WireConnection;2422;11;81;0
WireConnection;2422;8;80;0
WireConnection;2422;9;79;0
WireConnection;2422;10;78;0
WireConnection;2422;62;2413;4
WireConnection;2422;81;504;0
WireConnection;2422;85;505;0
WireConnection;2422;393;1698;0
WireConnection;1327;1;2422;0
WireConnection;2257;3;2256;0
WireConnection;2257;10;2256;1
WireConnection;2257;11;2256;2
WireConnection;2257;13;1326;0
WireConnection;2257;14;2421;1
WireConnection;2257;15;2421;2
WireConnection;2257;9;91;0
WireConnection;2257;57;1713;0
WireConnection;2257;66;1895;0
WireConnection;2258;3;2257;0
WireConnection;2258;10;2257;1
WireConnection;2258;11;2257;2
WireConnection;2258;13;1327;0
WireConnection;2258;14;2422;1
WireConnection;2258;15;2422;2
WireConnection;2258;9;231;0
WireConnection;2258;57;1713;0
WireConnection;2258;66;1895;0
WireConnection;106;0;2258;2
WireConnection;336;0;106;3
WireConnection;336;1;1238;0
WireConnection;1111;1;2423;0
WireConnection;1111;2;347;0
WireConnection;54;0;1310;0
WireConnection;1553;0;1104;0
WireConnection;1553;1;1552;0
WireConnection;2218;1;2258;0
WireConnection;2218;0;1092;0
WireConnection;321;0;106;1
WireConnection;2423;10;1101;0
WireConnection;2423;1;1553;0
WireConnection;2423;116;1474;0
WireConnection;2423;141;1097;0
WireConnection;2423;143;1098;0
WireConnection;1076;0;2258;1
WireConnection;1092;0;1111;0
WireConnection;1092;1;2258;0
WireConnection;2259;0;336;0
WireConnection;2;0;2218;0
WireConnection;2;1;1076;0
WireConnection;2;4;321;0
WireConnection;2;5;106;2
WireConnection;2;6;150;1
WireConnection;2;7;142;0
WireConnection;2;8;2259;0
ASEEND*/
//CHKSM=B595B01FF51848A443A3BCDF3F1C9FAFEECC4D6C