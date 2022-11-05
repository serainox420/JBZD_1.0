.class public Lcom/smartadserver/android/library/controller/mraid/e;
.super Ljava/lang/Object;
.source "SASMRAIDSensorController.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field final b:I

.field private c:Lcom/smartadserver/android/library/ui/SASAdView;

.field private d:Lcom/smartadserver/android/library/controller/mraid/a/a;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "mraidsensor"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->b:I

    .line 24
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    .line 25
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    .line 26
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    .line 28
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 29
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 30
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 40
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 41
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/controller/mraid/e;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    .line 42
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/e;->a()V

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->h()V

    .line 47
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 48
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 49
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 50
    return-void
.end method

.method public a(F)V
    .locals 6

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireHeadingChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v2, p1

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public a(FFF)V
    .locals 2

    .prologue
    .line 140
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    .line 141
    iput p2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    .line 142
    iput p3, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireTiltChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "mraid.fireShakeEvent()"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ x : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", y : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", z : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->h()V

    .line 184
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->c()V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a()V

    .line 190
    :cond_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->e()V

    .line 191
    :cond_2
    return-void
.end method

.method public startHeadingListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 97
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startHeadingListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->e()V

    .line 100
    return-void
.end method

.method public startShakeListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 67
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startShakeListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 69
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->c()V

    .line 70
    return-void
.end method

.method public startTiltListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 57
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startTiltListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 59
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a()V

    .line 60
    return-void
.end method

.method public stopHeadingListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 107
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopHeadingListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 109
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->f()V

    .line 110
    return-void
.end method

.method public stopShakeListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 87
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopShakeListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 89
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->d()V

    .line 90
    return-void
.end method

.method public stopTiltListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 77
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopTiltListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->b()V

    .line 80
    return-void
.end method
