
Texture2D<float4>  BufferIn : register(t0);
RWTexture2D<float4>  BufferOut : register(u1);

[numthreads(16, 16, 1)]
void main(uint3 tid : SV_DispatchThreadID)
{
  float4 val = BufferIn[tid.xy];
  BufferOut[tid.xy] = val.brga;
}
