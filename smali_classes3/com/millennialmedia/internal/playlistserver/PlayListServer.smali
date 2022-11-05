.class public Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.super Ljava/lang/Object;
.source "PlayListServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedAdFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "web"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "native"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->supportedAdFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->b:Ljava/lang/Class;

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlayListServerAdapterClass()Ljava/lang/Class;

    move-result-object v0

    .line 114
    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->a(Ljava/lang/Class;)Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getSdkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->a:Ljava/lang/String;

    const-string v1, "Unable to request ad, SDK is disabled.  Please contact Millennial Media."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->a:Ljava/lang/String;

    const-string v1, "Unable to request ad, no network connection found"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Network not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->a()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    new-instance v1, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;

    invoke-direct {v1, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;-><init>(Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    invoke-virtual {v0, p0, v1, p2}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setActivePlayListServerAdapter(Ljava/lang/Class;)V
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
    .line 102
    sput-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->b:Ljava/lang/Class;

    .line 103
    return-void
.end method
