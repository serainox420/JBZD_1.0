.class public final Lcom/openx/core/sdk/OXMManagersResolver;
.super Ljava/lang/Object;
.source "OXMManagersResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/core/sdk/OXMManagersResolver$OXMManagersResolverHolder;,
        Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;
    }
.end annotation


# instance fields
.field private currentAd:Lcom/openx/view/WebViewBase;

.field private mContext:Landroid/content/Context;

.field private mRegisteredManaers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;",
            "Lcom/openx/core/sdk/OXMManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/openx/core/sdk/OXMManagersResolver;->mRegisteredManaers:Ljava/util/Hashtable;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/core/sdk/OXMManagersResolver$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/openx/core/sdk/OXMManagersResolver;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/openx/core/sdk/OXMManagersResolver;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$OXMManagersResolverHolder;->instance:Lcom/openx/core/sdk/OXMManagersResolver;

    return-object v0
.end method

.method private getRegisteredManagers()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;",
            "Lcom/openx/core/sdk/OXMManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/openx/core/sdk/OXMManagersResolver;->mRegisteredManaers:Ljava/util/Hashtable;

    return-object v0
.end method

.method private isReady(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getContext()Landroid/content/Context;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerManagers(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 194
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/openx/common/utils/helpers/Utils;->DENSITY:F

    .line 196
    new-instance v0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;

    invoke-direct {v0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;-><init>()V

    .line 197
    invoke-interface {v0, p1}, Lcom/openx/core/sdk/OXMManager;->init(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/openx/sdk/event/OXMEventsManagerImpl;

    invoke-direct {v0}, Lcom/openx/sdk/event/OXMEventsManagerImpl;-><init>()V

    .line 201
    invoke-interface {v0, p1}, Lcom/openx/core/sdk/OXMManager;->init(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/openx/core/sdk/OXMManagersResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/openx/core/sdk/OXMManagersResolver$1;-><init>(Lcom/openx/core/sdk/OXMManagersResolver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    new-instance v0, Lcom/openx/common/deviceData/managers/NetworkImpl;

    invoke-direct {v0}, Lcom/openx/common/deviceData/managers/NetworkImpl;-><init>()V

    .line 221
    invoke-interface {v0, p1}, Lcom/openx/core/sdk/OXMManager;->init(Landroid/content/Context;)V

    .line 222
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;

    invoke-direct {v0}, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;-><init>()V

    .line 225
    invoke-interface {v0, p1}, Lcom/openx/core/sdk/OXMManager;->init(Landroid/content/Context;)V

    .line 226
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/openx/common/deviceData/managers/AdTruthImpl;

    invoke-direct {v0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;-><init>()V

    .line 229
    invoke-interface {v0, p1}, Lcom/openx/core/sdk/OXMManager;->init(Landroid/content/Context;)V

    .line 230
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v1

    sget-object v2, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0, p1}, Lcom/openx/core/sdk/OXMManagersResolver;->setContext(Landroid/content/Context;)V

    .line 233
    return-void

    :cond_0
    move-object v0, p1

    .line 194
    check-cast v0, Landroid/app/Application;

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/openx/core/sdk/OXMManagersResolver;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 255
    :cond_0
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 261
    :cond_1
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 267
    :cond_2
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3

    .line 270
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 273
    :cond_3
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_4

    .line 276
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 279
    :cond_4
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    sget-object v1, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_5

    .line 282
    invoke-interface {v0}, Lcom/openx/core/sdk/OXMManager;->dispose()V

    .line 284
    :cond_5
    return-void
.end method

.method public getAdTruthManager()Lcom/openx/common/deviceData/listeners/AdTruthListener;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->AD_TRUTH_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/listeners/AdTruthListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/openx/core/sdk/OXMManagersResolver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAd()Lcom/openx/view/WebViewBase;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/openx/core/sdk/OXMManagersResolver;->currentAd:Lcom/openx/view/WebViewBase;

    return-object v0
.end method

.method public getDeviceManager()Lcom/openx/common/deviceData/listeners/DeviceInfoListener;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->DEVICE_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/listeners/DeviceInfoListener;

    return-object v0
.end method

.method public getEventsManager()Lcom/openx/sdk/event/OXMEventsListener;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->EVENTS_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/event/OXMEventsListener;

    return-object v0
.end method

.method public getLocationManager()Lcom/openx/common/deviceData/listeners/OXMLocationListener;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->LOCATION_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/listeners/OXMLocationListener;

    return-object v0
.end method

.method public getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->getRegisteredManagers()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/core/sdk/OXMManager;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkManager()Lcom/openx/common/deviceData/listeners/NetworkListener;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->NETWORK_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/listeners/NetworkListener;

    return-object v0
.end method

.method public getPreferencesManager()Lcom/openx/common/deviceData/listeners/PreferenceListener;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;->PREFERENCES_MANAGER:Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;

    invoke-virtual {p0, v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getManager(Lcom/openx/core/sdk/OXMManagersResolver$ManagerType;)Lcom/openx/core/sdk/OXMManager;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/listeners/PreferenceListener;

    return-object v0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/openx/core/sdk/OXMManagersResolver;->isReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/openx/core/sdk/OXMManagersResolver;->dispose()V

    .line 243
    invoke-direct {p0, p1}, Lcom/openx/core/sdk/OXMManagersResolver;->registerManagers(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void
.end method

.method public setCurrentAd(Lcom/openx/view/WebViewBase;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/openx/core/sdk/OXMManagersResolver;->currentAd:Lcom/openx/view/WebViewBase;

    .line 38
    return-void
.end method
