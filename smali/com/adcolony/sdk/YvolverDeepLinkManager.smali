.class Lcom/adcolony/sdk/YvolverDeepLinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;,
        Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "YvolverDeepLinkManager"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;",
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private e:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->d:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/YvolverDeepLinkManager$4;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 142
    return-void
.end method

.method private a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    new-instance v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;

    invoke-direct {v2, p0, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 1

    .prologue
    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)Z
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->b(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)Z
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p1, Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    const-string v3, "adcOpenCatalog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "adcOpenUrl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 99
    goto :goto_0

    :cond_1
    move v0, v1

    .line 101
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager$5;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 174
    return-void
.end method

.method static synthetic c(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->c(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    new-instance v2, Lcom/adcolony/sdk/YvolverDeepLinkManager$3;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/YvolverDeepLinkManager$3;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;)V

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroid/net/Uri;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager;->e:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adcolony/sdk/YvolverDeepLinkManager$1;-><init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Landroid/net/Uri;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 59
    return-void
.end method
