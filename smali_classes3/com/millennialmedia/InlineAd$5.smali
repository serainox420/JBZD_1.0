.class Lcom/millennialmedia/InlineAd$5;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;)V
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
    .line 1106
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$5;->b:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$5;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$5;->b:Lcom/millennialmedia/InlineAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InlineAd$InlineListener;->onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V

    .line 1112
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->b:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->k(Lcom/millennialmedia/InlineAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5;->b:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->l(Lcom/millennialmedia/InlineAd;)V

    .line 1115
    :cond_0
    return-void
.end method
