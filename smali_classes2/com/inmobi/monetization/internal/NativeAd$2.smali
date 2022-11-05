.class Lcom/inmobi/monetization/internal/NativeAd$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/NativeAd;->detachFromView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/NativeAd;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/NativeAd;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/e;->a()V

    .line 323
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach the native ad view before calling detach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    sget-object v1, Lcom/inmobi/monetization/internal/NativeAd$a;->e:Lcom/inmobi/monetization/internal/NativeAd$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/NativeAd;->a(Lcom/inmobi/monetization/internal/NativeAd;Lcom/inmobi/monetization/internal/NativeAd$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 332
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$2;->a:Lcom/inmobi/monetization/internal/NativeAd;

    sget-object v1, Lcom/inmobi/monetization/internal/NativeAd$a;->e:Lcom/inmobi/monetization/internal/NativeAd$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/NativeAd;->a(Lcom/inmobi/monetization/internal/NativeAd;Lcom/inmobi/monetization/internal/NativeAd$a;)V

    .line 333
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to detach a view"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
