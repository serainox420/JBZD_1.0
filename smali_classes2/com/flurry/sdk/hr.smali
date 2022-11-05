.class public Lcom/flurry/sdk/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kp;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/flurry/sdk/im;

.field public b:Lcom/flurry/sdk/je;

.field public c:Lcom/flurry/sdk/io;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/sdk/hr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hr;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/flurry/sdk/hr;->b()Lcom/flurry/sdk/jh;

    move-result-object v1

    .line 157
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 158
    if-eqz v1, :cond_0

    .line 159
    invoke-static {p1}, Lcom/flurry/sdk/jj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v1, p0, v0, p2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 162
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hr;
    .locals 3

    .prologue
    .line 26
    const-class v1, Lcom/flurry/sdk/hr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/hr;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kp;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/flurry/sdk/hr;->b()Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static b()Lcom/flurry/sdk/jh;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lm;->b()Lcom/flurry/sdk/lk;

    move-result-object v0

    .line 1229
    if-nez v0, :cond_0

    .line 1230
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1233
    :cond_0
    const-class v1, Lcom/flurry/sdk/jh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lk;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jh;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/flurry/sdk/jh;

    invoke-static {v0}, Lcom/flurry/sdk/lk;->a(Ljava/lang/Class;)V

    .line 41
    new-instance v0, Lcom/flurry/sdk/je;

    invoke-direct {v0}, Lcom/flurry/sdk/je;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hr;->b:Lcom/flurry/sdk/je;

    .line 42
    new-instance v0, Lcom/flurry/sdk/im;

    invoke-direct {v0}, Lcom/flurry/sdk/im;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 43
    new-instance v0, Lcom/flurry/sdk/io;

    invoke-direct {v0}, Lcom/flurry/sdk/io;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hr;->c:Lcom/flurry/sdk/io;

    .line 1054
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/flurry/sdk/ly;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    sget-object v0, Lcom/flurry/sdk/hr;->d:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/flurry/sdk/ly;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    sget-object v0, Lcom/flurry/sdk/hr;->d:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    return-void
.end method
