struct VSOutput {
@builtin(position) position: vec4<f32>,
@location(0) color: vec4<f32>
};

const positions = array<vec2<f32>,3>(
vec2( 0.0,  0.5),
vec2(-0.5, -0.5),
vec2( 0.5, -0.5)
);

const colors = array<vec3<f32>,3>(
vec3(0.0, 1.0, 1.0),
vec3(0.0, 0.0, 1.0),
vec3(1.0, 0.0, 1.0)
);

@vertex
fn main(@builtin(vertex_index) vertexIndex: u32) -> VSOutput {
return VSOutput(
  vec4(positions[vertexIndex], 0.0, 1.0),
  vec4(colors[vertexIndex], 1.0)
);
}