uniform float time;
uniform vec3 colorTop;
uniform vec3 colorBottom;

varying vec3 vWorldPosition;

void main()
{
  vec3 pointOnSphere = normalize(vWorldPosition.xyz);
  float f = 1.0;
  if (pointOnSphere.y > - 0.2) {
    f = sin(pointOnSphere.y * 2.0);
  }
  float cycle = (sin(time / 1000.0) + 1.0) / 2.0;
  gl_FragColor = vec4(mix(colorBottom,colorTop, f * cycle), 1.0);
}
