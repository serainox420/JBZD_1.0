.class public Lcom/loopme/video360/common/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileShader(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 147
    if-eqz v1, :cond_1

    .line 149
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 152
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 155
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 156
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 159
    aget v2, v2, v0

    if-nez v2, :cond_1

    .line 160
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compiling shader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 166
    :goto_0
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 184
    if-eqz v1, :cond_2

    .line 186
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 189
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 192
    if-eqz p2, :cond_0

    .line 193
    array-length v3, p2

    move v2, v0

    .line 194
    :goto_0
    if-ge v2, v3, :cond_0

    .line 195
    aget-object v4, p2, v2

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 203
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 204
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 207
    aget v2, v2, v0

    if-nez v2, :cond_2

    .line 208
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compiling program: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 214
    :goto_1
    if-nez v0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static glCheck(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v1, "GLUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static loadObject3D(Landroid/content/Context;ILcom/loopme/video360/objects/MDSphere3D;)V
    .locals 19

    .prologue
    .line 70
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 76
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 77
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 81
    const-string v5, "v "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    const-string v5, "vt "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    const-string v5, "vn "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    const-string v5, "f "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    new-array v9, v1, [F

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    new-array v10, v1, [F

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v11, v1, [S

    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v2, 0x0

    .line 97
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    :goto_2
    if-ge v5, v14, :cond_7

    aget-object v2, v13, v5

    .line 101
    add-int/lit8 v6, v1, 0x1

    int-to-short v15, v1

    aput-short v15, v11, v1

    .line 102
    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    const/4 v15, 0x1

    aget-object v2, v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    const-string v15, " "

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 110
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 113
    array-length v0, v15

    move/from16 v17, v0

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v1, v0, :cond_5

    aget-object v18, v15, v1

    add-int/lit8 v2, v4, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    aput v18, v9, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_3

    .line 114
    :cond_5
    move-object/from16 v0, v16

    array-length v15, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v15, :cond_6

    aget-object v17, v16, v1

    add-int/lit8 v2, v3, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v10, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_4

    .line 100
    :cond_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v6

    goto :goto_2

    :cond_7
    move v2, v1

    .line 117
    goto :goto_1

    .line 120
    :cond_8
    array-length v1, v9

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 121
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    array-length v2, v10

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 126
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/loopme/video360/objects/MDSphere3D;->setVerticesBuffer(Ljava/nio/FloatBuffer;)V

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/loopme/video360/objects/MDSphere3D;->setTexCoordinateBuffer(Ljava/nio/FloatBuffer;)V

    .line 131
    array-length v1, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/loopme/video360/objects/MDSphere3D;->setNumIndices(I)V

    .line 134
    return-void
.end method

.method public static readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static supportsEs2(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 33
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 34
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
