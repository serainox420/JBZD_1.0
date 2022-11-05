.class Lcom/millennialmedia/InlineAd$RefreshRunnable$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$RefreshRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InlineAd;

.field final synthetic b:Lcom/millennialmedia/InlineAd$RefreshRunnable;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$RefreshRunnable;Lcom/millennialmedia/InlineAd;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;->b:Lcom/millennialmedia/InlineAd$RefreshRunnable;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;->a:Lcom/millennialmedia/InlineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;->a:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->e(Lcom/millennialmedia/InlineAd;)V

    .line 538
    return-void
.end method
