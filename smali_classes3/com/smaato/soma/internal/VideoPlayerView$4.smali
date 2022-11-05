.class Lcom/smaato/soma/internal/VideoPlayerView$4;
.super Lcom/smaato/soma/l;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/VideoPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/smaato/soma/internal/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/VideoPlayerView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/smaato/soma/internal/VideoPlayerView$4;->b:Lcom/smaato/soma/internal/VideoPlayerView;

    iput-object p2, p0, Lcom/smaato/soma/internal/VideoPlayerView$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/smaato/soma/internal/VideoPlayerView$4;->b:Lcom/smaato/soma/internal/VideoPlayerView;

    iget-object v1, p0, Lcom/smaato/soma/internal/VideoPlayerView$4;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/smaato/soma/internal/VideoPlayerView;->a(Lcom/smaato/soma/internal/VideoPlayerView;Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/smaato/soma/internal/VideoPlayerView$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
