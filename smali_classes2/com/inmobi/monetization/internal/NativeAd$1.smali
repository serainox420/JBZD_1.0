.class Lcom/inmobi/monetization/internal/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/NativeAd;->attachToView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/inmobi/monetization/internal/NativeAd;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/NativeAd;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->d:Lcom/inmobi/monetization/internal/NativeAd;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->d:Lcom/inmobi/monetization/internal/NativeAd;

    new-instance v1, Lcom/inmobi/monetization/internal/e;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/monetization/internal/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    .line 264
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->d:Lcom/inmobi/monetization/internal/NativeAd;

    iget-object v1, v1, Lcom/inmobi/monetization/internal/NativeAd;->b:Lcom/inmobi/monetization/internal/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 267
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to attach the view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAd$1;->d:Lcom/inmobi/monetization/internal/NativeAd;

    sget-object v1, Lcom/inmobi/monetization/internal/NativeAd$a;->e:Lcom/inmobi/monetization/internal/NativeAd$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/NativeAd;->a(Lcom/inmobi/monetization/internal/NativeAd;Lcom/inmobi/monetization/internal/NativeAd$a;)V

    goto :goto_0
.end method
