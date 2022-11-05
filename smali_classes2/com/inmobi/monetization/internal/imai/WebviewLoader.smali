.class public Lcom/inmobi/monetization/internal/imai/WebviewLoader;
.super Ljava/lang/Object;
.source "WebviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/imai/WebviewLoader$MyWebViewClient;
    }
.end annotation


# static fields
.field static a:Z

.field static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->a:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->c:Landroid/webkit/WebView;

    .line 30
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/internal/imai/WebviewLoader$1;-><init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->c:Landroid/webkit/WebView;

    return-object p1
.end method


# virtual methods
.method public deinit(I)V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/internal/imai/WebviewLoader$2;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader$2;-><init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method public loadInWebview(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/monetization/internal/imai/WebviewLoader$4;-><init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader$3;-><init>(Lcom/inmobi/monetization/internal/imai/WebviewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
