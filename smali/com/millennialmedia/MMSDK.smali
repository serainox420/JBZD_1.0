.class public Lcom/millennialmedia/MMSDK;
.super Ljava/lang/Object;
.source "MMSDK.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "6.3.1-4006cb2"

.field static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/millennialmedia/UserData;

.field private static d:Lcom/millennialmedia/AppInfo;

.field private static e:Lcom/millennialmedia/TestInfo;

.field public static locationEnabled:Z

.field public static final registeredPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/millennialmedia/MMSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.millennialmedia.clientmediation.AdMobMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 87
    const-string v0, "com.millennialmedia.clientmediation.ConversentMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 88
    const-string v0, "com.millennialmedia.clientmediation.InMobiMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 89
    const-string v0, "com.millennialmedia.clientmediation.AdColonyMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 90
    const-string v0, "com.millennialmedia.clientmediation.ChartboostMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 91
    const-string v0, "com.millennialmedia.clientmediation.FacebookMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 92
    const-string v0, "com.millennialmedia.clientmediation.MoPubMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 93
    const-string v0, "com.millennialmedia.clientmediation.VungleMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 94
    const-string v0, "com.millennialmedia.clientmediation.YahooMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 95
    const-string v0, "com.millennialmedia.clientmediation.TapjoyMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->a(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 198
    const-class v0, Lcom/millennialmedia/clientmediation/MediationAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    const-string v1, "Unable to register mediation adapter, specified class is not an instance of MediationAdapter"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/clientmediation/MediationAdapter;

    .line 209
    invoke-virtual {v0}, Lcom/millennialmedia/clientmediation/MediationAdapter;->register()V

    .line 211
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering client mediation adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No class found for mediation adapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    const-string v2, "Unable to create new instance of mediation adapter"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppInfo()Lcom/millennialmedia/AppInfo;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/millennialmedia/MMSDK;->d:Lcom/millennialmedia/AppInfo;

    return-object v0
.end method

.method public static getTestInfo()Lcom/millennialmedia/TestInfo;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/millennialmedia/MMSDK;->e:Lcom/millennialmedia/TestInfo;

    return-object v0
.end method

.method public static getUserData()Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/millennialmedia/MMSDK;->c:Lcom/millennialmedia/UserData;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to initialize SDK, specified activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Application;)V
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static initialize(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-static {p0}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Activity;)V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager;->setInitialStateForUnknownActivity(ILcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)V

    .line 128
    return-void
.end method

.method public static initialize(Landroid/app/Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to initialize SDK. Please provide a valid Application instance."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    const-string v1, "Millennial Media SDK already initialized"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->initialize()V

    .line 65
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->init(Landroid/app/Application;)V

    .line 66
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->initialize()V

    .line 68
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->init()V

    .line 71
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPackagedAdapters()V

    .line 72
    invoke-static {}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerPackagedAdapters()V

    .line 73
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerPackagedControllers()V

    .line 74
    invoke-static {}, Lcom/millennialmedia/MMSDK;->a()V

    .line 76
    invoke-static {v1}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    .line 77
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->init()V

    .line 79
    sput-boolean v1, Lcom/millennialmedia/MMSDK;->a:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    return v0
.end method

.method public static registerAdAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 179
    return-void
.end method

.method public static registerAdController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V
    .locals 0

    .prologue
    .line 190
    invoke-static {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 191
    return-void
.end method

.method public static registerMediatedAdAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerMediatedAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 238
    return-void
.end method

.method public static registerPlayListServerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V

    .line 150
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 252
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to register plugin, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :cond_1
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    const-string v1, "Unable to register plugin, neither id or version can be null or empty"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    .line 262
    :cond_2
    sget-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered plugin with ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and version <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setActiveAdServerAdapter(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->setActivePlayListServerAdapter(Ljava/lang/Class;)V

    .line 164
    return-void
.end method

.method public static setAppInfo(Lcom/millennialmedia/AppInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 305
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to set app info, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->d:Lcom/millennialmedia/AppInfo;

    .line 310
    return-void
.end method

.method public static setLocationEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 333
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to set location state, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    sget-object v0, Lcom/millennialmedia/MMSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting location enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_1
    sput-boolean p0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    .line 341
    return-void
.end method

.method public static setTestInfo(Lcom/millennialmedia/TestInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 354
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to set test info, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->e:Lcom/millennialmedia/TestInfo;

    .line 359
    return-void
.end method

.method public static setUserData(Lcom/millennialmedia/UserData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 278
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->a:Z

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to set user data, SDK must be initialized first"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->c:Lcom/millennialmedia/UserData;

    .line 283
    return-void
.end method
