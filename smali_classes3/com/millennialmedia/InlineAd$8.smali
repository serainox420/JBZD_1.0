.class Lcom/millennialmedia/InlineAd$8;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->a(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/InlineAd$InlineListener;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;II)V
    .locals 0

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$8;->d:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$8;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iput p3, p0, Lcom/millennialmedia/InlineAd$8;->b:I

    iput p4, p0, Lcom/millennialmedia/InlineAd$8;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$8;->a:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$8;->d:Lcom/millennialmedia/InlineAd;

    iget v2, p0, Lcom/millennialmedia/InlineAd$8;->b:I

    iget v3, p0, Lcom/millennialmedia/InlineAd$8;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/InlineAd$InlineListener;->onResize(Lcom/millennialmedia/InlineAd;II)V

    .line 1211
    return-void
.end method
