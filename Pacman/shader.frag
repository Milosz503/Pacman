uniform sampler2D texture;
uniform float width;
uniform vec2 resolution;

void main() {
	
	vec3 light;
	light.x = resolution.x / 4.0;
	light.y = resolution.y * 3.0/4.0;
	light.z = 0.2;

	
    vec4 pixel = texture2D(texture, gl_TexCoord[0].xy);
	

	vec2 pos = gl_FragCoord.xy / resolution;
    // multiply it by the color 
	
	vec4 color = vec4(1.0, 0.0, 1.0, 1);
	
	float dist = distance(gl_FragCoord.xy,light.xy);
	
	if(dist < resolution.x / 3.0)
	{
		//pixel = (9 * pixel + color * (1.0 - dist/(light.z * res.x)))/10;
	}
	else
	{
		//pixel = (1 * pixel + color)/2;
	}
	pixel = (2 * pixel + pixel * (1.0 - dist/(light.z * resolution.x)))/3;
	gl_FragColor = gl_Color * pixel;

}