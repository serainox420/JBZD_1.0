.class Lcom/inmobi/monetization/IMNative$1$1;
.super Ljava/lang/Object;
.source "IMNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMNative$1;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/AdErrorCode;

.field final synthetic b:Lcom/inmobi/monetization/IMNative$1;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative$1;Lcom/inmobi/monetization/internal/AdErrorCode;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$1$1;->b:Lcom/inmobi/monetization/IMNative$1;

    iput-object p2, p0, Lcom/inmobi/monetization/IMNative$1$1;->a:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1$1;->b:Lcom/inmobi/monetization/IMNative$1;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$1$1;->b:Lcom/inmobi/monetization/IMNative$1;

    iget-object v0, v0, Lcom/inmobi/monetization/IMNative$1;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$1$1;->a:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-static {v1}, Lcom/inmobi/monetization/IMErrorCode;->a(Lcom/inmobi/monetization/internal/AdErrorCode;)Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMNativeListener;->onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V

    .line 93
    :cond_0
    return-void
.end method
