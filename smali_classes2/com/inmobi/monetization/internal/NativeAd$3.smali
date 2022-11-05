.class Lcom/inmobi/monetization/internal/NativeAd$3;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/NativeAd;->handleClick(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/inmobi/monetization/internal/NativeAd;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/NativeAd;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAd$3;->b:Lcom/inmobi/monetization/internal/NativeAd;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/NativeAd$3;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$3;->b:Lcom/inmobi/monetization/internal/NativeAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAd$3;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/e;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to track click"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
