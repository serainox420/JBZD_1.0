.class Lcom/adcolony/sdk/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ak$f;,
        Lcom/adcolony/sdk/ak$e;,
        Lcom/adcolony/sdk/ak$c;,
        Lcom/adcolony/sdk/ak$d;,
        Lcom/adcolony/sdk/ak$b;,
        Lcom/adcolony/sdk/ak$a;
    }
.end annotation


# instance fields
.field a:Lcom/adcolony/sdk/ai;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ai;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compiling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    .line 31
    const v0, 0x8b31

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->b:I

    .line 32
    const v0, 0x8b30

    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->c:I

    .line 34
    const-string v0, "Vertex shader"

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/adcolony/sdk/ak;->b:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/adcolony/sdk/ak;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 37
    iget v0, p0, Lcom/adcolony/sdk/ak;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 39
    const-string v0, "Pixel shader"

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/adcolony/sdk/ak;->c:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/adcolony/sdk/ak;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 42
    iget v0, p0, Lcom/adcolony/sdk/ak;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vertex_shader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/ak;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixel_shader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/ak;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/ak;->a(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->d:I

    .line 47
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    iget v1, p0, Lcom/adcolony/sdk/ak;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 48
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    iget v1, p0, Lcom/adcolony/sdk/ak;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 50
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 52
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    const-string v1, "transform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->e:I

    .line 53
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->f:I

    .line 54
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    const-string v1, "color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->g:I

    .line 56
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->h:I

    .line 57
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    const-string v1, "uv"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/ak;->i:I

    .line 58
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const-string v0, "ADC3"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 69
    iget v0, p0, Lcom/adcolony/sdk/ak;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 71
    iget v0, p0, Lcom/adcolony/sdk/ak;->e:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v5, v5, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    iget-object v5, v5, Lcom/adcolony/sdk/at;->c:[F

    invoke-static {v0, v4, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 72
    iget-object v0, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v0, v0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 73
    iget v0, p0, Lcom/adcolony/sdk/ak;->f:I

    iget-object v4, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v5, v4, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 74
    iget v0, p0, Lcom/adcolony/sdk/ak;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 76
    iget v0, p0, Lcom/adcolony/sdk/ak;->i:I

    if-ltz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v0, v0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 79
    iget v0, p0, Lcom/adcolony/sdk/ak;->i:I

    iget-object v4, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v5, v4, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 80
    iget v0, p0, Lcom/adcolony/sdk/ak;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/adcolony/sdk/ak;->g:I

    if-ltz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v0, v0, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    iget v0, p0, Lcom/adcolony/sdk/ak;->g:I

    const/4 v1, 0x4

    const/16 v2, 0x1401

    iget-object v4, p0, Lcom/adcolony/sdk/ak;->a:Lcom/adcolony/sdk/ai;

    iget-object v5, v4, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 87
    iget v0, p0, Lcom/adcolony/sdk/ak;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 90
    :cond_1
    iget v0, p0, Lcom/adcolony/sdk/ak;->h:I

    if-ltz v0, :cond_2

    .line 92
    iget v0, p0, Lcom/adcolony/sdk/ak;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 94
    :cond_2
    return-void
.end method
