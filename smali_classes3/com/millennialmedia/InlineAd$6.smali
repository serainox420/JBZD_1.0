.class Lcom/millennialmedia/InlineAd$6;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->c(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InlineAd$InlineListener;

.field final synthetic b:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$6;->b:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$6;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$6;->b:Lcom/millennialmedia/InlineAd;

    new-instance v2, Lcom/millennialmedia/InlineAd$InlineErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/millennialmedia/InlineAd$InlineErrorStatus;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InlineAd$InlineListener;->onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V

    .line 1160
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->b:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->k(Lcom/millennialmedia/InlineAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->b:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->l(Lcom/millennialmedia/InlineAd;)V

    .line 1163
    :cond_0
    return-void
.end method
