.class Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;->a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->setVisibility(I)V

    .line 170
    return-void
.end method
