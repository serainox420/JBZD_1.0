.class public Lcom/smartadserver/android/library/ui/a/b;
.super Landroid/opengl/GLSurfaceView;
.source "SASSphericalVideoView.java"


# instance fields
.field private a:Lcom/smartadserver/android/library/ui/a/a;

.field b:[F

.field private c:Landroid/view/Display;

.field private d:Lcom/smartadserver/android/library/ui/a/b/a;

.field private e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->b:[F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/b;->e:Z

    .line 162
    new-instance v0, Lcom/smartadserver/android/library/ui/a/b$4;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a/b$4;-><init>(Lcom/smartadserver/android/library/ui/a/b;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->g:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 44
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a/b;->b(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a/b;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->f:Landroid/view/GestureDetector;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 133
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 134
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 135
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    move v3, v1

    .line 138
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    :cond_1
    move v3, v2

    .line 135
    goto :goto_1

    :cond_2
    move v1, v2

    .line 138
    goto :goto_2
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a/b;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/smartadserver/android/library/ui/a/b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a/b;->setEGLContextClientVersion(I)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a/b;->setPreserveEGLContextOnPause(Z)V

    .line 68
    new-instance v0, Lcom/smartadserver/android/library/ui/a/b$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a/b$1;-><init>(Lcom/smartadserver/android/library/ui/a/b;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    .line 77
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a/b;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 78
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->c:Landroid/view/Display;

    .line 80
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b;->g:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->f:Landroid/view/GestureDetector;

    .line 81
    new-instance v0, Lcom/smartadserver/android/library/ui/a/b$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/ui/a/b$2;-><init>(Lcom/smartadserver/android/library/ui/a/b;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/ui/a/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 89
    new-instance v1, Lcom/smartadserver/android/library/ui/a/b/a;

    invoke-direct {v1, v0}, Lcom/smartadserver/android/library/ui/a/b/a;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    .line 90
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    new-instance v1, Lcom/smartadserver/android/library/ui/a/b$3;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a/b$3;-><init>(Lcom/smartadserver/android/library/ui/a/b;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/b/a;->a(Lcom/smartadserver/android/library/ui/a/b/c;)V

    .line 125
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->a()V

    .line 127
    return-void
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/b/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/a/b;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->c:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic e(Lcom/smartadserver/android/library/ui/a/b;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/b;->e:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/a;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/b;->f()V

    .line 147
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/b/a;->a(Lcom/smartadserver/android/library/ui/a/b/c;)V

    .line 148
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/a;->b()V

    .line 149
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/b;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->a()V

    .line 154
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/smartadserver/android/library/ui/a/b;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->d:Lcom/smartadserver/android/library/ui/a/b/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b/a;->b()V

    .line 159
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/a/a;->a(Z)V

    .line 55
    return-void
.end method

.method public setResetButton(Lcom/smartadserver/android/library/ui/b;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {v0, p1}, Lcom/smartadserver/android/library/ui/a/a;->a(Lcom/smartadserver/android/library/ui/b;)V

    .line 58
    return-void
.end method
