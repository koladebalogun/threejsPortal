// uniform float uTime;
// uniform float uPixelRatio;
// uniform float uSize;

// attribute float scale;
varying vec2 vUv;

void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;
    // gl_PointSize = uSize * scale * uPixelRatio;

    // Fixing the size of the fireflies depending on how close or how far the view of the camera is 
    // gl_PointSize *= (1.0/ - viewPosition.z);

    vUv = uv;

}