.class Lcom/apprupt/sdk/CvDevicePayload;
.super Ljava/lang/Object;
.source "CvDevicePayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvDevicePayload$Holder;,
        Lcom/apprupt/sdk/CvDevicePayload$Listener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/apprupt/sdk/CvDevicePayloadJS;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/CvDevicePayload$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private final g:Lcom/apprupt/sdk/Logger$log;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z

    .line 20
    iput-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload;->d:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->e:Ljava/util/List;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->f:Landroid/os/Handler;

    .line 24
    const-string v0, "DEVICE_PAYLOAD"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/apprupt/sdk/CvDevicePayload;->a()V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvDevicePayload$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/apprupt/sdk/CvDevicePayload;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDevicePayload;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/apprupt/sdk/CvUrl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/URLRequest;->c(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayload$3;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/CvDevicePayload$3;-><init>(Lcom/apprupt/sdk/CvDevicePayload;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    .line 131
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CREATE NEW PAYLOAD GENERATOR"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apprupt/sdk/CvDevicePayload$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/CvDevicePayload$1;-><init>(Lcom/apprupt/sdk/CvDevicePayload;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/apprupt/sdk/CvDevicePayload$Listener;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/apprupt/sdk/CvDevicePayload$Holder;->a()Lcom/apprupt/sdk/CvDevicePayload;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvDevicePayload;->b(Landroid/content/Context;Lcom/apprupt/sdk/CvDevicePayload$Listener;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDevicePayload;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvDevicePayload;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvDevicePayload;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/apprupt/sdk/CvDevicePayloadJS;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload;->c:Ljava/lang/String;

    new-instance v2, Lcom/apprupt/sdk/CvDevicePayload$2;

    invoke-direct {v2, p0}, Lcom/apprupt/sdk/CvDevicePayload$2;-><init>(Lcom/apprupt/sdk/CvDevicePayload;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/apprupt/sdk/CvDevicePayloadJS;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/apprupt/sdk/CvDevicePayloadJS$Listener;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    .line 95
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/apprupt/sdk/CvDevicePayload$Listener;)V
    .locals 4

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const-string v0, ""

    invoke-interface {p2, v0}, Lcom/apprupt/sdk/CvDevicePayload$Listener;->a(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "PAYLOAD: DISABLED"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 53
    monitor-exit p0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ADDING LISTENER"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z

    if-nez v0, :cond_2

    .line 58
    invoke-static {p1}, Lcom/apprupt/sdk/CvAppInfo;->a(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "START NEW LOADER"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvDevicePayload;->a(Landroid/content/Context;)V

    .line 66
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "WAIT FOR EXISTING REQUEST"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload;->d:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 98
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PAYLOAD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string p1, ""

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvDevicePayload$Listener;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/apprupt/sdk/CvDevicePayload$Listener;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvDevicePayload;->g:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->b:Lcom/apprupt/sdk/CvDevicePayloadJS;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iput-object p1, p0, Lcom/apprupt/sdk/CvDevicePayload;->c:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvDevicePayload;->a(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvDevicePayload;->d:Landroid/content/Context;

    .line 140
    :cond_0
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
