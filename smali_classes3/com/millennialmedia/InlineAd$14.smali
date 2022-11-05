.class Lcom/millennialmedia/InlineAd$14;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InlineAd$InlineAbortListener;

.field final synthetic b:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V
    .locals 0

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$14;->b:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$14;->a:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$14;->a:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$14;->b:Lcom/millennialmedia/InlineAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAbortListener;->onAbortFailed(Lcom/millennialmedia/InlineAd;)V

    .line 1390
    return-void
.end method
