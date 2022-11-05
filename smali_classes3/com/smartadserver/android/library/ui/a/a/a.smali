.class public Lcom/smartadserver/android/library/ui/a/a/a;
.super Ljava/lang/Object;
.source "SASGLProgram.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/smartadserver/android/library/ui/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/ui/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a/a;->b:I

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a/a;->b:I

    .line 17
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 55
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 57
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 58
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 59
    sget-object v2, Lcom/smartadserver/android/library/ui/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/smartadserver/android/library/ui/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 65
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 69
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/smartadserver/android/library/ui/a/a/a;->a(ILjava/lang/String;)I

    move-result v2

    .line 70
    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/smartadserver/android/library/ui/a/a/a;->a(ILjava/lang/String;)I

    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 78
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 81
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 83
    const-string v2, "glAttachShader"

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 84
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 85
    new-array v2, v4, [I

    .line 86
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 87
    aget v2, v2, v0

    if-eq v2, v4, :cond_2

    .line 88
    sget-object v2, Lcom/smartadserver/android/library/ui/a/a/a;->a:Ljava/lang/String;

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v2, Lcom/smartadserver/android/library/ui/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a/a;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/a/a;->a()I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetAttribLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 31
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get attrib location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/a/a;->a()I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glGetUniformLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 40
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get uniform location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/a/a;->a()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 48
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method
