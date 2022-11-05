.class Lcom/millennialmedia/InlineAd$9;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InlineAd$InlineListener;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;IIZ)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$9;->e:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$9;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iput p3, p0, Lcom/millennialmedia/InlineAd$9;->b:I

    iput p4, p0, Lcom/millennialmedia/InlineAd$9;->c:I

    iput-boolean p5, p0, Lcom/millennialmedia/InlineAd$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$9;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$9;->e:Lcom/millennialmedia/InlineAd;

    iget v2, p0, Lcom/millennialmedia/InlineAd$9;->b:I

    iget v3, p0, Lcom/millennialmedia/InlineAd$9;->c:I

    iget-boolean v4, p0, Lcom/millennialmedia/InlineAd$9;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/millennialmedia/InlineAd$InlineListener;->onResized(Lcom/millennialmedia/InlineAd;IIZ)V

    .line 1243
    return-void
.end method
