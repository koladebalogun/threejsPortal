uniform float uTime;
uniform float uPixelRatio;
uniform float uSize;

attribute float scale;

void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    modelPosition.y += sin(uTime + modelPosition.x * 100.0) * scale * 0.2;

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;
    gl_PointSize = uSize * scale * uPixelRatio;

    // Fixing the size of the fireflies depending on how close or how far the view of the camera is 
    gl_PointSize *= (1.0/ - viewPosition.z);

}