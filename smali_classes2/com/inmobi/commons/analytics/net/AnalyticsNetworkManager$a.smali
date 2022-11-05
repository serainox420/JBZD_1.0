.class Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;
.super Ljava/lang/Thread;
.source "AnalyticsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;->a:Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 202
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a$1;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a$1;-><init>(Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager$a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-static {v0}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 224
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 225
    return-void
.end method
