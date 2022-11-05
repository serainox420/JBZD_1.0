.class Lcom/smartadserver/android/library/ui/a/a;
.super Ljava/lang/Object;
.source "SASSphericalVideoRenderer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static F:F

.field private static b:I

.field private static c:F

.field private static final d:F


# instance fields
.field private A:Landroid/view/Surface;

.field private B:Z

.field private C:Lcom/smartadserver/android/library/ui/b;

.field private D:[F

.field private E:Z

.field a:F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private final j:[F

.field private k:Lcom/smartadserver/android/library/ui/a/a/a;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:[F

.field private t:[F

.field private u:[F

.field private v:[F

.field private w:[F

.field private x:Landroid/graphics/SurfaceTexture;

.field private y:Z

.field private z:Lcom/smartadserver/android/library/ui/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0xb4

    sput v0, Lcom/smartadserver/android/library/ui/a/a;->b:I

    .line 32
    const/high16 v0, 0x43fa0000    # 500.0f

    sput v0, Lcom/smartadserver/android/library/ui/a/a;->c:F

    .line 36
    sget v0, Lcom/smartadserver/android/library/ui/a/a;->c:F

    const/high16 v1, 0x43480000    # 200.0f

    add-float/2addr v0, v1

    sput v0, Lcom/smartadserver/android/library/ui/a/a;->d:F

    .line 281
    const/high16 v0, 0x41700000    # 15.0f

    sput v0, Lcom/smartadserver/android/library/ui/a/a;->F:F

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x10

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->e:[F

    .line 40
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->f:[F

    .line 41
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->g:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->h:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->i:[F

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->j:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->s:[F

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->t:[F

    .line 59
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->u:[F

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->v:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->w:[F

    .line 65
    iput-boolean v7, p0, Lcom/smartadserver/android/library/ui/a/a;->y:Z

    .line 70
    iput-boolean v6, p0, Lcom/smartadserver/android/library/ui/a/a;->B:Z

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->D:[F

    .line 89
    iput-boolean v7, p0, Lcom/smartadserver/android/library/ui/a/a;->E:Z

    .line 74
    new-instance v0, Lcom/smartadserver/android/library/ui/a/a/b;

    sget v1, Lcom/smartadserver/android/library/ui/a/a;->b:I

    sget v5, Lcom/smartadserver/android/library/ui/a/a;->c:F

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/smartadserver/android/library/ui/a/a/b;-><init>(IFFFFI)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    .line 75
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->g:[F

    invoke-static {v0, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 76
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->w:[F

    invoke-static {v0, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a/a;F)F
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    return p1
.end method

.method private a(FFZ)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    if-nez p3, :cond_0

    .line 134
    iput p1, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    .line 135
    iput p2, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    .line 159
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 138
    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 139
    new-instance v1, Lcom/smartadserver/android/library/ui/a/a$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a/a$2;-><init>(Lcom/smartadserver/android/library/ui/a/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 146
    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 147
    new-instance v2, Lcom/smartadserver/android/library/ui/a/a$3;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/a/a$3;-><init>(Lcom/smartadserver/android/library/ui/a/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 155
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 156
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 157
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a/a;F)F
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    return p1
.end method

.method private c()V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 181
    new-instance v0, Lcom/smartadserver/android/library/ui/a/a/a;

    invoke-static {}, Lcom/smartadserver/android/library/ui/a/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/smartadserver/android/library/ui/a/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/smartadserver/android/library/ui/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    .line 185
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    const-string v4, "aPosition"

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/a/a/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->m:I

    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    const-string v4, "uMVPMatrix"

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/a/a/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->n:I

    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    const-string v4, "uTextureMatrix"

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/a/a/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->o:I

    .line 188
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    const-string v4, "aTextureCoord"

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/ui/a/a/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->p:I

    .line 192
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 193
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 196
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->m:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 197
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->m:I

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/a/a/b;->b()I

    move-result v4

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/a/a/b;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 203
    const-string v0, "glEnableVertexAttribArray"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->p:I

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/a/a/b;->b()I

    move-result v4

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/a/a/b;->a()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    move v1, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 205
    const-string v0, "glVertexAttribPointer"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    new-array v0, v1, [I

    .line 211
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 212
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 213
    aget v0, v0, v2

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->l:I

    .line 217
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 218
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 219
    const v0, 0x8d65

    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->l:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 220
    const-string v0, "glBindTexture mTextureID"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->l:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->x:Landroid/graphics/SurfaceTexture;

    .line 227
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->x:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 230
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->x:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->A:Landroid/view/Surface;

    .line 231
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->j()F

    move-result v0

    .line 292
    iget v4, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    sget v5, Lcom/smartadserver/android/library/ui/a/a;->F:F

    sub-float v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 293
    const/high16 v5, -0x3ccc0000    # -180.0f

    sget v6, Lcom/smartadserver/android/library/ui/a/a;->F:F

    add-float/2addr v5, v6

    add-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 296
    iput v6, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    .line 302
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->s:[F

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 303
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->t:[F

    move v5, v1

    move v7, v3

    move v8, v2

    move v9, v2

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 304
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->u:[F

    iget v6, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    move v5, v1

    move v7, v2

    move v8, v2

    move v9, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 309
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->v:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/a;->w:[F

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->u:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 310
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->j:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/a;->t:[F

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->v:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 312
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->E:Z

    if-eqz v0, :cond_0

    .line 313
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a/a;->E:Z

    .line 314
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/ui/a/a$4;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a/a$4;-><init>(Lcom/smartadserver/android/library/ui/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->h:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 326
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->e:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/a;->j:[F

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->h:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 329
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->f:[F

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/a;->i:[F

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->e:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 330
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 336
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 337
    return-void
.end method

.method private i()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->j:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 341
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->j:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 342
    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    .line 343
    const/high16 v1, 0x43340000    # 180.0f

    sub-float v0, v1, v0

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    const/high16 v1, -0x3ccc0000    # -180.0f

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method private j()F
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->D:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    .line 354
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const/high16 v0, 0x42b40000    # 90.0f

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->a:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 357
    const/high16 v1, 0x43340000    # 180.0f

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->C:Lcom/smartadserver/android/library/ui/b;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->i()F

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->C:Lcom/smartadserver/android/library/ui/b;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/b;->setAngle(F)V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 374
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/a/a/b;->d()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 375
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a/a/b;->d()[I

    move-result-object v2

    aget v2, v2, v0

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a/a;->z:Lcom/smartadserver/android/library/ui/a/a/b;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/a/a/b;->c()[Ljava/nio/ShortBuffer;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 376
    const-string v1, "glDrawElements"

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method a()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->A:Landroid/view/Surface;

    return-object v0
.end method

.method a(FF)V
    .locals 3

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    .line 162
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->B:Z

    if-eqz v0, :cond_0

    .line 163
    mul-float v0, p2, v2

    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    .line 164
    mul-float v0, p1, v2

    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    .line 166
    :cond_0
    return-void
.end method

.method a(Lcom/smartadserver/android/library/ui/b;)V
    .locals 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/a;->C:Lcom/smartadserver/android/library/ui/b;

    .line 106
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->C:Lcom/smartadserver/android/library/ui/b;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->C:Lcom/smartadserver/android/library/ui/b;

    new-instance v1, Lcom/smartadserver/android/library/ui/a/a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a/a$1;-><init>(Lcom/smartadserver/android/library/ui/a/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a/a;->B:Z

    .line 101
    return-void
.end method

.method a(ZZ)V
    .locals 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->i()F

    move-result v0

    .line 121
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->j()F

    move-result v1

    .line 123
    iget v2, p0, Lcom/smartadserver/android/library/ui/a/a;->r:F

    sub-float/2addr v2, v0

    .line 125
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->q:F

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    .line 129
    :cond_0
    invoke-direct {p0, v2, v0, p2}, Lcom/smartadserver/android/library/ui/a/a;->a(FFZ)V

    .line 130
    return-void
.end method

.method a([FZ)V
    .locals 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/a;->w:[F

    .line 92
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->w:[F

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->D:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 94
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->E:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->E:Z

    .line 97
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    .line 235
    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->y:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->x:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 244
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->x:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->g:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->y:Z

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->f()V

    .line 253
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->g()V

    .line 254
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->h()V

    .line 255
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->k()V

    .line 258
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->k:Lcom/smartadserver/android/library/ui/a/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/a/a;->b()V

    .line 261
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 262
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 263
    const v0, 0x8d65

    iget v1, p0, Lcom/smartadserver/android/library/ui/a/a;->l:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 264
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/a;->g:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 268
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/a;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/a;->f:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 270
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/a/d;->a(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->l()V

    .line 275
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 384
    int-to-float v0, p2

    int-to-float v2, p3

    div-float v3, v0, v2

    .line 385
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a;->i:[F

    const/high16 v2, 0x428c0000    # 70.0f

    const/high16 v4, 0x42c80000    # 100.0f

    sget v5, Lcom/smartadserver/android/library/ui/a/a;->d:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 386
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->c()V

    .line 171
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->d()V

    .line 172
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a/a;->e()V

    .line 174
    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/a;->y:Z

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
