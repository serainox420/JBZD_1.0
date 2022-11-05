.class final Lcom/inmobi/commons/internal/ThinICE$3;
.super Ljava/lang/Object;
.source "ThinICE.java"

# interfaces
.implements Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$ThinIceDataCollectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/internal/ThinICE;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCollected()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->a(Z)Z

    .line 126
    invoke-static {}, Lcom/inmobi/commons/internal/ThinICE;->a()V

    .line 127
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->start(Landroid/content/Context;)V

    .line 129
    :cond_0
    return-void
.end method
