.class Lcom/millennialmedia/InlineAd$10;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->e(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
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
    .line 1268
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$10;->b:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$10;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$10;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$10;->b:Lcom/millennialmedia/InlineAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InlineAd$InlineListener;->onExpanded(Lcom/millennialmedia/InlineAd;)V

    .line 1273
    return-void
.end method
