.class public Lcom/flurry/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/flurry/sdk/j;

.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/android/FlurryAdListener;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/android/ICustomAdNetworkHandler;

.field public final c:Lcom/flurry/sdk/e;

.field public volatile d:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/flurry/sdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/j;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/j;->a:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object v1, p0, Lcom/flurry/sdk/j;->b:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 41
    new-instance v0, Lcom/flurry/sdk/e;

    invoke-direct {v0}, Lcom/flurry/sdk/e;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    .line 43
    iput-object v1, p0, Lcom/flurry/sdk/j;->g:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/flurry/sdk/j;->d:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/j;->h:Z

    .line 49
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/j;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/flurry/sdk/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/j;->e:Lcom/flurry/sdk/j;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/flurry/sdk/j;

    invoke-direct {v0}, Lcom/flurry/sdk/j;-><init>()V

    sput-object v0, Lcom/flurry/sdk/j;->e:Lcom/flurry/sdk/j;

    .line 21
    :cond_0
    sget-object v0, Lcom/flurry/sdk/j;->e:Lcom/flurry/sdk/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "UseHttps"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Lcom/flurry/android/FlurryAdListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/sdk/j;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v16/getAds.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "https://ads.flurry.com/v16/getAds.do"

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "http://ads.flurry.com/v16/getAds.do"

    goto :goto_0
.end method
